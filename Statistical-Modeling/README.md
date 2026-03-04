# 📈 Statistical Modeling

> Correlation analysis, OLS regression, logistic regression, standardized coefficients, and AIC-based model selection — applied across four datasets as CodeGrade-graded assignments.

---

## 📂 Projects

| Folder | Dataset | Description | Key Skills |
|--------|---------|-------------|------------|
| [pizza-stats](pizza-stats/) | `pizza.csv` | Correlation matrices, logistic regression predicting wine orders, multiple OLS regression, AIC model comparison | `cor`, `glm`, `lm`, `lm.beta`, `AIC` |
| [fastfood-stats](fastfood-stats/) | `openintro::fastfood` | Correlation, logistic regression classifying McDonald's vs. Subway, standardized multiple regression | `cor`, `glm`, `lm.beta`, `AIC`, `na.omit` |
| [msleep-stats](msleep-stats/) | `ggplot2::msleep` | `cor.test` for significance, correlation matrix, OLS regression with categorical predictor, AIC comparison, logistic regression | `cor.test`, `cor`, `lm`, `glm`, `AIC`, `drop_na` |
| [nycflights13-stats](nycflights13-stats/) | `nycflights13::flights` | Outlier removal via quantile fencing, correlation testing, simple and multiple regression, standardized coefficients | `quantile`, `which`, `cor.test`, `lm`, `lm.beta` |

---

## 🛠️ Packages Used

| Package | Purpose |
|---------|---------|
| `tidyverse` | Data preparation and pipe-based workflows |
| `lm.beta` | Standardized regression coefficients for cross-predictor comparison |
| `openintro` | `fastfood` dataset |
| `nycflights13` | `flights` dataset |

---

## 📋 Concepts Covered

**Correlation**
- `cor()` — correlation matrix for multiple numeric variables
- `cor.test()` — Pearson correlation with t-statistic, p-value, and confidence interval
- `na.omit()` / `drop_na()` — required before `cor()` when any variable has `NA` values

**OLS Regression**
- `lm(Y ~ X1 + X2 + ...)` — multiple linear regression
- `summary(model)` — coefficients, R², F-statistic, p-values
- `lm.beta(model)` — standardized (beta) coefficients for comparing effect sizes across different units

**Logistic Regression**
- `glm(Y ~ X, binomial(), data)` — binary logistic regression for 0/1 outcomes
- Coefficients are in log-odds; significant predictors shift the probability of group membership
- Binary encoding: `mutate(var = ifelse(condition, 1, 0))`

**Model Selection**
- `AIC(model, k=2)` — lower AIC indicates a better balance of fit and parsimony
- Comparing models with and without a predictor to identify the most efficient specification

**Outlier Handling**
- Quantile fence: `quantile(x, 0.9985)` and `quantile(x, 0.0015)`
- `which()` to identify outlier row indices
- Negative indexing `df[-outlier_rows, ]` to remove them

---

> ⬆️ [Back to repo root](../README.md)
