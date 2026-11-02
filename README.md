# Сергей Павлов | Data Science & Machine Learning Portfolio

Начинающий Data Scientist, изучающий прикладной искусственный интеллект в магистратуре.  
Интересы: машинное обучение, компьютерное зрение, анализ данных и практическое внедрение ML-решений.

[![Python](https://img.shields.io/badge/Python-3.10+-blue?logo=python&logoColor=white)](https://www.python.org/)
[![Scikit-learn](https://img.shields.io/badge/Scikit--learn-1.x-orange?logo=scikit-learn)](https://scikit-learn.org/)
[![YOLOv8](https://img.shields.io/badge/YOLOv8-Ultralytics-00FFFF?logo=yolo)](https://github.com/ultralytics/ultralytics)
[![FastAPI](https://img.shields.io/badge/FastAPI-0.100+-009688?logo=fastapi)](https://fastapi.tiangolo.com/)
[![Power BI](https://img.shields.io/badge/Power%20BI-Desktop-F2C811?logo=powerbi)](https://powerbi.microsoft.com/)

---

## Технологический стек

| Направление | Инструменты |
|-------------|-------------|
| **Языки** | Python, SQL |
| **Machine Learning** | Scikit-learn, XGBoost, LightGBM, CatBoost |
| **Time Series** | statsmodels, StatsForecast, lag/rolling features |
| **Computer Vision** | YOLOv8 (Ultralytics), OpenCV, ByteTrack |
| **Анализ данных** | Pandas, NumPy, SciPy |
| **Визуализация** | Matplotlib, Seaborn, Plotly, Power BI |
| **MLOps / Production** | FastAPI, Docker, Pytest, Streamlit |
| **Инструменты** | Git, Jupyter, Google Colab |

---

## Ключевые проекты

| # | Проект | Тип | Ключевой результат | Ссылка |
|---|--------|-----|--------------------|--------|
| 1 | [Прогнозирование оттока клиентов банка](projects/01_bank_churn/) | Tabular ML | Recall = 0.85 (Decision Tree + SMOTE) | [Colab](https://colab.research.google.com/drive/1p40UtKlxW2FZkX7xY11Acabu92LQJ6VH) |
| 2 | [Анализ цен на квартиры в Москве](projects/02_moscow_flats/) | EDA | Чистый датасет + ключевые факторы цены | [Colab](https://colab.research.google.com/drive/1XDvNfTG9iemcfQMTIgv5-kosJW-uY8n_?usp=sharing) |
| 3 | [Прогнозирование сердечно-сосудистых заболеваний](projects/03_heart_disease/) | Tabular ML | Высокий Recall + SHAP-интерпретация | [Colab](https://colab.research.google.com/drive/1BK5wZVz1gSiwCjOp_dZ-dzG_UmwDS47D) |
| 4 | [Анализ продаж супермаркета + проверка гипотез](projects/04_supermarket_analysis/) | BI + Stats | Power BI дашборд + статистические тесты | Локально |
| 5 | [Production-ready система прогнозирования оттока](projects/05_churn_production/) | MLOps | FastAPI + Docker + Pytest | [Репозиторий](https://github.com/bignnwp/churn_ml_production) |
| 6 | [Real-Time Vehicle Tracking (YOLOv8)](projects/06_vehicle_tracking/) | Computer Vision | Трекинг + счётчик + тепловая карта | [Colab](https://colab.research.google.com/drive/1RSpXRFbK59RMsZOWblsOnoqfbBILgCQP) |
| 7 | [Authorship Attribution (NLP)](projects/07_authorship_attribution/) | NLP | LinearSVC: Accuracy 94.91%, Macro F1 94.60% | [Colab](https://colab.research.google.com/drive/1I6CeNTaHwFCc4JJNfxrU_KRRlbilzE-1) |
| 8 | [Прогнозирование направления цены (OHLCV)](projects/08_price_direction/) | Time Series Classification | Test AUC 0.515 · baselines + time-series CV | [Colab](https://colab.research.google.com/drive/1DsQn-OnVZa8gE4AQB_5nznn45KgdhXxO) |
| 9 | [Прогноз температуры (Delhi Climate)](projects/09_delhi_temperature/) | Time Series Forecasting | RF: MAE 1.24, RMSE 1.64 · ADF + StatsForecast | [Colab](https://colab.research.google.com/drive/1xYQmNzH5UFD2ZAxfF8VdweLd3cStbBzO) |

---

## Структура репозитория

```text
projects/
├── 01_bank_churn/               # Классический ML + SHAP
├── 02_moscow_flats/             # EDA недвижимости
├── 03_heart_disease/            # Медицинский ML
├── 04_supermarket_analysis/     # Power BI + статистика гипотез
├── 05_churn_production/         # MLOps (ссылка на отдельный репо)
├── 06_vehicle_tracking/         # Computer Vision (YOLOv8 + ByteTrack)
├── 07_authorship_attribution/   # NLP (определение авторства)
├── 08_price_direction/          # Time Series classification (OHLCV)
└── 09_delhi_temperature/        # Time Series forecasting (Delhi Climate)
```

Каждый проект содержит собственный `README.md` с описанием задачи, подхода, результатов и инструкциями.

---

## Как запустить

Большинство экспериментов выполнены в Google Colab (ссылки указаны в таблице и в README проектов).  
Локальные артефакты (данные, ноутбуки, Power BI) находятся в соответствующих папках.

```bash
# Пример установки зависимостей (общий стек)
pip install -r requirements.txt
```

---

## Контакты

Готов к обсуждению вакансий и интересных задач.

- **Email:** spavlov117@gmail.com
- **Резюме:** [Яндекс.Диск](https://disk.yandex.ru/i/qeSncQ0nCpalLA)
- **GitHub:** [bignnwp](https://github.com/bignnwp)
