# Production-Oriented Customer Churn Prediction

[English](README.md) | [Русский](README.ru.md)

**Project type:** MLOps / Production Machine Learning  
**Runtime:** Python 3.11–3.12  
**Source repository:** [bignnwp/churn_ml_production](https://github.com/bignnwp/churn_ml_production)

## Overview

A production-oriented implementation of a bank customer-churn prediction project. The repository moves the model beyond an isolated notebook by organizing the code as a Python package, separating training from inference, exposing predictions through a REST API, and adding automated quality checks and deployment artefacts.

## Objective

Build a maintainable workflow around a churn model: data preparation and feature engineering, model training and evaluation, model serialization, API-based inference, automated testing, containerization and deployment configuration.

## Architecture and main components

| Component | Implementation |
|---|---|
| ML pipeline | Modular package in `src/churn_ml`; data preparation, feature engineering, training and evaluation are separated into modules |
| Model | Random Forest; hyperparameter search with `HalvingRandomSearchCV` |
| Model persistence | `joblib` serialization |
| Prediction API | FastAPI REST service with `GET /health` and `POST /predict` endpoints |
| API schema and validation | Pydantic; interactive OpenAPI / Swagger UI documentation at `/docs` |
| Automated tests | Pytest; tests are stored in `tests/` |
| Containerization | Docker and Docker Compose |
| Orchestration manifests | Kubernetes Deployment and Service manifests in `k8s/` |
| CI pipeline | GitHub Actions workflow for linting, formatting, type checking, tests and Docker image build |

The training pipeline reports Recall, Precision, F1, ROC-AUC and Average Precision. The data path is passed explicitly to the training command, rather than being hard-coded into the training module. The trained model is saved as a `.joblib` artefact.

## Engineering workflow and code quality

This project includes a dedicated Python development toolchain in addition to its ML and API stack:

| Tool | Role in the project |
|---|---|
| **Poetry** | Dependency and package management; project configuration is defined in `pyproject.toml`, with resolved dependencies recorded in `poetry.lock` |
| **Ruff** | Python linting and code formatting; configured rules include `E`, `F`, `I`, `B`, `UP` and `SIM` |
| **mypy** | Static type checking for the application source in `src/` |
| **pre-commit** | Runs repository checks before commits |
| **pre-commit-hooks** | Checks trailing whitespace, end-of-file, YAML, TOML, JSON and merge-conflict markers |
| **pytest** | Automated test execution |

The pre-commit configuration also runs Ruff (including formatting) and mypy. Ruff settings are kept in `pyproject.toml`, so the linting and formatting rules are version-controlled with the project.

## CI/CD and deployment

The GitHub Actions workflow is triggered by pushes and pull requests targeting `main` or `master`. It sets up Python 3.11, installs Poetry and project dependencies, then runs:

1. `ruff check` — linting;
2. `ruff format --check` — formatting validation;
3. `mypy` — static type checking;
4. `pytest` — automated tests;
5. Docker image build — performed in a separate job after the quality checks pass.

The application can be packaged with Docker or Docker Compose. The repository also contains Kubernetes Deployment and Service manifests; its documentation describes deployment to local Kubernetes environments such as Minikube, kind or k3d.

## Data science and application libraries

| Area | Technologies |
|---|---|
| Data processing | NumPy, pandas, SciPy |
| Machine learning | scikit-learn, imbalanced-learn |
| Model persistence | joblib |
| Analysis and visualization | Matplotlib, Seaborn, tqdm, phik |
| API and validation | FastAPI, Uvicorn, Pydantic |
| Packaging and quality | Poetry, Ruff, mypy, pre-commit, pytest |
| Infrastructure | Docker, Docker Compose, Kubernetes, kubectl |
| Automation | GitHub Actions, Docker Buildx |

## Documentation and process artefacts

The source repository includes:

- **Model Card** — documents the model's purpose, data, features, training approach, evaluation metrics and intended use;
- **BPMN diagrams** — describe the model lifecycle, including data preparation, feature engineering, training, evaluation, review, deployment, monitoring and retraining;
- **API documentation** — generated from the FastAPI / OpenAPI schema and available through Swagger UI at `/docs` when the service is running.

## Source code and configuration

The implementation is maintained in a separate repository and is not duplicated in this portfolio folder:

- **[Source repository: churn_ml_production](https://github.com/bignnwp/churn_ml_production)**
- [Project configuration and dependencies — `pyproject.toml`](https://github.com/bignnwp/churn_ml_production/blob/main/pyproject.toml)
- [Locked dependency versions — `poetry.lock`](https://github.com/bignnwp/churn_ml_production/blob/main/poetry.lock)
- [Pre-commit configuration](https://github.com/bignnwp/churn_ml_production/blob/main/.pre-commit-config.yaml)
- [GitHub Actions CI workflow](https://github.com/bignnwp/churn_ml_production/blob/main/.github/workflows/ci.yml)
- [Kubernetes manifests](https://github.com/bignnwp/churn_ml_production/tree/main/k8s)
- [Project documentation](https://github.com/bignnwp/churn_ml_production/tree/main/docs)

Refer to the source repository for the current implementation, API contract, deployment manifests and exact configuration.

## Portfolio folder

```text
05_churn_production/
├── README.md
└── README.ru.md
```

This folder is the bilingual entry point to the standalone production implementation; application code and configuration are maintained in the linked repository.

## What this project demonstrates

- Structuring an ML application as a maintainable Python package.
- Building a repeatable model-training and evaluation pipeline.
- Serving predictions through a validated REST API.
- Managing dependencies and reproducible environments with Poetry.
- Applying linting, formatting, static typing and pre-commit checks.
- Automating quality gates and container builds with GitHub Actions.
- Packaging and deploying an API using Docker and Kubernetes manifests.
- Documenting the model and its lifecycle with a Model Card and BPMN.
