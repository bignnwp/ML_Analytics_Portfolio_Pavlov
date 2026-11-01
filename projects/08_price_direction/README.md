# Прогнозирование направления цены (дневные OHLCV)

**Time Series · Binary Classification**

Предсказание направления цены на следующий торговый день по дневным OHLCV-данным (2014–2024, ~2500 наблюдений).

`target = 1` — рост, `target = 0` — падение / без роста.

---

## Метрики и выводы

### Результаты на TEST

| Модель / правило           | Accuracy | Precision | Recall | F1    | ROC-AUC |
|----------------------------|----------|-----------|--------|-------|---------|
| **Random Forest** (лучшая) | **0.518**| 0.506     | 0.539  | **0.522** | **0.515** |
| Logistic Regression        | 0.506    | —         | —      | 0.506 | 0.497   |
| HistGradientBoosting       | 0.494    | —         | —      | 0.484 | 0.495   |
| Majority class             | 0.488    | —         | —      | —     | —       |
| Previous-day direction     | 0.474    | —         | —      | —     | —       |

### Train vs Test (лучшая модель — RF)

| Metric    | Train  | Test   | Gap    |
|-----------|--------|--------|--------|
| Accuracy  | 0.688  | 0.518  | 0.170  |
| F1        | 0.695  | 0.522  | 0.173  |
| ROC-AUC   | 0.758  | 0.515  | 0.243  |

### Выводы

1. **Задача объективно сложная.** Направление дневной цены по одним только OHLCV близко к случайному процессу. Лучшая модель (Random Forest) на тесте: ROC-AUC **0.515**, Accuracy **0.518**, F1 **0.522** — слабый сигнал чуть выше 0.5.

2. **Сравнение с baseline.** RF лучше majority class (0.488) и previous-day direction (0.474), но запас прочности минимальный.

3. **Переобучение.**  
   - RF: Train AUC 0.76 → Test 0.51 (gap 0.24) — умеренный overfitting при регуляризации  
   - HGB: gap ≈ 0.48 — сильно запоминает train  
   - LogReg: gap ≈ 0.09, но Test AUC ≈ 0.50 — сигнала почти нет  

4. **Методология.** Признаки только из прошлого (без утечки), хронологический split + TimeSeriesSplit, явные baseline, ограничение сложности моделей.

5. **Практика.** Pipeline — корректная исследовательская база, а не торговая стратегия. Для реального применения нужны учёт комиссий, калибровка и внешние факторы.

---

## Что сделано

- **Feature engineering без утечки будущего** — доходности и лаги, SMA-ratios, RSI, MACD, Bollinger, ATR, momentum, volume, циклические календарные признаки (sin/cos)
- **Хронологический split** 80/20 + **TimeSeriesSplit** (5 фолдов)
- **Явные baseline** — majority class и направление предыдущего дня
- **Регуляризация** — ограничение глубины, `min_samples_leaf`, L2, `class_weight`
- Сравнение LogReg / RandomForest / HistGradientBoosting
- Метрики и confusion matrix на train и test
- Единый model dashboard (метрики, CM, ROC, сравнение моделей)
- Threshold-анализ

---

## Структура ноутбука

1. Загрузка и очистка данных  
2. Feature engineering  
3. Train/Test split + baselines  
4. TimeSeriesSplit CV  
5. Обучение моделей  
6. Выбор лучшей модели + feature importance  
7. Метрики, confusion matrix, единый дашборд  
8. Threshold и предсказания на тесте  
9. Выводы  

---

## Стек

`Python` · `pandas` · `NumPy` · `scikit-learn` · `matplotlib` · `seaborn`

---

## Ноутбук

**Colab:** https://colab.research.google.com/drive/1DsQn-OnVZa8gE4AQB_5nznn45KgdhXxO

## Как запустить

1. Открыть [ноутбук в Google Colab](https://colab.research.google.com/drive/1DsQn-OnVZa8gE4AQB_5nznn45KgdhXxO) (или Jupyter)  
2. Загрузить `test_ds_1.xlsx` в рабочую директорию, если файл не подключён  
3. **Runtime → Run all**

---

## Файлы

| Файл | Описание |
|------|----------|
| `price_direction_ml_improved.ipynb` | Основной ноутбук |
| `test_ds_1.xlsx` | Датасет (OHLCV + target) |
