# Mammal Sleep Patterns — Statistical Modeling

> Correlation testing, correlation matrices, OLS regression, AIC model comparison, and binary logistic regression applied to the `msleep` mammal sleep dataset to model body weight and diet type.

![Category](https://img.shields.io/badge/Category-Statistical%20Modeling-red)
![R](https://img.shields.io/badge/R-4.0%2B-blue?logo=r&logoColor=white)
![Packages](https://img.shields.io/badge/Packages-tidyverse%20%7C%20lm.beta-orange)
![Course](https://img.shields.io/badge/Course-DTSC%20650-lightgrey)

---

## 📌 Overview

Statistical modeling companion to the msleep wrangling assignment. Moves from descriptive correlation to inferential modeling — testing significance of the sleep/body weight relationship, building and comparing OLS regression models for body weight, and finishing with a logistic regression predicting carnivore vs. herbivore classification from sleep data.

---

## 📂 File Structure

```
statistical-modeling/msleep-stats/
├── README.md
├── msleepStats.R
└── msleepStats_Assignment_Description_and_Building.Rmd
```

---

## ⚙️ Requirements

```r
install.packages(c("tidyverse", "lm.beta"))
# msleep is built into ggplot2
```

---

## 📋 Questions

| Q | Task | Method |
|---|------|--------|
| Q1 | Pearson correlation test: `sleep_total` vs. `bodywt` | `cor.test()` — do not round |
| Q2 | Correlation matrix: sleep_total, sleep_rem, brainwt, bodywt | `cor()` after `drop_na()` |
| Q3 | OLS regression: predict `bodywt` from `vore` | `lm(bodywt ~ vore)` |
| Q4 | Add `sleep_rem` to model; compare AIC — which model is better? | `AIC(model, k=)` |
| Q5 | Logistic regression: predict carnivore (0) vs. herbivore (1) from `sleep_total` | `glm(..., binomial())` — exclude omni and insecti |

---

## 💡 Key Concepts

- **`cor.test()` vs. `cor()`** — `cor.test()` provides significance testing (t-statistic, p-value, confidence interval) in addition to the correlation coefficient; `cor()` gives the coefficient only
- **`drop_na()` vs. `na.omit()`** — both remove rows with `NA`; `drop_na()` is the tidyverse version and integrates cleanly in pipe chains
- **`vore` as a categorical predictor in `lm()`** — R automatically dummy-codes factor/character variables; the intercept represents the reference category (`carni`)
- **Logistic regression with `filter(vore != 'omni' & vore != 'insecti')`** — binary logistic regression requires exactly two outcome classes; excluding the two minority diet types isolates the carni/herbi comparison

---

## 🔗 References

- [`msleep` Dataset](https://ggplot2.tidyverse.org/reference/msleep.html)
- [cor.test Documentation](https://www.rdocumentation.org/packages/stats/versions/3.6.2/topics/cor.test)
