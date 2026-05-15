FROM --platform=linux/amd64 rocker/shiny:4.4.1

# System libraries for spatial packages (sf, rnaturalearth, mapview) and Cairo rendering
RUN apt-get update && apt-get install -y --no-install-recommends \
    libcairo2-dev \
    libxt-dev \
    libgdal-dev \
    libgeos-dev \
    libproj-dev \
    libudunits2-dev \
    libssl-dev \
    libcurl4-openssl-dev \
    libxml2-dev \
    libfontconfig1-dev \
    libharfbuzz-dev \
    libfribidi-dev \
    libpng-dev \
    curl \
    && rm -rf /var/lib/apt/lists/*

# Install R packages using Posit Package Manager binary builds (no compilation = fast)
RUN Rscript -e "install.packages(c( \
    'flexdashboard', \
    'shiny', \
    'shinyjs', \
    'plotly', \
    'metathis', \
    'mapview', \
    'leaflet', \
    'leafpop', \
    'Cairo', \
    'rnaturalearth', \
    'rnaturalearthdata', \
    'sf', \
    'dplyr', \
    'lubridate', \
    'tidyr', \
    'purrr', \
    'RColorBrewer', \
    'magrittr', \
    'rmarkdown', \
    'knitr', \
    'htmltools', \
    'htmlwidgets' \
  ), \
  repos = 'https://packagemanager.posit.co/cran/__linux__/jammy/latest', \
  dependencies = TRUE, \
  Ncpus = 2)" \
 && Rscript -e "install.packages('rnaturalearthhires', \
    repos = c('https://ropensci.r-universe.dev', \
              'https://packagemanager.posit.co/cran/__linux__/jammy/latest'), \
    dependencies = TRUE)"

# Custom Shiny Server config (serves app at / instead of /italy_dash/)
COPY shiny-server.conf /etc/shiny-server/shiny-server.conf

# Create app directory (data/ must be writable at runtime for RDS refresh)
RUN mkdir -p /srv/shiny-server/italy_dash/data

# Copy static assets first (least-changed layers → better cache hits on rebuild)
COPY www/ /srv/shiny-server/italy_dash/www/
COPY style.css /srv/shiny-server/italy_dash/

# Copy seed data (app overwrites these on startup, but they prevent cold-start errors)
COPY data/ /srv/shiny-server/italy_dash/data/

# Copy app entrypoint last (most frequently changed)
COPY index.Rmd /srv/shiny-server/italy_dash/

# shiny user must own the data dir to write RDS files
RUN chown -R shiny:shiny /srv/shiny-server/italy_dash/data

EXPOSE 3838

# Allow 120s for R packages to load + initial data fetch from GitHub
HEALTHCHECK --interval=30s --timeout=15s --start-period=120s --retries=3 \
    CMD curl -sf http://localhost:3838/ || exit 1

CMD ["/usr/bin/shiny-server"]
