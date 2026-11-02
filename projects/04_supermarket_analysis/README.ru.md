# Анализ продаж супермаркета и проверка гипотез

[English](README.md) | [Русский](README.ru.md)

**Тип проекта:** Business Intelligence / статистический анализ  
**Технологии:** Python, Pandas, SciPy, statsmodels, Power BI

## О проекте

Проект по аналитике розничных продаж объединяет дашборд Power BI и статистическую проверку гипотез на транзакциях супермаркета. Анализ охватывает клиентские сегменты, продажи и способы оплаты, включая сравнение типов клиентов `Member` и `Normal`.

В датасете содержится **1 000 транзакций и 17 столбцов**.

## Бизнес-вопросы

- Как распределяются продажи между филиалами, товарными категориями и клиентскими сегментами?
- Отличается ли средняя сумма покупки у клиентов Member и Normal?
- Связан ли тип клиента со способом оплаты?
- Достаточно ли велики и статистически надёжны наблюдаемые различия, чтобы делать бизнес-выводы?

## Что сделано

### Power BI

- Создан интерактивный дашборд по продажам, филиалам, клиентским сегментам и способам оплаты.
- Файл отчёта Power BI включён в папку `powerbi/`.

### Статистический анализ

- t-тест Уэлча и Cohen's *d* для сравнения числовых показателей.
- χ²-тест и V Крамера для анализа связи категориальных признаков.
- Поправка Holm для множественной проверки гипотез.

## Основные результаты

- После поправки Holm ни одна из проверенных гипотез не достигла статистической значимости при **α = 0,05**.
- Наблюдаемая разница среднего чека Member и Normal составила примерно **+3%**.
- Доверительный интервал для этой разницы включает ноль.

Это наблюдательное сравнение. Группы `Member` и `Normal` не формировались случайным распределением, поэтому анализ нельзя называть причинным A/B-тестом.

## Содержимое репозитория

```text
04_supermarket_analysis/
├── README.md
├── README.ru.md
├── data/
│   └── supermarket_sales.csv
├── notebooks/
│   └── supermarket_hypothesis_testing.ipynb
└── powerbi/
    ├── supermarket_sales_dashboard.pbix
    ├── hypothesis_test_results.csv
    └── payment_distribution.csv
```

## Как запустить

### Статистический ноутбук

Из папки проекта создай окружение, установи зависимости и запусти Jupyter:

```bash
python -m venv .venv

# Windows
.venv\Scripts\activate

# macOS / Linux
source .venv/bin/activate

pip install pandas numpy scipy statsmodels matplotlib seaborn jupyter
jupyter notebook notebooks/supermarket_hypothesis_testing.ipynb
```

Ноутбук использует локальный файл `data/supermarket_sales.csv` через относительный путь.

### Дашборд Power BI

Открой [`powerbi/supermarket_sales_dashboard.pbix`](powerbi/supermarket_sales_dashboard.pbix) в Power BI Desktop.

## Данные и результаты

- [Датасет транзакций](data/supermarket_sales.csv)
- [Результаты статистических тестов](powerbi/hypothesis_test_results.csv)
- [Экспорт распределения способов оплаты](powerbi/payment_distribution.csv)
