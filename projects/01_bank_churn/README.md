# Bank Customer Churn Prediction

[English](README.md) | [Русский](README.ru.md)

**Project type:** Tabular Machine Learning / Binary Classification  
**Technologies:** Python, Pandas, scikit-learn, XGBoost, SHAP, Matplotlib, Seaborn

## Overview

This project explores how machine learning can help a bank identify customers who are likely to leave. The intended use case is to help a customer-retention team prioritize customers for proactive outreach.

The target column is `Exited`. The local dataset contains **165,034 rows and 14 columns**.

## Problem

Build a model that estimates customer churn risk from customer and account attributes. In this setting, recall is important because a false negative means a customer who is about to leave is missed by the retention process.

## Workflow

1. Explore the dataset and inspect data quality.
2. Prepare categorical and numerical features.
3. Perform feature engineering and preprocessing.
4. Compare Logistic Regression, Decision Tree, Random Forest and XGBoost.
5. Address class imbalance with SMOTE.
6. Interpret model predictions using SHAP.

## Reported result

| Model | Metric | Result |
|---|---:|---:|
| Decision Tree + SMOTE | Recall | **0.85** |

Recall was selected as the priority metric to reduce missed churn cases. The project description does not provide a complete metric table for every model; consult the notebook for the full experiment details.

## Data

The repository includes `data/train.csv` (165,034 rows, 14 columns). The target is `Exited`.

- [Open the local dataset](data/train.csv)
- [Open the dataset on GitHub](https://github.com/bignnwp/ML_Analytics_Portfolio_Pavlov/blob/main/projects/01_bank_churn/data/train.csv)

Check the original dataset terms before redistributing or reusing the data outside this portfolio.

## Code and notebook

The full notebook is available in Google Colab:

[Open Bank Customer Churn notebook](https://colab.research.google.com/drive/1p40UtKlxW2FZkX7xY11Acabu92LQJ6VH)

The current portfolio snapshot contains the dataset and this project README; the notebook is hosted externally in Colab.

## Repository structure

```text
01_bank_churn/
├── README.md
├── README.ru.md
└── data/
    └── train.csv
```

## Limitations and next steps

- Add a complete comparison table with Precision, Recall, F1, ROC-AUC and PR-AUC for all models.
- Include a confusion matrix and a threshold-selection discussion.
- Validate that resampling is performed only on the training folds to avoid data leakage.
- Translate model scores into an operational retention scenario, including the cost of false positives and false negatives.

## Notes

This is an educational portfolio project, not a deployed banking decision system. Predictions should not be used for real customer decisions without independent validation, governance and fairness checks.
