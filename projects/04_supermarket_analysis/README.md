# 04. Анализ продаж супермаркета + проверка гипотез

**Тип:** Business Intelligence + Statistical Hypothesis Testing  
**Стек:** Python, Pandas, SciPy, Power BI

---

## Задача

Провести бизнес-анализ продаж супермаркета и статистически проверить гипотезы о влиянии программы лояльности.

## Что сделано

### Power BI
- Интерактивный дашборд: продажи, филиалы, клиентские сегменты, способы оплаты

### Статистический анализ (Python)
- t-тест Уэлча + Cohen's d
- χ²-тест + V Крамера
- Поправка Holm на множественные сравнения

## Результаты

После поправки на множественные сравнения ни одна гипотеза не достигла статистической значимости (α = 0.05).  
Разница среднего чека Member vs Normal составила ≈ +3%, но доверительный интервал включает ноль.

## Структура папки

```text
04_supermarket_analysis/
├── README.md
├── data/
│   └── supermarket_sales.csv
├── notebooks/
│   └── supermarket_hypothesis_testing.ipynb
└── powerbi/
    ├── supermarket_sales_dashboard.pbix
    ├── hypothesis_test_results.csv
    └── payment_distribution.csv
```

## Как открыть

1. **Дашборд:** откройте `powerbi/supermarket_sales_dashboard.pbix` в Power BI Desktop.
2. **Статистика:** запустите ноутбук `notebooks/supermarket_hypothesis_testing.ipynb`.
