# Delhi Daily Temperature Forecasting

[English](README.md) | [Русский](README.ru.md)

**Project type:** Time Series Forecasting / Regression  
**Technologies:** Python, Pandas, NumPy, statsmodels, StatsForecast, scikit-learn, XGBoost, LightGBM, Matplotlib, Seaborn

## Overview

A time-series forecasting project using daily climate observations from Delhi (2013–2017). The target variable is `meantemp`, and the reported forecast horizon is **30 days**.

The repository contains 1,462 training rows and 114 test rows across five columns: date, mean temperature, humidity, wind speed and mean pressure.

## Objective

Explore the structure of the temperature series and compare statistical forecasting methods with machine-learning models built from lagged, rolling and calendar features.

## Workflow

### Exploratory analysis and time-series diagnostics

- Check missing values and duplicates.
- Visualize temperature and other climate variables.
- Review outliers and correlations.
- Perform seasonal decomposition.
- Apply the Augmented Dickey–Fuller (ADF) test.
- Inspect ACF/PACF and temperature anomalies.

### Statistical forecasting

Compare Naive, SeasonalNaive, AutoARIMA, AutoETS and AutoTheta using StatsForecast.

### Machine learning

- Build lag features (`lag_1`, `lag_7`, `lag_30`).
- Add rolling statistics and calendar features.
- Compare Random Forest, XGBoost and LightGBM.
- Use a chronological hold-out evaluation for a 30-day horizon.

## Reported test results

| Model | Family | MAE | RMSE |
|---|---|---:|---:|
| **Random Forest** | ML | **1.241** | **1.636** |
| XGBoost | ML | 1.336 | 1.687 |
| LightGBM | ML | 1.316 | 1.687 |
| AutoTheta | Statistical | — | 3.963 |

Other statistical model results are available in the notebook. According to the project report, Random Forest achieved the lowest error among the listed models.

## Data

- [Training data](data/DailyDelhiClimateTrain.csv) — 1,462 daily records.
- [Test data](data/DailyDelhiClimateTest.csv) — 114 daily records.
- Original source: [Daily Climate Time Series Data on Kaggle](https://www.kaggle.com/datasets/sumanthvrao/daily-climate-time-series-data).

## Code and notebook

[Open the forecasting notebook in Google Colab](https://colab.research.google.com/drive/1xYQmNzH5UFD2ZAxfF8VdweLd3cStbBzO)

Install the main dependencies in a notebook environment:

```bash
pip install pandas numpy matplotlib seaborn statsmodels statsforecast scikit-learn xgboost lightgbm
```

The notebook is hosted externally in Colab and is not included in the current repository snapshot. Make sure the CSV files are available in the Colab runtime before running all cells.

## Repository structure

```text
09_delhi_temperature/
├── README.md
├── README.ru.md
└── data/
    ├── DailyDelhiClimateTrain.csv
    └── DailyDelhiClimateTest.csv
```
