# Production-Oriented Customer Churn Prediction

[English](README.md) | [Русский](README.ru.md)

**Project type:** MLOps / Production Machine Learning  
**Technologies:** Python, scikit-learn / XGBoost, FastAPI, Docker, Pytest

## Overview

This project takes a customer-churn prediction model beyond an isolated notebook and packages it as a service-oriented application. The focus is on the engineering components needed to expose model predictions through an API and make the application easier to test and run.

## Objective

Create a production-oriented structure around a churn model, including model training and serialization, a prediction API, automated tests and containerization.

## Main components

| Component | Purpose |
|---|---|
| Model training | Train and serialize the machine-learning model |
| FastAPI | Expose predictions through a REST API |
| Pytest | Run unit and integration tests |
| Docker | Package the service in a container |
| API documentation | Describe available endpoints and usage |

## Source code

The implementation is maintained in a separate repository rather than duplicated in this portfolio folder:

**[Open churn_ml_production on GitHub](https://github.com/bignnwp/churn_ml_production)**

Refer to that repository's README for the current architecture, exact setup instructions, available endpoints and supported deployment workflow.

## Portfolio repository structure

```text
05_churn_production/
├── README.md
└── README.ru.md
```

The portfolio folder is an entry point to the standalone implementation; the application source code is in the linked repository.

## What this project demonstrates

- Packaging a trained ML model as an application component.
- Serving predictions through a REST API.
- Separating application logic from model training.
- Testing API and model-related behaviour.
- Containerizing the service for a repeatable runtime environment.
