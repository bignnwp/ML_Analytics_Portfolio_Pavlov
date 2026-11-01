# 03. Прогнозирование сердечно-сосудистых заболеваний

**Тип:** Tabular Machine Learning (медицинские данные)  
**Стек:** Python, Pandas, NumPy, Scikit-learn, Matplotlib, Seaborn, SHAP

---

## Задача

Построить модель для оценки риска сердечно-сосудистого заболевания на основе медицинских показателей пациента.

## Что сделано

- EDA и проверка качества данных
- Feature Engineering и масштабирование признаков
- Сравнение моделей: Logistic Regression, Random Forest, Gradient Boosting
- Оценка по Accuracy, Precision, Recall, F1-score, ROC-AUC
- Интерпретация с помощью SHAP

## Результаты

Random Forest показал высокий Recall, что позволяет эффективно выявлять пациентов из группы риска.

## Структура папки

```text
03_heart_disease/
├── README.md
└── data/
    └── heart.csv
```

## Код

Полный ноутбук: [Google Colab](https://colab.research.google.com/drive/1BK5wZVz1gSiwCjOp_dZ-dzG_UmwDS47D)

## Датасет

Файл `data/heart.csv`
