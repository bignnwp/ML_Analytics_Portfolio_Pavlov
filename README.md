[English](README.md) | [Русский](README.ru.md)

# Data Science & Machine Learning Portfolio

**Sergey Pavlov | Data Science · Machine Learning · ML Engineering**

I build applied data science and machine learning projects, covering exploratory data analysis, statistical testing, predictive modeling, NLP, computer vision, time-series forecasting, and production-oriented ML services.

[![Python](https://img.shields.io/badge/Python-3.10%2B-3776AB?logo=python&logoColor=white)](https://www.python.org/)
[![scikit-learn](https://img.shields.io/badge/scikit--learn-ML-F7931E?logo=scikitlearn&logoColor=white)](https://scikit-learn.org/)
[![YOLOv8](https://img.shields.io/badge/Computer_Vision-YOLOv8-00FFFF)](https://github.com/ultralytics/ultralytics)
[![FastAPI](https://img.shields.io/badge/API-FastAPI-009688?logo=fastapi&logoColor=white)](https://fastapi.tiangolo.com/)
[![Power BI](https://img.shields.io/badge/BI-Power_BI-F2C811?logo=powerbi&logoColor=black)](https://powerbi.microsoft.com/)

---

## Navigation

- [Technical Skills](#technical-skills)
- [Featured Projects](#featured-projects)
- [All Projects](#all-projects)
- [Repository Structure](#repository-structure)
- [How to Explore the Projects](#how-to-explore-the-projects)
- [Contact](#contact)

## Technical Skills

| Area | Tools and methods |
|---|---|
| Programming and data | Python, Pandas, NumPy, SciPy |
| Machine Learning | scikit-learn, XGBoost, LightGBM, CatBoost, imbalanced-learn |
| Model interpretation | SHAP, feature importance, classification reports |
| Statistics | Welch's t-test, chi-square test, effect sizes, multiple-testing correction |
| Time Series | statsmodels, StatsForecast, lag and rolling features, time-based validation |
| Computer Vision | YOLOv8, OpenCV, ByteTrack |
| NLP | TF-IDF, character n-grams, LinearSVC |
| Visualization and BI | Matplotlib, Seaborn, Plotly, Power BI |
| ML Engineering | FastAPI, Docker, Pytest |
| Workflow | Git, Jupyter, Google Colab |

## Featured Projects

### 1. Customer Churn Prediction — Bank Customers

**Area:** Tabular Machine Learning  
**Tools:** Python, Pandas, scikit-learn, XGBoost, SMOTE, SHAP

- Explored customer data and prepared features for classification.
- Compared Logistic Regression, Random Forest, XGBoost, and Decision Tree models.
- Addressed class imbalance with SMOTE and interpreted model predictions with SHAP.
- The project README reports **Recall = 0.85** for Decision Tree + SMOTE.

Project: [`projects/01_bank_churn/`](projects/01_bank_churn/) · [Google Colab](https://colab.research.google.com/drive/1p40UtKlxW2FZkX7xY11Acabu92LQJ6VH)

### 2. Supermarket Sales Analysis and Hypothesis Testing

**Area:** Data Analytics · Statistics · Business Intelligence  
**Tools:** Python, Pandas, SciPy, Power BI

- Built a Power BI dashboard for sales, branches, customer segments, and payment methods.
- Applied Welch's t-test, Cohen's d, chi-square test, Cramér's V, and Holm correction.
- After Holm correction, none of the tested hypotheses was statistically significant at **α = 0.05**.
- The observed average-check difference between Member and Normal customers was approximately 3%; its confidence interval included zero.

Project: [`projects/04_supermarket_analysis/`](projects/04_supermarket_analysis/) · [Notebook](projects/04_supermarket_analysis/notebooks/supermarket_hypothesis_testing.ipynb) · [Power BI file](projects/04_supermarket_analysis/powerbi/supermarket_sales_dashboard.pbix)

### 3. Vehicle Tracking and Traffic Flow Analysis

**Area:** Computer Vision  
**Tools:** Python, YOLOv8, ByteTrack, OpenCV, NumPy

- Implemented multi-object tracking with persistent object IDs.
- Added vehicle counting when tracked objects cross a virtual line.
- Designed trajectory visualization and traffic-density heatmap generation.
- Organized the processing logic into separate classes for detection results, traffic analytics, heatmap generation, and video processing.

Project: [`projects/06_vehicle_tracking/`](projects/06_vehicle_tracking/) · [Google Colab](https://colab.research.google.com/drive/1RSpXRFbK59RMsZOWblsOnoqfbBILgCQP) · [Input video](https://disk.yandex.ru/i/hjHdsy6pXZMcYA)

### 4. Production-Oriented Customer Churn Service

**Area:** ML Engineering / MLOps  
**Tools:** Python, scikit-learn / XGBoost, FastAPI, Docker, Pytest

- Packaged a trained churn model for inference.
- Exposed predictions through a FastAPI REST service.
- Added automated tests and Docker-based execution.
- Kept the implementation in a separate repository to make the service independently reviewable.

[Open the production repository](https://github.com/bignnwp/churn_ml_production) · Project notes: [`projects/05_churn_production/`](projects/05_churn_production/)

### 5. Delhi Daily Temperature Forecasting

**Area:** Time-Series Forecasting  
**Tools:** Python, statsmodels, StatsForecast, scikit-learn, XGBoost, LightGBM

- Examined trend, seasonality, stationarity, and autocorrelation using decomposition, ADF, ACF, and PACF.
- Compared statistical forecasting methods with machine-learning models using lag, rolling, and calendar features.
- The project README reports **MAE = 1.241** and **RMSE = 1.636** for Random Forest on the 30-day test horizon.

Project: [`projects/09_delhi_temperature/`](projects/09_delhi_temperature/) · [Google Colab](https://colab.research.google.com/drive/1xYQmNzH5UFD2ZAxfF8VdweLd3cStbBzO)

### 6. Authorship Attribution

**Area:** Natural Language Processing  
**Tools:** Python, TF-IDF, character n-grams, scikit-learn, LinearSVC

- Built a six-class text classification experiment based on writing-style features.
- Split source texts into non-overlapping chunks and compared LinearSVC, Logistic Regression, and Random Forest.
- The project README reports **94.91% Accuracy** and **94.60% Macro F1** for LinearSVC.

Project: [`projects/07_authorship_attribution/`](projects/07_authorship_attribution/) · [Google Colab](https://colab.research.google.com/drive/1I6CeNTaHwFCc4JJNfxrU_KRRlbilzE-1)

## All Projects

| # | Project | Focus | Code / Details |
|---:|---|---|---|
| 01 | Bank Customer Churn Prediction | Classification, SMOTE, SHAP | [Project](projects/01_bank_churn/) · [Colab](https://colab.research.google.com/drive/1p40UtKlxW2FZkX7xY11Acabu92LQJ6VH) |
| 02 | Moscow Apartment Price EDA | Data cleaning, exploratory analysis, price per m² | [Project](projects/02_moscow_flats/) · [Colab](https://colab.research.google.com/drive/1XDvNfTG9iemcfQMTIgv5-kosJW-uY8n_?usp=sharing) |
| 03 | Heart Disease Prediction | Classification, model evaluation, SHAP | [Project](projects/03_heart_disease/) · [Colab](https://colab.research.google.com/drive/1BK5wZVz1gSiwCjOp_dZ-dzG_UmwDS47D) |
| 04 | Supermarket Sales Analysis | Power BI, hypothesis testing, effect sizes | [Project](projects/04_supermarket_analysis/) |
| 05 | Production Churn Prediction Service | FastAPI, Docker, Pytest | [Project](projects/05_churn_production/) · [Repository](https://github.com/bignnwp/churn_ml_production) |
| 06 | Vehicle Tracking | YOLOv8, ByteTrack, OpenCV | [Project](projects/06_vehicle_tracking/) · [Colab](https://colab.research.google.com/drive/1RSpXRFbK59RMsZOWblsOnoqfbBILgCQP) |
| 07 | Authorship Attribution | NLP, TF-IDF, character n-grams | [Project](projects/07_authorship_attribution/) · [Colab](https://colab.research.google.com/drive/1I6CeNTaHwFCc4JJNfxrU_KRRlbilzE-1) |
| 08 | Financial Price Direction Prediction | OHLCV, binary classification, time-series CV | [Project](projects/08_price_direction/) · [Colab](https://colab.research.google.com/drive/1DsQn-OnVZa8gE4AQB_5nznn45KgdhXxO) |
| 09 | Delhi Temperature Forecasting | Time series, statistical and ML models | [Project](projects/09_delhi_temperature/) · [Colab](https://colab.research.google.com/drive/1xYQmNzH5UFD2ZAxfF8VdweLd3cStbBzO) |

### Selected additional results

**Financial Price Direction Prediction** compares model results with simple baselines and uses chronological validation. The project README reports the best Random Forest test results as **Accuracy = 0.518**, **F1 = 0.522**, and **ROC-AUC = 0.515**. The conclusion is intentionally conservative: the measured predictive signal is weak and the experiment is not presented as a trading strategy.

**Moscow Apartment Price EDA** focuses on data cleaning, duplicate removal, feature preparation, price-per-square-meter analysis, and exploratory visualization.

**Heart Disease Prediction** compares Logistic Regression, Random Forest, and Gradient Boosting, evaluates several classification metrics, and uses SHAP for model interpretation. This is an educational modeling project, not a clinical diagnostic tool.

## Repository Structure

```text
.
├── README.md
├── README.ru.md
├── LICENSE
├── .gitignore
├── requirements.txt
└── projects/
    ├── 01_bank_churn/
    ├── 02_moscow_flats/
    ├── 03_heart_disease/
    ├── 04_supermarket_analysis/
    ├── 05_churn_production/
    ├── 06_vehicle_tracking/
    ├── 07_authorship_attribution/
    ├── 08_price_direction/
    └── 09_delhi_temperature/
```

## How to Explore the Projects

1. Open a project folder to read its README and see the available data or artifacts.
2. For experiments hosted in Google Colab, use the Colab link in the project description.
3. For the supermarket analysis, open the notebook in `projects/04_supermarket_analysis/notebooks/`.
4. To view the dashboard, open `supermarket_sales_dashboard.pbix` with Power BI Desktop.
5. For the production service, follow the setup instructions in the [dedicated repository](https://github.com/bignnwp/churn_ml_production).

The root `requirements.txt` contains a shared set of Python dependencies for the portfolio. Individual projects may require additional setup; check each project's documentation before running it. Dataset availability and usage terms remain subject to the original data sources.

## Contact

- **Email:** [spavlov117@gmail.com](mailto:spavlov117@gmail.com)
- **GitHub:** [bignnwp](https://github.com/bignnwp)
- **Resume:** [View CV](https://disk.yandex.ru/i/qeSncQ0nCpalLA)
