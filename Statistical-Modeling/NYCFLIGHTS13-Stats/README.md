# NYC Flights 2013 — Statistical Modeling

> Outlier detection and removal, Pearson correlation testing, simple and multiple OLS regression, and standardized coefficients applied to departure delay data from 336,776 NYC flights.

![Category](https://img.shields.io/badge/Category-Statistical%20Modeling-red)
![R](https://img.shields.io/badge/R-4.0%2B-blue?logo=r&logoColor=white)
![Packages](https://img.shields.io/badge/Packages-tidyverse%20%7C%20nycflights13%20%7C%20lm.beta-orange)
![Course](https://img.shields.io/badge/Course-DTSC%20650-lightgrey)

---

## 📌 Overview

Statistical modeling companion to the nycflights13 wrangling assignment. Demonstrates a complete regression pipeline on a large real-world dataset: outlier identification via quantile fencing, correlation testing, simple regression, and multiple regression adding carrier as a categorical predictor — with standardized coefficients throughout.

---

## 📂 File Structure

```
statistical-modeling/nycflights13-stats/
├── README.md
├── nycflights13stats.R
└── nycflights13stats_Assignment_Description_and_Building.Rmd
```

---

## ⚙️ Requirements

```r
install.packages(c("tidyverse", "nycflights13", "lm.beta"))
```

---

## 📋 Questions

| Q | Task | Method |
|---|------|--------|
| Q1 | Remove departure delay outliers (0.15% / 99.85% quantile fence); report % data remaining | `quantile()`, `which()`, negative indexing |
| Q2 | Pearson correlation: `dep_delay` vs. `distance` (outliers removed) | `cor.test()` |
| Q3 | Simple OLS regression: predict `dep_delay` from `distance` | `lm()` + `summary()` |
| Q4 | Standardized coefficient for distance | `lm.beta()` |
| Q5 | Multiple regression: add `carrier` as predictor; compare to Q3 | `lm()` + `summary()` |

---

## 💡 Key Concepts

- **Quantile fencing for outliers** — `quantile(x, 0.9985)` and `quantile(x, 0.0015)` define the upper and lower bounds; `which()` identifies the indices of outlying rows; negative indexing (`df[-outlier_indices, ]`) removes them
- **`as.data.frame(flights)`** — converting the tibble to a base R data frame before negative-index removal avoids tibble subsetting quirks
- **Percentage remaining formula** — `(nrow(original) - length(outliers)) / nrow(original) * 100`
- **Categorical predictor in `lm()`** — adding `carrier` (16 levels) creates 15 dummy variables automatically; the intercept represents the reference carrier

---

## 🔗 References

- [nycflights13 Package](https://cran.r-project.org/web/packages/nycflights13/)
- [lm.beta Package](https://cran.r-project.org/web/packages/lm.beta/)
