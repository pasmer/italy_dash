import re

with open('index.Rmd', 'r') as f:
    content = f.read()

# 1. Remove runtime: shiny
content = re.sub(r'runtime:\s*shiny\n', '', content)

# 2. Remove shiny libraries
content = re.sub(r'library\(shiny\)\n', '', content)
content = re.sub(r'library\(shinyjs\)\n', '', content)

# 3. Replace data calls
# We will define the static datasets after the functions are called
new_data_calls = """
    new_italy_total()
    new_italy_region()
    new_df_trajectory()
    new_italy_map_region()

    italy_total <- readRDS('data/italy_total.rds')
    italy_region <- readRDS('data/italy_region.rds')
    df_trajectory <- readRDS('data/df_trajectory.rds')
    italy_map_region <- readRDS('data/italy_map_region.rds')
"""
content = re.sub(r'\s*new_italy_total\(\)\n\s*new_italy_region\(\)\n\s*new_df_trajectory\(\)\n\s*new_italy_map_region\(\)', new_data_calls, content)

# Also replace the reactive data calls in the code
content = content.replace('italy_total_new()', 'italy_total')
content = content.replace('italy_region_new()', 'italy_region')
content = content.replace('df_trajectory_new()', 'df_trajectory')
content = content.replace('italy_map_region_new()', 'italy_map_region')

# Extract server blocks
server_match = re.search(r'```{r, contex="server"}(.*)', content, re.DOTALL)
server_code = server_match.group(1) if server_match else ""

# Remove the server chunk from the document
content = re.sub(r'```{r, contex="server"}.*', '', content, flags=re.DOTALL)

# Extract individual outputs from server_code
outputs = {}
output_matches = re.finditer(r'output\$(\w+)\s*<-\s*(?:renderValueBox|plotly::renderPlotly|renderLeaflet|renderUI)\(\{(.*?)\}\)', server_code, re.DOTALL)
for match in output_matches:
    outputs[match.group(1)] = match.group(2).strip()

# Replace UI outputs with inline code
# 1. valueBoxOutput
def vb_repl(m):
    id = m.group(1)
    if id in outputs:
        return outputs[id]
    return m.group(0)

content = re.sub(r'valueBoxOutput\("(\w+)"\)', vb_repl, content)

# 2. plotlyOutput
def plotly_repl(m):
    id = m.group(1)
    if id in outputs:
        return outputs[id]
    return m.group(0)

content = re.sub(r'plotly::plotlyOutput\("(\w+)"\)', plotly_repl, content)

# 3. leafletOutput
def leaflet_repl(m):
    id = m.group(1)
    if id in outputs:
        return outputs[id]
    return m.group(0)

content = re.sub(r'leafletOutput\("(\w+)"\)', leaflet_repl, content)

# 4. htmlOutput (headers)
# In the original, the headers were dynamically generated like `r htmlOutput("abs")`
# For a static document, we can just compute the date once and use it.
content = re.sub(r'### `r htmlOutput\("(\w+)"\)`', r'### \1_header', content)

# Add a block to compute the date at the end of the global setup
global_setup_end = """
    # Setup static headers
    datanew <- as.character(max(italy_total$date))
    abs_header <- paste("Absorption Rate of Cases - Italy vs. major countries (as of ", datanew, ")")
    deathcond_header <- paste("Conditional Mortality Rate - Italy vs. major countries (as of ", datanew, ")")
    update_header <- paste("ITALY Overall Distribution of Cases (as of ", datanew, ")")
    top10reg_header <- paste("Top10 Cases Distribution by Region (as of ", datanew, ")")
    top10pop_header <- paste("Top10 Cases Distribution based on population (as of ", datanew, ")")
    mapita_header <- paste("Map of Cases Distribution in Italy (as of ", datanew, ")")
    lombard_header <- paste("FOCUS Lombardia: Cases Distribution (as of ", datanew, ")")
"""
content = content.replace("italy_map_region <- readRDS('data/italy_map_region.rds')", "italy_map_region <- readRDS('data/italy_map_region.rds')\n" + global_setup_end)

# Also we need to replace the `r htmlOutput("xxx")` placeholders with `r xxx_header`
content = content.replace('abs_header', '`r abs_header`')
content = content.replace('deathcond_header', '`r deathcond_header`')
content = content.replace('update_header', '`r update_header`')
content = content.replace('top10reg_header', '`r top10reg_header`')
content = content.replace('top10pop_header', '`r top10pop_header`')
content = content.replace('mapita_header', '`r mapita_header`')
content = content.replace('lombard_header', '`r lombard_header`')

# Fix a specific case with mapita
content = content.replace('# `r mapita_header`', '')

with open('index_static.Rmd', 'w') as f:
    f.write(content)

print("Generated index_static.Rmd")
