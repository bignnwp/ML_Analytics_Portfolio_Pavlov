# 07. Authorship Attribution — определение авторства текстов

**Тип:** Natural Language Processing (NLP)  
**Стек:** Python, Pandas, NumPy, Scikit-learn, TF-IDF, Matplotlib, Seaborn

---

## Задача

Разработать модель машинного обучения, определяющую автора текстового фрагмента среди шести известных писателей по стилистическим особенностям текста.

## Что реализовано

- Подготовка текстового корпуса шести авторов
- Разбиение произведений на непересекающиеся фрагменты по 1 000 символов
- Извлечение признаков с помощью TF-IDF и символьных n-грамм (3–5)
- Сравнение моделей: LinearSVC, Logistic Regression, Random Forest
- Оценка качества: Accuracy, Macro F1, classification report, матрица ошибок
- Анализ ограничений экспериментальной оценки

## Результаты эксперимента

| Модель               | Accuracy | Macro F1 |
|----------------------|----------|----------|
| **LinearSVC**        | **94.91%** | **94.60%** |
| Logistic Regression  | 94.22%   | 93.95%   |
| Random Forest        | 77.18%   | 74.44%   |

В рамках проведённого эксперимента LinearSVC показал наилучшее качество классификации.

## Структура папки

```text
07_authorship_attribution/
├── README.md
└── data/
    └── writerextnd.zip     # Корпус текстов
```

## Код

Полный ноутбук: [Google Colab](https://colab.research.google.com/drive/1I6CeNTaHwFCc4JJNfxrU_KRRlbilzE-1)

## Датасет

Архив `data/writerextnd.zip`
