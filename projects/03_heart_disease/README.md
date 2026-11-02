# Heart Disease Prediction

[English](README.md) | [Русский](README.ru.md)

**Project type:** Tabular Machine Learning / Medical Data Classification  
**Technologies:** Python, Pandas, NumPy, scikit-learn, Matplotlib, Seaborn, SHAP

## Overview

This project explores classification models that estimate whether a record belongs to the heart-disease class based on patient measurements and clinical attributes.

The local dataset contains **918 rows and 12 columns**. The target column is `HeartDisease`.

## Problem

Build and evaluate a classification pipeline for a health-related prediction task. Such a model is a learning and research artifact; it is not a medical diagnostic tool.

## Workflow

- Perform exploratory data analysis and check data quality.
- Prepare categorical and numerical features.
- Apply feature engineering and scaling where appropriate.
- Compare Logistic Regression, Random Forest and Gradient Boosting.
- Evaluate with Accuracy, Precision, Recall, F1-score and ROC-AUC.
- Use SHAP to inspect feature contributions and model behaviour.

## Results

The original project notes report that Random Forest achieved a high Recall. No exact metric values are provided in the checked-in README, so a numeric score is intentionally not stated here.

For a recruiter-ready presentation, publish the full test-set metric table and a confusion matrix, and explain how the decision threshold was selected.

## Data

The repository includes [`data/heart.csv`](data/heart.csv), with 918 observations and 12 columns. The target is `HeartDisease`.

## Code and notebook

[Open Heart Disease Prediction notebook in Google Colab](https://colab.research.google.com/drive/1BK5wZVz1gSiwCjOp_dZ-dzG_UmwDS47D)

The notebook is hosted externally in Colab; it is not included in the current repository snapshot.

## Repository structure

```text
03_heart_disease/
├── README.md
├── README.ru.md
└── data/
    └── heart.csv
```
