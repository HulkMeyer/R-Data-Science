# Pizza — Statistical Modeling

> Correlation matrices, logistic regression, multiple linear regression with standardized coefficients, and AIC-based model comparison using pizza delivery data.

![Category](https://img.shields.io/badge/Category-Statistical%20Modeling-red)
![R](https://img.shields.io/badge/R-4.0%2B-blue?logo=r&logoColor=white)
![Packages](https://img.shields.io/badge/Packages-tidyverse%20%7C%20lm.beta-orange)
![Course](https://img.shields.io/badge/Course-DTSC%20650-lightgrey)

---

## 📌 Overview

The statistical modeling companion to the pizza wrangling assignment. Applies correlation analysis, binary logistic regression (predicting wine orders), multiple OLS regression (predicting bill amount), standardized regression via `lm.beta`, and AIC model comparison.

---

## 📂 File Structure

```
statistical-modeling/pizza-stats/
├── README.md
├── pizzaStats.R
├── pizzaStats_Assignment_Description_and_Building.Rmd
└── pizza.csv
```

---

## ⚙️ Requirements

```r
install.packages(c("tidyverse", "lm.beta"))
```

---

## 📋 Questions

| Q | Task | Method |
|---|------|--------|
| Q1 | Correlation matrix: temperature, bill, pizzas, got_wine | `cor()` |
| Q2 | Correlation matrix for Laura / East branch: time, temperature, bill, pizzas | `cor()` with `filter()` |
| Q3 | Logistic regression: predict `got_wine` from temperature, bill, pizzas | `glm(..., binomial())` |
| Q4 | Multiple regression: predict `bill` from temperature, pizzas, got_wine + standardized coefficients | `lm()` + `lm.beta()` |
| Q5 | Add `operator` to model; compare AIC — which model is better? | `AIC(model, k=2)` |

---

## 💡 Key Concepts

- **`glm(..., binomial())`** — logistic regression for binary outcomes (0/1); coefficients are in log-odds
- **`lm.beta()`** — standardizes regression coefficients so predictors measured in different units can be compared directly
- **AIC (Akaike Information Criterion)** — lower is better; penalizes model complexity to balance fit and parsimony
- **Correlation matrix with `cor()`** — requires all-numeric input; select only numeric columns before calling

---

## 🔗 References

- [lm.beta Package](https://cran.r-project.org/web/packages/lm.beta/)
- [AIC Explanation](https://en.wikipedia.org/wiki/Akaike_information_criterion)
