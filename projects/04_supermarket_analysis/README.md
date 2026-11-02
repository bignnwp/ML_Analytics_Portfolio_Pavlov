# Supermarket Sales Analysis & Hypothesis Testing

[English](README.md) | [Русский](README.ru.md)

**Project type:** Business Intelligence / Statistical Analysis  
**Technologies:** Python, Pandas, SciPy, statsmodels, Power BI

## Overview

A retail analytics project combining a Power BI dashboard with statistical hypothesis testing on supermarket transactions. The analysis focuses on customer segments, sales and payment behaviour, including comparisons between `Member` and `Normal` customer types.

The included dataset contains **1,000 transactions and 17 columns**.

## Business questions

- How are sales distributed across branches, product lines and customer segments?
- Do average transaction totals differ between Member and Normal customers?
- Is customer type associated with payment method?
- Are observed differences large and statistically reliable enough to support a business claim?

## What was done

### Power BI

- Built an interactive dashboard covering sales, branches, customer segments and payment methods.
- Included the Power BI report file in `powerbi/`.

### Statistical analysis

- Welch's t-test and Cohen's *d* for numerical comparisons.
- Chi-square test and Cramér's V for categorical association.
- Holm correction for multiple hypothesis testing.

## Key findings

- After Holm correction, none of the tested hypotheses reached statistical significance at **α = 0.05**.
- The observed average transaction difference between Member and Normal customers was approximately **+3%**.
- The confidence interval for that difference included zero.

These are observational comparisons. `Member` and `Normal` are not randomly assigned experimental groups, so the analysis should not be described as a causal A/B test.

## Repository contents

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

## How to run

### Statistical notebook

From this project directory, install the dependencies and start Jupyter:

```bash
python -m venv .venv

# Windows
.venv\Scripts\activate

# macOS / Linux
source .venv/bin/activate

pip install pandas numpy scipy statsmodels matplotlib seaborn jupyter
jupyter notebook notebooks/supermarket_hypothesis_testing.ipynb
```

The notebook reads the local file from `data/supermarket_sales.csv` when run from its own `notebooks/` directory or through the supported relative path logic in the notebook.

### Power BI dashboard

Open [`powerbi/supermarket_sales_dashboard.pbix`](powerbi/supermarket_sales_dashboard.pbix) in Power BI Desktop.

## Data

- [Transaction dataset](data/supermarket_sales.csv)
- [Statistical test results](powerbi/hypothesis_test_results.csv)
- [Payment distribution export](powerbi/payment_distribution.csv)
