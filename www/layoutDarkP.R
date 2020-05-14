# Layout Ploty
layout <- list(
  xaxis = list(
    range = c(-0.5, 3.5), 
    autorange = TRUE
  ), 
  yaxis = list(
    type = "linear", 
    range = c(0, 9.473684210526315), 
    autorange = TRUE
  ), 
  autosize = TRUE, 
  template = list(
    data = list(
      bar = list(
        list(
          type = "bar", 
          marker = list(colorbar = list(
            ticks = "", 
            outlinewidth = 0
          ))
        )
      ), 
      table = list(
        list(
          type = "table", 
          cells = list(
            fill = list(color = "#506784"), 
            line = list(color = "rgb(17,17,17)")
          ), 
          header = list(
            fill = list(color = "#2a3f5f"), 
            line = list(color = "rgb(17,17,17)")
          )
        )
      ), 
      carpet = list(
        list(
          type = "carpet", 
          aaxis = list(
            gridcolor = "#506784", 
            linecolor = "#506784", 
            endlinecolor = "#A2B1C6", 
            minorgridcolor = "#506784", 
            startlinecolor = "#A2B1C6"
          ), 
          baxis = list(
            gridcolor = "#506784", 
            linecolor = "#506784", 
            endlinecolor = "#A2B1C6", 
            minorgridcolor = "#506784", 
            startlinecolor = "#A2B1C6"
          )
        )
      ), 
      mesh3d = list(
        list(
          type = "mesh3d", 
          colorbar = list(
            ticks = "", 
            outlinewidth = 0
          )
        )
      ), 
      contour = list(
        list(
          type = "contour", 
          colorbar = list(
            ticks = "", 
            outlinewidth = 0
          ), 
          autocolorscale = TRUE
        )
      ), 
      heatmap = list(
        list(
          type = "heatmap", 
          colorbar = list(
            ticks = "", 
            outlinewidth = 0
          ), 
          autocolorscale = TRUE
        )
      ), 
      scatter = list(
        list(
          type = "scatter", 
          marker = list(colorbar = list(
            ticks = "", 
            outlinewidth = 0
          ))
        )
      ), 
      surface = list(
        list(
          type = "surface", 
          colorbar = list(
            ticks = "", 
            outlinewidth = 0
          )
        )
      ),
      scattergl = list(
        list(
          type = "scattergl", 
          marker = list(colorbar = list(
            ticks = "", 
            outlinewidth = 0
          ))
        )
      ),
      heatmapgl = list(
        list(
          type = "heatmapgl", 
          colorbar = list(
            ticks = "", 
            outlinewidth = 0
          )
        )
      ), 
      histogram = list(
        list(
          type = "histogram", 
          marker = list(colorbar = list(
            ticks = "", 
            outlinewidth = 0
          ))
        )
      ), 
      parcoords = list(
        list(
          line = list(colorbar = list(
            ticks = "", 
            outlinewidth = 0
          )), 
          type = "parcoords"
        )
      ), 
      scatter3d = list(
        list(
          type = "scatter3d", 
          marker = list(colorbar = list(
            ticks = "", 
            outlinewidth = 0
          ))
        )
      ), 
      scattergl = list(
        list(
          type = "scattergl", 
          marker = list(colorbar = list(
            ticks = "", 
            outlinewidth = 0
          ))
        )
      ), 
      choropleth = list(
        list(
          type = "choropleth", 
          colorbar = list(
            ticks = "", 
            outlinewidth = 0
          )
        )
      ), 
      scattergeo = list(
        list(
          type = "scattergeo", 
          marker = list(colorbar = list(
            ticks = "", 
            outlinewidth = 0
          ))
        )
      ), 
      histogram2d = list(
        list(
          type = "histogram2d", 
          colorbar = list(
            ticks = "", 
            outlinewidth = 0
          ), 
          autocolorscale = TRUE
        )
      ), 
      scatterpolar = list(
        list(
          type = "scatterpolar", 
          marker = list(colorbar = list(
            ticks = "", 
            outlinewidth = 0
          ))
        )
      ), 
      contourcarpet = list(
        list(
          type = "contourcarpet", 
          colorbar = list(
            ticks = "", 
            outlinewidth = 0
          )
        )
      ), 
      scattercarpet = list(
        list(
          type = "scattercarpet", 
          marker = list(colorbar = list(
            ticks = "", 
            outlinewidth = 0
          ))
        )
      ), 
      scattermapbox = list(
        list(
          type = "scattermapbox", 
          marker = list(colorbar = list(
            ticks = "", 
            outlinewidth = 0
          ))
        )
      ), 
      scatterpolargl = list(
        list(
          type = "scatterpolargl", 
          marker = list(colorbar = list(
            ticks = "", 
            outlinewidth = 0
          ))
        )
      ), 
      scatterternary = list(
        list(
          type = "scatterternary", 
          marker = list(colorbar = list(
            ticks = "", 
            outlinewidth = 0
          ))
        )
      ), 
      histogram2dcontour = list(
        list(
          type = "histogram2dcontour", 
          colorbar = list(
            ticks = "", 
            outlinewidth = 0
          ), 
          autocolorscale = TRUE
        )
      )
    ), 
    layout = list(
      geo = list(
        bgcolor = "rgb(17,17,17)", 
        showland = TRUE, 
        lakecolor = "rgb(17,17,17)", 
        landcolor = "rgb(17,17,17)", 
        showlakes = TRUE, 
        subunitcolor = "#506784"
      ), 
      font = list(color = "#f2f5fa"), 
      polar = list(
        bgcolor = "rgb(17,17,17)", 
        radialaxis = list(
          ticks = "", 
          gridcolor = "#506784", 
          linecolor = "#506784"
        ), 
        angularaxis = list(
          ticks = "", 
          gridcolor = "#506784", 
          linecolor = "#506784"
        )
      ), 
      scene = list(
        xaxis = list(
          ticks = "", 
          gridcolor = "#506784", 
          gridwidth = 2, 
          linecolor = "#506784", 
          zerolinecolor = "#C8D4E3", 
          showbackground = TRUE, 
          backgroundcolor = "rgb(17,17,17)"
        ), 
        yaxis = list(
          ticks = "", 
          gridcolor = "#506784", 
          gridwidth = 2, 
          linecolor = "#506784", 
          zerolinecolor = "#C8D4E3", 
          showbackground = TRUE, 
          backgroundcolor = "rgb(17,17,17)"
        ), 
        zaxis = list(
          ticks = "", 
          gridcolor = "#506784", 
          gridwidth = 2, 
          linecolor = "#506784", 
          zerolinecolor = "#C8D4E3", 
          showbackground = TRUE, 
          backgroundcolor = "rgb(17,17,17)"
        )
      ), 
      title = list(x = 0.05), 
      xaxis = list(
        ticks = "", 
        gridcolor = "#283442", 
        linecolor = "#506784", 
        automargin = TRUE, 
        zerolinecolor = "#283442", 
        zerolinewidth = 2
      ), 
      yaxis = list(
        ticks = "", 
        gridcolor = "#283442", 
        linecolor = "#506784", 
        automargin = TRUE, 
        zerolinecolor = "#283442", 
        zerolinewidth = 2
      ), 
      ternary = list(
        aaxis = list(
          ticks = "", 
          gridcolor = "#506784", 
          linecolor = "#506784"
        ), 
        baxis = list(
          ticks = "", 
          gridcolor = "#506784", 
          linecolor = "#506784"
        ), 
        caxis = list(
          ticks = "", 
          gridcolor = "#506784", 
          linecolor = "#506784"
        ), 
        bgcolor = "rgb(17,17,17)"
      ), 
      colorway = c("#636efa", "#EF553B", "#00cc96", "#ab63fa", "#19d3f3", "#e763fa", "#fecb52", "#ffa15a", "#ff6692", "#b6e880"), 
      hovermode = "compare", 
      colorscale = list(
        diverging = list(c(0, "#8e0152"),list(0.1, "#c51b7d"),list(0.2, "#de77ae"),list(0.3, "#f1b6da"),list(0.4, "#fde0ef"),list(0.5, "#f7f7f7"),list(0.6, "#e6f5d0"),list(0.7, "#b8e186"),list(0.8, "#7fbc41"),list(0.9, "#4d9221"),list(1, "#276419")), 
        sequential = list(c(0, "#0508b8"),list(0.0893854748603352, "#1910d8"),list(0.1787709497206704, "#3c19f0"),list(0.2681564245810056, "#6b1cfb"),list(0.3575418994413408, "#981cfd"),list(0.44692737430167595, "#bf1cfd"),list(0.5363128491620112, "#dd2bfd"),list(0.6256983240223464, "#f246fe"),list(0.7150837988826816, "#fc67fd"),list(0.8044692737430168, "#fe88fc"),list(0.8938547486033519, "#fea5fd"),list(0.9832402234636871, "#febefe"),list(1, "#fec3fe")), 
        sequentialminus = list(c(0, "#0508b8"),list(0.0893854748603352, "#1910d8"),list(0.1787709497206704, "#3c19f0"),list(0.2681564245810056, "#6b1cfb"),list(0.3575418994413408, "#981cfd"),list(0.44692737430167595, "#bf1cfd"),list(0.5363128491620112, "#dd2bfd"),list(0.6256983240223464, "#f246fe"),list(0.7150837988826816, "#fc67fd"),list(0.8044692737430168, "#fe88fc"),list(0.8938547486033519, "#fea5fd"),list(0.9832402234636871, "#febefe"),list(1, "#fec3fe"))
      ), 
      plot_bgcolor = "rgb(17,17,17)", 
      paper_bgcolor = "rgb(17,17,17)", 
      shapedefaults = list(
        line = list(width = 0), 
        opacity = 0.4, 
        fillcolor = "#f2f5fa"
      ), 
      sliderdefaults = list(
        bgcolor = "#C8D4E3", 
        tickwidth = 0, 
        bordercolor = "rgb(17,17,17)", 
        borderwidth = 1
      ), 
      annotationdefaults = list(
        arrowhead = 0, 
        arrowcolor = "#f2f5fa", 
        arrowwidth = 1
      ), 
      updatemenudefaults = list(
        bgcolor = "#506784", 
        borderwidth = 0
      )
    ), 
    themeRef = "PLOTLY_DARK"
  )
)

