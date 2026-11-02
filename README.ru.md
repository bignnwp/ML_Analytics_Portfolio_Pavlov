[English](README.md) | [Русский](README.ru.md)

# Портфолио Data Science и Machine Learning

**Сергей Павлов | Data Science · Machine Learning · ML Engineering**

Разрабатываю прикладные проекты в области анализа данных и машинного обучения: от исследовательского анализа и статистических проверок до предиктивного моделирования, NLP, компьютерного зрения, прогнозирования временных рядов и создания ML-сервисов.

[![Python](https://img.shields.io/badge/Python-3.10%2B-3776AB?logo=python&logoColor=white)](https://www.python.org/)
[![scikit-learn](https://img.shields.io/badge/scikit--learn-ML-F7931E?logo=scikitlearn&logoColor=white)](https://scikit-learn.org/)
[![YOLOv8](https://img.shields.io/badge/Computer_Vision-YOLOv8-00FFFF)](https://github.com/ultralytics/ultralytics)
[![FastAPI](https://img.shields.io/badge/API-FastAPI-009688?logo=fastapi&logoColor=white)](https://fastapi.tiangolo.com/)
[![Power BI](https://img.shields.io/badge/BI-Power_BI-F2C811?logo=powerbi&logoColor=black)](https://powerbi.microsoft.com/)

---

## Навигация

- [Технические навыки](#технические-навыки)
- [Избранные проекты](#избранные-проекты)
- [Все проекты](#все-проекты)
- [Структура репозитория](#структура-репозитория)
- [Как изучить и запустить проекты](#как-изучить-и-запустить-проекты)
- [Контакты](#контакты)

## Технические навыки

| Направление | Инструменты и методы |
|---|---|
| Программирование и данные | Python, Pandas, NumPy, SciPy |
| Machine Learning | scikit-learn, XGBoost, LightGBM, CatBoost, imbalanced-learn |
| Интерпретация моделей | SHAP, важность признаков, classification report |
| Статистика | t-тест Уэлча, χ²-тест, размеры эффекта, поправка на множественные сравнения |
| Временные ряды | statsmodels, StatsForecast, лаговые и скользящие признаки, временная валидация |
| Компьютерное зрение | YOLOv8, OpenCV, ByteTrack |
| NLP | TF-IDF, символьные n-граммы, LinearSVC |
| Визуализация и BI | Matplotlib, Seaborn, Plotly, Power BI |
| ML Engineering | FastAPI, Docker, Pytest |
| Инструменты | Git, Jupyter, Google Colab |

## Избранные проекты

### 1. Прогнозирование оттока клиентов банка

**Направление:** классическое машинное обучение  
**Инструменты:** Python, Pandas, scikit-learn, XGBoost, SMOTE, SHAP

- Проведён исследовательский анализ клиентских данных и подготовка признаков для классификации.
- Сравнивались Logistic Regression, Random Forest, XGBoost и Decision Tree.
- Для работы с дисбалансом классов применялся SMOTE, для интерпретации прогнозов — SHAP.
- В README проекта указано значение **Recall = 0.85** для Decision Tree + SMOTE.

Проект: [`projects/01_bank_churn/`](projects/01_bank_churn/) · [Google Colab](https://colab.research.google.com/drive/1p40UtKlxW2FZkX7xY11Acabu92LQJ6VH)

### 2. Анализ продаж супермаркета и проверка гипотез

**Направление:** аналитика данных · статистика · Business Intelligence  
**Инструменты:** Python, Pandas, SciPy, Power BI

- Создан дашборд Power BI для анализа продаж, филиалов, клиентских сегментов и способов оплаты.
- Использовались t-тест Уэлча, Cohen's d, χ²-тест, V Крамера и поправка Holm.
- После поправки Holm ни одна из проверяемых гипотез не достигла статистической значимости при **α = 0.05**.
- Наблюдаемая разница среднего чека между Member и Normal составила около 3%; доверительный интервал включает ноль.

Проект: [`projects/04_supermarket_analysis/`](projects/04_supermarket_analysis/) · [Ноутбук](projects/04_supermarket_analysis/notebooks/supermarket_hypothesis_testing.ipynb) · [Файл Power BI](projects/04_supermarket_analysis/powerbi/supermarket_sales_dashboard.pbix)

### 3. Трекинг автомобилей и анализ транспортного потока

**Направление:** компьютерное зрение  
**Инструменты:** Python, YOLOv8, ByteTrack, OpenCV, NumPy

- Реализован трекинг нескольких объектов с сохранением постоянных ID.
- Добавлен подсчёт автомобилей при пересечении виртуальной линии.
- Предусмотрены визуализация траекторий и построение тепловой карты плотности движения.
- Логика обработки разделена на отдельные классы для объектов, транспортной аналитики, генерации тепловой карты и обработки видео.

Проект: [`projects/06_vehicle_tracking/`](projects/06_vehicle_tracking/) · [Google Colab](https://colab.research.google.com/drive/1RSpXRFbK59RMsZOWblsOnoqfbBILgCQP) · [Входное видео](https://disk.yandex.ru/i/hjHdsy6pXZMcYA)

### 4. Production-сервис для прогнозирования оттока клиентов

**Направление:** ML Engineering / MLOps  
**Инструменты:** Python, scikit-learn / XGBoost, FastAPI, Docker, Pytest

- Подготовлена обученная модель для использования при инференсе.
- Реализован REST API для получения прогнозов на FastAPI.
- Добавлены автоматизированные тесты и запуск в Docker.
- Код вынесен в отдельный репозиторий, чтобы сервис можно было изучать и запускать независимо от основного портфолио.

[Открыть production-репозиторий](https://github.com/bignnwp/churn_ml_production) · Описание: [`projects/05_churn_production/`](projects/05_churn_production/)

### 5. Прогнозирование среднесуточной температуры в Дели

**Направление:** прогнозирование временных рядов  
**Инструменты:** Python, statsmodels, StatsForecast, scikit-learn, XGBoost, LightGBM

- Исследованы тренд, сезонность, стационарность и автокорреляция с помощью декомпозиции, ADF, ACF и PACF.
- Статистические методы прогнозирования сравнивались с ML-моделями на основе лаговых, скользящих и календарных признаков.
- В README проекта для Random Forest на тестовом горизонте 30 дней указаны **MAE = 1.241** и **RMSE = 1.636**.

Проект: [`projects/09_delhi_temperature/`](projects/09_delhi_temperature/) · [Google Colab](https://colab.research.google.com/drive/1xYQmNzH5UFD2ZAxfF8VdweLd3cStbBzO)

### 6. Определение авторства текстов

**Направление:** обработка естественного языка (NLP)  
**Инструменты:** Python, TF-IDF, символьные n-граммы, scikit-learn, LinearSVC

- Создан эксперимент по классификации текстов на шесть классов по стилистическим признакам.
- Исходные тексты разбивались на непересекающиеся фрагменты; сравнивались LinearSVC, Logistic Regression и Random Forest.
- В README проекта для LinearSVC указаны **Accuracy = 94.91%** и **Macro F1 = 94.60%**.

Проект: [`projects/07_authorship_attribution/`](projects/07_authorship_attribution/) · [Google Colab](https://colab.research.google.com/drive/1I6CeNTaHwFCc4JJNfxrU_KRRlbilzE-1)

## Все проекты

| № | Проект | Направление | Код / описание |
|---:|---|---|---|
| 01 | Прогнозирование оттока клиентов банка | Классификация, SMOTE, SHAP | [Проект](projects/01_bank_churn/) · [Colab](https://colab.research.google.com/drive/1p40UtKlxW2FZkX7xY11Acabu92LQJ6VH) |
| 02 | Анализ цен на квартиры в Москве | Очистка данных, EDA, цена за м² | [Проект](projects/02_moscow_flats/) · [Colab](https://colab.research.google.com/drive/1XDvNfTG9iemcfQMTIgv5-kosJW-uY8n_?usp=sharing) |
| 03 | Прогнозирование сердечно-сосудистых заболеваний | Классификация, оценка моделей, SHAP | [Проект](projects/03_heart_disease/) · [Colab](https://colab.research.google.com/drive/1BK5wZVz1gSiwCjOp_dZ-dzG_UmwDS47D) |
| 04 | Анализ продаж супермаркета | Power BI, проверка гипотез, размеры эффекта | [Проект](projects/04_supermarket_analysis/) |
| 05 | Production-сервис прогнозирования оттока | FastAPI, Docker, Pytest | [Проект](projects/05_churn_production/) · [Репозиторий](https://github.com/bignnwp/churn_ml_production) |
| 06 | Трекинг автомобилей | YOLOv8, ByteTrack, OpenCV | [Проект](projects/06_vehicle_tracking/) · [Colab](https://colab.research.google.com/drive/1RSpXRFbK59RMsZOWblsOnoqfbBILgCQP) |
| 07 | Определение авторства текстов | NLP, TF-IDF, символьные n-граммы | [Проект](projects/07_authorship_attribution/) · [Colab](https://colab.research.google.com/drive/1I6CeNTaHwFCc4JJNfxrU_KRRlbilzE-1) |
| 08 | Прогнозирование направления цены | OHLCV, бинарная классификация, time-series CV | [Проект](projects/08_price_direction/) · [Colab](https://colab.research.google.com/drive/1DsQn-OnVZa8gE4AQB_5nznn45KgdhXxO) |
| 09 | Прогнозирование температуры в Дели | Временные ряды, статистические и ML-модели | [Проект](projects/09_delhi_temperature/) · [Colab](https://colab.research.google.com/drive/1xYQmNzH5UFD2ZAxfF8VdweLd3cStbBzO) |

### Дополнительные результаты

**Прогнозирование направления цены** сравнивает модели с простыми baseline и использует хронологическую валидацию. В README проекта для лучшей модели Random Forest указаны тестовые значения **Accuracy = 0.518**, **F1 = 0.522** и **ROC-AUC = 0.515**. Вывод намеренно сдержанный: измеренный предсказательный сигнал слабый, а эксперимент не позиционируется как торговая стратегия.

**Анализ цен на квартиры в Москве** включает очистку данных, удаление дубликатов, подготовку признаков, анализ цены за квадратный метр и визуальное исследование данных.

**Прогнозирование сердечно-сосудистых заболеваний** сравнивает Logistic Regression, Random Forest и Gradient Boosting, оценивает несколько классификационных метрик и использует SHAP для интерпретации. Это учебный ML-проект, а не медицинский диагностический инструмент.

## Структура репозитория

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

## Как изучить и запустить проекты

1. Откройте папку проекта, чтобы прочитать README и посмотреть доступные данные и материалы.
2. Для экспериментов, размещённых в Google Colab, используйте ссылку в описании соответствующего проекта.
3. Для анализа супермаркета откройте ноутбук `projects/04_supermarket_analysis/notebooks/`.
4. Чтобы посмотреть дашборд, откройте `supermarket_sales_dashboard.pbix` в Power BI Desktop.
5. Для production-сервиса следуйте инструкции по запуску в [отдельном репозитории](https://github.com/bignnwp/churn_ml_production).

Корневой `requirements.txt` содержит общий набор Python-зависимостей портфолио. Для отдельных проектов может потребоваться дополнительная настройка — перед запуском изучите README конкретного проекта. Доступность датасетов и условия их использования определяются исходными источниками данных.

## Контакты

- **Email:** [spavlov117@gmail.com](mailto:spavlov117@gmail.com)
- **GitHub:** [bignnwp](https://github.com/bignnwp)
- **Резюме:** [Открыть CV](https://disk.yandex.ru/i/qeSncQ0nCpalLA)

---

*Это портфолио объединяет учебные и инженерные проекты. Метрики приведены по документации соответствующих проектов; для понимания протокола валидации, предположений и ограничений обращайтесь к README каждого проекта.*
