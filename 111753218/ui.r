library(shiny)
library(devtools)
library(ggbiplot)
library(FactoMineR)
library(ca)

ui <- fluidPage(
  # App title ----
  tags$div(
    tags$h2(
      "HW4_111753218_Interactive web service of PCA and CA analysis by Shinyapp",
      style = "color: #FF00FF; margin-top: 10px; margin-bottom: 20px; text-align: center;"
    )
  ),
  # Sidebar layout with input and output definitions ----
  sidebarLayout(
    # Sidebar panel for inputs ----
    sidebarPanel(
      tags$hr(style = "border-color: #00FFFF;"),
      tags$h4(
        "PCA Inputs",
        style = "color: #0000FF; margin-top: 10px; margin-bottom: 10px; text-align: center;"
      ),
      selectInput(
        inputId = "x",
        label = 'PCA X',
        choices = c("pc1" = 1, "pc2" = 2, "pc3" = 3, "pc4" = 4),
        selected = T
      ),
      selectInput(
        inputId = "y",
        label = 'PCA Y',
        choices = c("pc1" = 1, "pc2" = 2, "pc3" = 3, "pc4" = 4),
        selected = T
      ),
      tags$hr(style = "border-color: #00FFFF;"),
      tags$h4(
        "CA Inputs",
        style = "color: #0000FF; margin-top: 10px; margin-bottom: 10px; text-align: center;"
      ),
      selectInput(
        inputId = "dimX",
        label = 'CA dimesionX',
        choices = c("dim1" = 1, "dim2" = 2, "dim3" = 3),
        selected = T
      ),
      selectInput(
        inputId = "dimY",
        label = 'CA dimesionY',
        choices = c("dim1" = 1, "dim2" = 2, "dim3" = 3),
        selected = T
      ),
      tags$hr(style = "border-color: #00FFFF;")
    ),
    # Main panel for displaying outputs ----
    mainPanel(
      tags$hr(style = "border-color: #00FFFF;"),
      tags$h4(
        "PCA Outputs",
        style = "color: #0000FF; margin-top: 10px; margin-bottom: 10px; text-align: center;"
      ),
      textOutput("te1"),
      tableOutput("t1"),
      plotOutput(outputId = "distPlot"),
      verbatimTextOutput("t2"),
      tags$hr(style = "border-color: #00FFFF;"),
      tags$h4(
        "CA Outputs",
        style = "color: #0000FF; margin-top: 10px; margin-bottom: 10px; text-align: center;"
      ),
      plotOutput(outputId = "caPlot"),
      verbatimTextOutput("t3"),
      tags$hr(style = "border-color: #00FFFF;")
    )
  )
)
