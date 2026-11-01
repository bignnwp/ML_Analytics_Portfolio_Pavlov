# 01. Прогнозирование оттока клиентов банка

**Тип:** Tabular Machine Learning  
**Стек:** Python, Pandas, Scikit-learn, XGBoost, SHAP, Matplotlib, Seaborn

---

## Задача

Спрогнозировать вероятность ухода клиента банка в ближайший месяц, чтобы отдел удержания мог заранее предложить персональные условия.

## Что сделано

- Разведочный анализ данных (EDA)
- Feature Engineering и обработка категориальных признаков
- Сравнение моделей: Logistic Regression, Random Forest, XGBoost, Decision Tree
- Борьба с дисбалансом классов (SMOTE)
- Интерпретация результатов с помощью SHAP

## Результаты

| Модель              | Ключевая метрика     | Значение |
|---------------------|----------------------|----------|
| Decision Tree + SMOTE | Recall             | **0.85** |
| —                   | Приоритет метрики    | Recall (минимизация пропуска оттока) |

## Структура папки

```text
01_bank_churn/
├── README.md
├── data/
│   └── train.csv          # Исходный датасет
└── notebooks/             # (можно добавить .ipynb)
```

## Код

Полный ноутбук: [Google Colab](https://colab.research.google.com/drive/1p40UtKlxW2FZkX7xY11Acabu92LQJ6VH)

## Датасет

Файл `data/train.csv` или [скачать с GitHub](https://github.com/bignnwp/ML_Analytics_Portfolio_Pavlov/blob/main/projects/01_bank_churn/data/train.csv)
