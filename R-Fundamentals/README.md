# R Intro Labs — Fundamentals of R Programming

> Four progressively complex labs covering core R programming concepts: variables, vectors, data frames, data types, factors, and descriptive statistics using real datasets.

![Category](https://img.shields.io/badge/Category-R%20Fundamentals-blue)
![R](https://img.shields.io/badge/R-4.0%2B-blue?logo=r&logoColor=white)
![Packages](https://img.shields.io/badge/Packages-airports%20%7C%20ggplot2-orange)
![Course](https://img.shields.io/badge/Course-DTSC%20550-lightgrey)

---

## 📌 Overview

Four CodeGrade-graded labs that build from basic R variable assignment through data frames, data types, and descriptive statistics. Each lab focuses on a different dataset and concept cluster, culminating in summary statistics and Z-score calculations on Texas housing data.

---

## 📂 File Structure

```
r-fundamentals/r-intro-labs/
├── README.md
├── R_Intro_Lab_1.R          ← Fibonacci, Pi, Golden Ratio, vectors
├── R_Intro_Lab_2.R          ← US Airports data, data frames, factors
├── R_Intro_Lab_3.R          ← Melbourne housing: data types (nominal, ordinal, interval, ratio)
└── R_Intro_Lab_4.R          ← TX Housing: mean, median, variance, SD, Z-score, na.rm
```

---

## ⚙️ Requirements

```r
install.packages(c("airports", "ggplot2", "readxl", "openssl"))
```

`R_Intro_Lab_3.R` requires a local `housing.xlsx` file (not included — sourced from course Brightspace).

---

## 📋 Lab Summaries

### Lab 1 — Variables, Vectors, and Math
- Assigning Pi to 4 decimal places
- Computing Earth's circumference from radius
- Creating and indexing the Fibonacci sequence
- Copying and modifying vectors
- Golden Ratio formula to compute Fibonacci position values
- `sum()`, `round()`, `mean()`

### Lab 2 — Data Structures and the `airports` Package
- `nrow()` for observation count on `usairports`
- `class()` on data frames and strings
- Creating vectors and binding with `cbind()`
- Building a `data.frame()` from parallel vectors (Three Stooges)
- `mean()` on a numeric vector
- `as.factor()` for type conversion

### Lab 3 — Data Types in Melbourne Housing
- Identifying **nominal**, **ordinal**, **interval**, and **ratio** variables from a housing dataset
- `unique()` for extracting distinct values per column
- Distinguishing **discrete** vs. **continuous** variables
- Reading `.xlsx` files with `read_excel()`

### Lab 4 — Descriptive Statistics on TX Housing
- `mean()` with `trim` and `na.rm` parameters — effect of NA handling
- `median()` vs. `mean()` for skewed data
- `min()`, `max()`, range calculation
- `var()` for variance, `sqrt(var())` for standard deviation
- `summary()` for full dataset overview
- **Z-score calculation** by hand: `(x - mean) / sd`

---

## 💡 Key Concepts

- **`na.rm = TRUE`** — required whenever a column contains `NA` values; without it, most stat functions return `NA`
- **`as.factor()`** — converts numeric or character vectors to categorical; important for grouping and modeling
- **Z-score interpretation** — a Z-score near 0 means the observation is close to the mean; the TX housing example shows a value just below the mean, within 1 SD
- **Data types matter** — nominal/ordinal/interval/ratio classification determines which statistical operations are valid

---

## 🔗 References

- [`airports` Package](https://cran.r-project.org/web/packages/airports/)
- [TX Housing Dataset (`ggplot2::txhousing`)](https://ggplot2.tidyverse.org/reference/txhousing.html)
- [R for Data Science — Chapter 3](https://r4ds.had.co.nz/)