# Layout alternative
layout2 <- list(
  title = list(text = "Overall Distribution of Cases in Lombardia"), 
  xaxis = list(
    type = "date", 
    range = c("2020-02-24", "2020-05-11"), 
    title = list(text = "Source: Italy Department of Civil Protection"), 
    autorange = TRUE
  ), 
  yaxis = list(
    type = "linear", 
    range = c(0, 86180), 
    title = list(text = "Number of Cases"), 
    autorange = TRUE
  ), 
  autosize = TRUE, 
  colorway = c("#2E91E5", "#E15F99", "#1CA71C", "#FB0D0D", "#DA16FF", "#222A2A", "#B68100", "#750D86", "#EB663B", "#511CFB", "#00A08B", "#FB00D1", "#FC0080", "#B2828D", "#6C7C32", "#778AAE", "#862A16", "#A777F1", "#620042", "#1616A7", "#DA60CA", "#6C4516", "#0D2A63", "#AF0038"), 
  template = list(
    data = list(
      bar = list(
        list(
          type = "bar", 
          marker = list(colorbar = list(
            ticks = "", 
            outlinewidth = 0
          ))
        )
      ), 
      table = list(
        list(
          type = "table", 
          cells = list(
            fill = list(color = "#506784"), 
            line = list(color = "rgb(17,17,17)")
          ), 
          header = list(
            fill = list(color = "#2a3f5f"), 
            line = list(color = "rgb(17,17,17)")
          )
        )
      ), 
      carpet = list(
        list(
          type = "carpet", 
          aaxis = list(
            gridcolor = "#506784", 
            linecolor = "#506784", 
            endlinecolor = "#A2B1C6", 
            minorgridcolor = "#506784", 
            startlinecolor = "#A2B1C6"
          ), 
          baxis = list(
            gridcolor = "#506784", 
            linecolor = "#506784", 
            endlinecolor = "#A2B1C6", 
            minorgridcolor = "#506784", 
            startlinecolor = "#A2B1C6"
          )
        )
      ), 
      mesh3d = list(
        list(
          type = "mesh3d", 
          colorbar = list(
            ticks = "", 
            outlinewidth = 0
          )
        )
      ), 
      contour = list(
        list(
          type = "contour", 
          colorbar = list(
            ticks = "", 
            outlinewidth = 0
          ), 
          autocolorscale = TRUE
        )
      ), 
      heatmap = list(
        list(
          type = "heatmap", 
          colorbar = list(
            ticks = "", 
            outlinewidth = 0
          ), 
          autocolorscale = TRUE
        )
      ), 
      scatter = list(
        list(
          type = "scatter", 
          marker = list(colorbar = list(
            ticks = "", 
            outlinewidth = 0
          ))
        )
      ), 
      surface = list(
        list(
          type = "surface", 
          colorbar = list(
            ticks = "", 
            outlinewidth = 0
          )
        )
      ), 
      heatmapgl = list(
        list(
          type = "heatmapgl", 
          colorbar = list(
            ticks = "", 
            outlinewidth = 0
          )
        )
      ), 
      histogram = list(
        list(
          type = "histogram", 
          marker = list(colorbar = list(
            ticks = "", 
            outlinewidth = 0
          ))
        )
      ), 
      parcoords = list(
        list(
          line = list(colorbar = list(
            ticks = "", 
            outlinewidth = 0
          )), 
          type = "parcoords"
        )
      ), 
      scatter3d = list(
        list(
          type = "scatter3d", 
          marker = list(colorbar = list(
            ticks = "", 
            outlinewidth = 0
          ))
        )
      ), 
      scattergl = list(
        list(
          type = "scattergl", 
          marker = list(colorbar = list(
            ticks = "", 
            outlinewidth = 0
          ))
        )
      ), 
      choropleth = list(
        list(
          type = "choropleth", 
          colorbar = list(
            ticks = "", 
            outlinewidth = 0
          )
        )
      ), 
      scattergeo = list(
        list(
          type = "scattergeo", 
          marker = list(colorbar = list(
            ticks = "", 
            outlinewidth = 0
          ))
        )
      ), 
      histogram2d = list(
        list(
          type = "histogram2d", 
          colorbar = list(
            ticks = "", 
            outlinewidth = 0
          ), 
          autocolorscale = TRUE
        )
      ), 
      scatterpolar = list(
        list(
          type = "scatterpolar", 
          marker = list(colorbar = list(
            ticks = "", 
            outlinewidth = 0
          ))
        )
      ), 
      contourcarpet = list(
        list(
          type = "contourcarpet", 
          colorbar = list(
            ticks = "", 
            outlinewidth = 0
          )
        )
      ), 
      scattercarpet = list(
        list(
          type = "scattercarpet", 
          marker = list(colorbar = list(
            ticks = "", 
            outlinewidth = 0
          ))
        )
      ), 
      scattermapbox = list(
        list(
          type = "scattermapbox", 
          marker = list(colorbar = list(
            ticks = "", 
            outlinewidth = 0
          ))
        )
      ), 
      scatterpolargl = list(
        list(
          type = "scatterpolargl", 
          marker = list(colorbar = list(
            ticks = "", 
            outlinewidth = 0
          ))
        )
      ), 
      scatterternary = list(
        list(
          type = "scatterternary", 
          marker = list(colorbar = list(
            ticks = "", 
            outlinewidth = 0
          ))
        )
      ), 
      histogram2dcontour = list(
        list(
          type = "histogram2dcontour", 
          colorbar = list(
            ticks = "", 
            outlinewidth = 0
          ), 
          autocolorscale = TRUE
        )
      )
    ), 
    layout = list(
      geo = list(
        bgcolor = "rgb(17,17,17)", 
        showland = TRUE, 
        lakecolor = "rgb(17,17,17)", 
        landcolor = "rgb(17,17,17)", 
        showlakes = TRUE, 
        subunitcolor = "#506784"
      ), 
      font = list(color = "#f2f5fa"), 
      polar = list(
        bgcolor = "rgb(17,17,17)", 
        radialaxis = list(
          ticks = "", 
          gridcolor = "#506784", 
          linecolor = "#506784"
        ), 
        angularaxis = list(
          ticks = "", 
          gridcolor = "#506784", 
          linecolor = "#506784"
        )
      ), 
      scene = list(
        xaxis = list(
          ticks = "", 
          gridcolor = "#506784", 
          gridwidth = 2, 
          linecolor = "#506784", 
          zerolinecolor = "#C8D4E3", 
          showbackground = TRUE, 
          backgroundcolor = "rgb(17,17,17)"
        ), 
        yaxis = list(
          ticks = "", 
          gridcolor = "#506784", 
          gridwidth = 2, 
          linecolor = "#506784", 
          zerolinecolor = "#C8D4E3", 
          showbackground = TRUE, 
          backgroundcolor = "rgb(17,17,17)"
        ), 
        zaxis = list(
          ticks = "", 
          gridcolor = "#506784", 
          gridwidth = 2, 
          linecolor = "#506784", 
          zerolinecolor = "#C8D4E3", 
          showbackground = TRUE, 
          backgroundcolor = "rgb(17,17,17)"
        )
      ), 
      title = list(x = 0.05), 
      xaxis = list(
        ticks = "", 
        gridcolor = "#283442", 
        linecolor = "#506784", 
        automargin = TRUE, 
        zerolinecolor = "#283442", 
        zerolinewidth = 2
      ), 
      yaxis = list(
        ticks = "", 
        gridcolor = "#283442", 
        linecolor = "#506784", 
        automargin = TRUE, 
        zerolinecolor = "#283442", 
        zerolinewidth = 2
      ), 
      ternary = list(
        aaxis = list(
          ticks = "", 
          gridcolor = "#506784", 
          linecolor = "#506784"
        ), 
        baxis = list(
          ticks = "", 
          gridcolor = "#506784", 
          linecolor = "#506784"
        ), 
        caxis = list(
          ticks = "", 
          gridcolor = "#506784", 
          linecolor = "#506784"
        ), 
        bgcolor = "rgb(17,17,17)"
      ), 
      colorway = c("#636efa", "#EF553B", "#00cc96", "#ab63fa", "#19d3f3", "#e763fa", "#fecb52", "#ffa15a", "#ff6692", "#b6e880"), 
      hovermode = "closest", 
      colorscale = list(
        diverging = list(c(0, "#8e0152"),list(0.1, "#c51b7d"),list(0.2, "#de77ae"),list(0.3, "#f1b6da"),list(0.4, "#fde0ef"),list(0.5, "#f7f7f7"),list(0.6, "#e6f5d0"),list(0.7, "#b8e186"),list(0.8, "#7fbc41"),list(0.9, "#4d9221"),list(1, "#276419")), 
        sequential = list(c(0, "#0508b8"),list(0.0893854748603352, "#1910d8"),list(0.1787709497206704, "#3c19f0"),list(0.2681564245810056, "#6b1cfb"),list(0.3575418994413408, "#981cfd"),list(0.44692737430167595, "#bf1cfd"),list(0.5363128491620112, "#dd2bfd"),list(0.6256983240223464, "#f246fe"),list(0.7150837988826816, "#fc67fd"),list(0.8044692737430168, "#fe88fc"),list(0.8938547486033519, "#fea5fd"),list(0.9832402234636871, "#febefe"),list(1, "#fec3fe")), 
        sequentialminus = list(c(0, "#0508b8"),list(0.0893854748603352, "#1910d8"),list(0.1787709497206704, "#3c19f0"),list(0.2681564245810056, "#6b1cfb"),list(0.3575418994413408, "#981cfd"),list(0.44692737430167595, "#bf1cfd"),list(0.5363128491620112, "#dd2bfd"),list(0.6256983240223464, "#f246fe"),list(0.7150837988826816, "#fc67fd"),list(0.8044692737430168, "#fe88fc"),list(0.8938547486033519, "#fea5fd"),list(0.9832402234636871, "#febefe"),list(1, "#fec3fe"))
      ), 
      plot_bgcolor = "rgb(17,17,17)", 
      paper_bgcolor = "rgb(17,17,17)", 
      shapedefaults = list(
        line = list(width = 0), 
        opacity = 0.4, 
        fillcolor = "#f2f5fa"
      ), 
      sliderdefaults = list(
        bgcolor = "#C8D4E3", 
        tickwidth = 0, 
        bordercolor = "rgb(17,17,17)", 
        borderwidth = 1
      ), 
      annotationdefaults = list(
        arrowhead = 0, 
        arrowcolor = "#f2f5fa", 
        arrowwidth = 1
      ), 
      updatemenudefaults = list(
        bgcolor = "#506784", 
        borderwidth = 0
      )
    ), 
    themeRef = "PLOTLY_DARK"
  )
)
