# Прогнозирование температуры воздуха (Daily Delhi Climate)

**Time Series Forecasting · Regression**

Прогноз среднесуточной температуры в Дели по ежедневным климатическим наблюдениям (2013–2017).

Целевая переменная: `meantemp`. Горизонт прогноза: **30 дней**.

**Colab:** https://colab.research.google.com/drive/1xYQmNzH5UFD2ZAxfF8VdweLd3cStbBzO

---

## Метрики и выводы

### Результаты на TEST (горизонт 30 дней)

| Модель              | Тип        | MAE   | RMSE  |
|---------------------|------------|------:|------:|
| **Random Forest**   | ML         | **1.241** | **1.636** |
| XGBoost             | ML         | 1.336 | 1.687 |
| LightGBM            | ML         | 1.316 | 1.687 |
| AutoTheta           | Statistical| —     | 3.963 |
| AutoARIMA / AutoETS / SeasonalNaive / Naive | Statistical | — | см. ноутбук |

### Выводы

1. Ряд температуры имеет **выраженную сезонность** и признаки нестационарности (подтверждено декомпозицией и **ADF-тестом**).
2. ACF/PACF показывают значимую автокорреляцию и сезонную структуру — обоснованы лаги 1 / 7 / 30 и rolling-признаки.
3. Среди статистических моделей **StatsForecast** лучший результат у **AutoTheta** (RMSE ≈ 3.96).
4. ML-модели с лагами, rolling и календарными признаками существенно точнее: **Random Forest** — MAE 1.24, RMSE 1.64.
5. Итоговый пайплайн: загрузка → очистка → EDA → feature engineering → time-based split → обучение → выбор модели → прогноз.

> Сравнение stats vs ML приведено для одного и того же горизонта (30 дней) и хронологического hold-out.

---

## Что сделано

### EDA и свойства ряда
- проверка пропусков и дубликатов;
- визуализация `meantemp`, humidity, wind_speed, meanpressure;
- boxplot / выбросы (в т.ч. аномалии pressure и wind_speed);
- корреляции признаков;
- **сезонная декомпозиция**;
- **ADF-тест** стационарности;
- **ACF и PACF**;
- поиск аномалий температуры (Z-score).

### Статистическое прогнозирование (StatsForecast)
Naive · SeasonalNaive · AutoARIMA · AutoETS · AutoTheta

### Machine Learning
- признаки: `lag_1`, `lag_7`, `lag_30`, rolling mean, month / dayofweek / dayofyear;
- модели: Random Forest, XGBoost, LightGBM;
- хронологический train/test split.

### Пайплайн
Единый цикл от предобработки до выбора лучшей модели и оценки производительности (время обучения).

---

## Стек

`Python` · `pandas` · `NumPy` · `statsmodels` · `statsforecast` · `scikit-learn` · `XGBoost` · `LightGBM` · `matplotlib` · `seaborn`

---

## Данные

Файлы лежат в папке `data/`:

| Файл | Описание |
|------|----------|
| [`data/DailyDelhiClimateTrain.csv`](data/DailyDelhiClimateTrain.csv) | Обучающая выборка (ежедневно, 2013–2016) |
| [`data/DailyDelhiClimateTest.csv`](data/DailyDelhiClimateTest.csv) | Тестовая выборка (2017) |

Источник: [Daily Climate Time Series Data (Kaggle)](https://www.kaggle.com/datasets/sumanthvrao/daily-climate-time-series-data).

---

## Структура ноутбука

1. Подготовка и первичный анализ  
2. EDA (тренд, сезонность, выбросы, корреляции)  
3. Декомпозиция, ADF, ACF/PACF, аномалии  
4. StatsForecast — сравнение статистических моделей  
5. ML-модели (лаги + rolling + календарь)  
6. Пайплайн и замер производительности  
7. Сравнение и выводы  

---

## Как запустить

1. Открыть [ноутбук](https://colab.research.google.com/drive/1xYQmNzH5UFD2ZAxfF8VdweLd3cStbBzO)  
2. Убедиться, что CSV доступны из `data/` (в Colab — загрузить в runtime или примонтировать)  
3. **Runtime → Run all**

```bash
pip install pandas numpy matplotlib seaborn statsmodels statsforecast scikit-learn xgboost lightgbm
```

---

## Файлы

| Файл | Описание |
|------|----------|
| [`Notebook.ipynb`](https://colab.research.google.com/drive/1xYQmNzH5UFD2ZAxfF8VdweLd3cStbBzO) | Основной ноутбук |
| `data/DailyDelhiClimateTrain.csv` | Train |
| `data/DailyDelhiClimateTest.csv` | Test |
| `README.md` | Описание проекта |
