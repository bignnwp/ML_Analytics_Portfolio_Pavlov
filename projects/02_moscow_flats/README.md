# Moscow Apartment Price Analysis

[English](README.md) | [Русский](README.ru.md)

**Project type:** Exploratory Data Analysis (EDA)  
**Technologies:** Python, Pandas, NumPy, Matplotlib, Seaborn

## Overview

An exploratory analysis of apartment listings in Moscow. The goal is to clean the raw data, study price distributions and investigate property characteristics associated with asking prices.

The local CSV contains **2,040 rows and 11 columns**.

## Problem

Understand how apartment attributes and location-related variables vary across the dataset and how they relate to the listed property price. The analysis is exploratory and does not establish causal effects.

## Workflow

- Inspect the structure and quality of the source data.
- Remove duplicate records and technical columns where appropriate.
- Prepare categorical variables.
- Create a price-per-square-metre feature.
- Examine distributions and relationships using descriptive statistics and visualizations.
- Summarize the main patterns observed in the dataset.

## Results and deliverables

- A cleaned dataset prepared for further analysis or modelling.
- Exploratory analysis of price and property attributes.
- A derived price-per-square-metre feature.

The current project README does not specify numerical findings or model-performance metrics. Add the strongest findings and their supporting charts once they are verified in the notebook.

## Data

The repository includes [`data/flats_moscow.csv`](data/flats_moscow.csv), containing 2,040 records and 11 columns, including price, total/living/kitchen area, distance-related fields, floor and building-related attributes.

## Code and notebook

[Open the Moscow Flats analysis in Google Colab](https://colab.research.google.com/drive/1XDvNfTG9iemcfQMTIgv5-kosJW-uY8n_?usp=sharing)

The notebook is hosted externally in Colab; it is not included in the current repository snapshot.

## Repository structure

```text
02_moscow_flats/
├── README.md
├── README.ru.md
└── data/
    └── flats_moscow.csv
```
