# Authorship Attribution with Character N-grams

[English](README.md) | [Русский](README.ru.md)

**Project type:** Natural Language Processing / Text Classification  
**Technologies:** Python, Pandas, NumPy, scikit-learn, TF-IDF, Matplotlib, Seaborn

## Overview

A text-classification experiment that predicts which of six known writers authored a text fragment, using stylistic patterns captured by character-level TF-IDF features.

## Problem

Given a short text fragment, classify it into one of six author classes. The experiment focuses on stylometric signals such as character sequences rather than semantic understanding of the text.

## Workflow

- Prepare a text corpus for six authors.
- Split source texts into fragments of 1,000 characters.
- Extract character n-gram features with TF-IDF (n-gram range 3–5).
- Compare LinearSVC, Logistic Regression and Random Forest.
- Evaluate Accuracy, Macro F1, classification report and confusion matrix.
- Discuss the limitations of the experimental evaluation.

## Reported results

| Model | Accuracy | Macro F1 |
|---|---:|---:|
| **LinearSVC** | **94.91%** | **94.60%** |
| Logistic Regression | 94.22% | 93.95% |
| Random Forest | 77.18% | 74.44% |

LinearSVC achieved the best reported result in this experiment.

## Data

The portfolio includes the compressed corpus at [`data/writerextnd.zip`](data/writerextnd.zip). The archive contains the text data used in the experiment. Check the dataset's original source and usage terms before redistributing it.

## Code and notebook

[Open Authorship Attribution notebook in Google Colab](https://colab.research.google.com/drive/1I6CeNTaHwFCc4JJNfxrU_KRRlbilzE-1)

The notebook is hosted externally in Colab; it is not included in the current repository snapshot.

## Repository structure

```text
07_authorship_attribution/
├── README.md
├── README.ru.md
└── data/
    └── writerextnd.zip
```
