# Next-Day Price Direction Prediction

[English](README.md) | [Русский](README.ru.md)

**Project type:** Time Series / Binary Classification  
**Technologies:** Python, Pandas, NumPy, scikit-learn, Matplotlib, Seaborn

## Overview

An experiment to predict whether the next trading day's price direction will be up or not, using daily OHLCV data. The dataset covers approximately 2014–2024 and contains **2,507 observations**.

Target definition:

- `target = 1` — price increase.
- `target = 0` — price decrease or no increase.

## Methodology

- Create features using only information available up to the prediction point.
- Engineer returns and lags, SMA ratios, RSI, MACD, Bollinger features, ATR, momentum, volume and cyclical calendar features.
- Use chronological 80/20 train/test split.
- Apply 5-fold `TimeSeriesSplit` for time-aware validation.
- Compare Logistic Regression, Random Forest and HistGradientBoosting.
- Compare against majority-class and previous-day-direction baselines.
- Review train/test metrics, confusion matrices, feature importance and thresholds.

## Test results

| Model / rule | Accuracy | Precision | Recall | F1 | ROC-AUC |
|---|---:|---:|---:|---:|---:|
| **Random Forest** | **0.518** | 0.506 | 0.539 | **0.522** | **0.515** |
| Logistic Regression | 0.506 | — | — | 0.506 | 0.497 |
| HistGradientBoosting | 0.494 | — | — | 0.484 | 0.495 |
| Majority class | 0.488 | — | — | — | — |
| Previous-day direction | 0.474 | — | — | — | — |

The Random Forest result is only slightly above chance. Its train/test ROC-AUC gap is substantial (0.758 vs 0.515), indicating overfitting.

## Interpretation

- The available OHLCV features provide only a weak predictive signal in this experiment.
- Random Forest marginally outperformed the simple baselines, but the improvement is small.
- The results are useful as an evaluation of modelling limits, not evidence of a profitable trading strategy.

## Data and code

- Local data: [`data/test_ds_1.xlsx`](data/test_ds_1.xlsx) (2,507 rows; OHLCV fields and target).
- [Open the notebook in Google Colab](https://colab.research.google.com/drive/1DsQn-OnVZa8gE4AQB_5nznn45KgdhXxO)

The notebook is hosted externally in Colab and is not included in the current portfolio snapshot.

## Repository structure

```text
08_price_direction/
├── README.md
├── README.ru.md
└── data/
    └── test_ds_1.xlsx
```
