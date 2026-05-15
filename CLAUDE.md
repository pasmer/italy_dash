# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## What this is

A single-file R Shiny flexdashboard (`index.Rmd`) that tracks COVID-19 statistics for Italy, deployed at `dashboard.merella.it`. Two pages: **HOME** (national overview) and **Regional DATA** (by region + map).

## Running the app

Open `index.Rmd` in RStudio and click **Run Document**, or from an R console:

```r
rmarkdown::run("index.Rmd")
```

There is no build step — the `.Rmd` is the app. Deployment is via a personal Shiny Server.

## Architecture

The entire app lives in `index.Rmd`. Key sections:

- **`{r setup}`** — loads packages, sources `www/layoutDarkP.R`
- **`{r global}`** — defines the four data-fetch functions and calls them once at startup to populate `data/*.rds`
- **Page layouts** — flexdashboard column/panel declarations (pure markdown + `{r}` output chunks)
- **`{r, context="server"}`** — all Shiny server logic: reactive readers, observers, and `output$*` render functions

### Data flow

1. On startup, four functions fetch from remote CSVs and write local `.rds` files:
   - `new_italy_total()` → `data/italy_total.rds` — national daily series
   - `new_italy_region()` → `data/italy_region.rds` — per-region daily series
   - `new_df_trajectory()` → `data/df_trajectory.rds` — international comparison (JHU CCSE data)
   - `new_italy_map_region()` → `data/italy_map_region.rds` — spatial join ready for leaflet map (depends on `italy_region.rds` being written first)

2. `reactiveFileReader(240000, ...)` re-reads each `.rds` every 4 minutes in the running app, while `observe` + `invalidateLater(240000)` re-fetches from source on the same cadence.

### Region name normalization

`new_italy_region()` creates a `region_spatial` column that remaps Italian region names to match `rnaturalearth::ne_states(country = "Italy")`. Critical mappings: "Emilia Romagna" → "Emilia-Romagna", "Sicilia" → "Sicily", "Puglia" → "Apulia", and both "P.A. Bolzano" and "P.A. Trento" collapse to "Trentino-Alto Adige". Any new region handling must keep this join intact.

### Theming

`www/layoutDarkP.R` defines three Plotly dark-theme layout objects (`layout`, `layout2`, `layout3`) used via `template = layout$template` in every chart. All plots use the Plotly dark theme (`"PLOTLY_DARK"`).

## Key dependencies

`flexdashboard`, `shiny`, `shinyjs`, `plotly`, `leaflet`, `leafpop`, `mapview`, `metathis`, `Cairo`, `rnaturalearth`, `dplyr`, `lubridate`, `tidyr`, `purrr`, `RColorBrewer`

Note: `plotly` is used exclusively via `::` namespace calls (never `library(plotly)`).
