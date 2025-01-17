# Blog Datasets, Scripts and Plots

Welcome to the repository where I share datasets and the corresponding scripts used in my blog posts. This repository includes data files and code that I use to demonstrate different types of analysis, visualizations and machine learning techniques.

## Table of Contents
1. [Overview](#overview)
2. [Datasets](#datasets)
3. [GraphSeries](#graphseries)
4. [Tables](#tables)
5. [Usage](#usage)
6. [Contributing](#contributing)
7. [Contact](#contact)

## Overview

This repository serves as a collection of resources used in my blog posts. You'll find datasets along with scripts to replicate the analysis, visualizations and insights I share in my articles.

Feel free to use, explore, and modify these resources in your own projects. If you have any questions or suggestions, don't hesitate to open an issue or submit a pull request.

## Datasets

Here are the datasets that are available in this repository:

### `USArrests.csv`
- **Description**: This dataset contains information on arrests for assault, murder and rape in each of the 50 US states in 1973.
- **Variables**: 
  - `Murder`: Murder rate per 100,000 people.
  - `Assault`: Assault rate per 100,000 people.
  - `UrbanPop`: Percentage of the population living in urban areas.
  - `Rape`: Rape rate per 100,000 people.
- **Usage**: This dataset was used in the [Graph Series: Dendograms](<link>), where hierarchical clustering and dendrogram visualization were applied to explore crime rates across U.S. states.
- **Data Source**: The **USArrests** dataset was sourced from the [Kaggle](https://www.kaggle.com/datasets/halimedogan/usarrests?resource=download).
<!-- ### `mtcars.csv` 
- **Description**: This dataset includes information about car performance, specifically focusing on various attributes of cars in the 1970s.
- **Columns**:
  - `mpg`: Miles per gallon.
  - `cyl`: Number of cylinders.
  - `hp`: Horsepower.
  - `drat`: Rear axle ratio.
  - `wt`: Weight of the car.-->

You can explore other datasets as I continue to update this repository.

## GraphSeries

This repository contains folders for each graph explored in the series, including their scripts in **Python** and **R**, used for **visualization** of the [datasets](github link for datasets folder). Below are the details of the key scripts:

### `dendrograms.R` and `dendrograms.py`

You can find more details and explanations in the blog post [Graph Series: Dendrograms](https://minhaestatistica.blogspot.com/2025/01/graph-series-dendograms.html).

- **Purpose**: Scripts to visualize the `USArrests` dataset using hierarchical clustering and **Dendrograms** in both R and Python (including interactive plots in both languages).
  
- **Features**:
  - **Data Cleaning**: Prepares the dataset for analysis by handling missing values and ensuring data integrity and proper format.
  - **Dendrogram Plots**: Creates dendrograms to visualize hierarchical clusters based on the crime rates from the `USArrests` dataset, showing the relationships between U.S. states.
  - **Interactive Plots**: The Python and R scripts generate interactive dendrograms, allowing users to explore the hierarchical relationships dynamically.



<!--### `circular_barplot.R` and `circular_barplot.py`
- **Purpose**: Python script to analyze the `mtcars` dataset.
- **Features**:
  - Descriptive statistics.
  - Correlation analysis.
  - Data visualization using `matplotlib` and `seaborn`. -->

You can find more scripts in this repository as new blog posts are added.

## Tables

This repository contains scripts for generating LaTeX tables and HTML-based tables. These scripts are useful for converting datasets into structured, readable formats, suitable for professional, academic, or web-based presentations.

### LaTeX Table Script

The LaTeX table script allows you to format your data into LaTeX syntax. This is especially useful for academic papers, reports, and technical documents that require high-quality, well-structured tables.

- **Purpose**: To generate LaTeX-compatible table code that can be used in your LaTeX documents.

- **Features**:
  - **Data Formatting**: The script converts raw datasets into formatted tables, suitable for inclusion in LaTeX documents.
  - **Customization**: You can easily modify the script to format tables according to your specific requirements.

### HTML Script

The HTML script helps you generate ready-to-use HTML for code spacing, code formatting and LaTeX formulas. This script makes it easy to integrate structured data into websites or web-based reports, while maintaining a clean, user-friendly presentation.

- **Purpose**: To generate HTML code for tables, code blocks, and LaTeX formulas that can be embedded in web pages.

- **Features**:
  - **Web-Friendly Output**: The script generates HTML content that is well-suited for displaying structured data on websites or blogs.
  - **Code and LaTeX Support**: It supports code formatting, code spacing, and LaTeX formula rendering, making it ideal for technical content.
  - **Responsive and Customizable**: The generated HTML code blocks are responsive and can be styled and adjusted using CSS to match the design of your website.

## Usage

To use the datasets and scripts, follow these steps:

<!-- 1. Clone this repository:
   ```bash
   git clone https://github.com/leticiacocato/MinhaEstatistica.git
   cd MinhaEstatistica -->
1. Install the required dependencies:
  - For **Python**, manually install the required libraries (listed at the beginning of each Python script) using pip:
  
    `pip install library`
    
  - For R, install the required packages (listed at the beginning of each R script) using: 

    `install.packages()`

2. Explore the generated plots and interact with them as needed. 

## Contributing

Feel free to fork this repository, make changes, and submit a pull request if you'd like to contribute. If you have suggestions or improvements, don't hesitate to open an issue.


## Contact

For any questions or inquiries, feel free to reach out to me via [e-mail](mailto:leticia_cocato@hotmail.com), [Instagram](https://www.instagram.com/minhaestatistica) or [LinkedIn](https://www.linkedin.com/in/leticia-cocato). You can also open an issue on GitHub.
