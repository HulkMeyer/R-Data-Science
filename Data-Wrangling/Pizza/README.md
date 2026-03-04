# Pizza Delivery — Data Wrangling

> Five data manipulation exercises on a pizza delivery dataset covering driver performance, bill/pizza ratios, daily variance, operator billing, and free wine delivery patterns using `dplyr` and `tidyverse`.

![Category](https://img.shields.io/badge/Category-Data%20Wrangling-green)
![R](https://img.shields.io/badge/R-4.0%2B-blue?logo=r&logoColor=white)
![Packages](https://img.shields.io/badge/Packages-tidyverse-orange)
![Course](https://img.shields.io/badge/Course-DTSC%20650-lightgrey)

---

## 📌 Overview

A CodeGrade-graded assignment using a pizza delivery dataset to practice core `dplyr` operations. Each question requires at least two `dplyr` functions and produces a specific output format (tibble or data frame with required column names and rounding).

---

## 📂 File Structure

```
data-wrangling/pizza/
├── README.md
├── pizza.R
├── pizza_Assignment_Description_and_Building.Rmd
└── pizza.csv
```

---

## ⚙️ Requirements

```r
install.packages("tidyverse")
```

`pizza.csv` must be in the same directory as the script. Load with:
```r
suppressPackageStartupMessages(library(tidyverse))
pizza <- read_csv("pizza.csv")
```

---

## 📋 Questions

| Q | Task | Output |
|---|------|--------|
| Q1 | Driver names where `free_wine=1`, `discount_customer=1`, and `pizzas > 4` | Data frame of driver names |
| Q2 | Mean ratio of bill to pizzas (`mean_ratio`) | 1×1 data frame |
| Q3 | Variance of pizzas ordered by day of week | Data frame: day, var_pizzas |
| Q4 | Which operator has the highest billing variance? | Single operator name |
| Q5 | Day/driver combo with most free wine deliveries | 1-row tibble: day, driver, n |

---

## 📊 Dataset — `pizza.csv`

A pizza delivery log with variables including: `day`, `date`, `time`, `operator`, `branch`, `driver`, `temperature`, `bill`, `pizzas`, `got_wine`, `free_wine`, `discount_customer`.

---

## 💡 Key Concepts

- **`suppressPackageStartupMessages()`** — required for CodeGrade; prevents package loading output from appearing in graded results
- **`as.data.frame()`** — converts tibbles to data frames when rounding doesn't behave as expected with tibbles
- **`read_csv()` vs. `read.csv()`** — `read_csv()` (tidyverse) is faster and returns a tibble; `read.csv()` (base R) returns a data frame

---

## 🔗 References

- [dplyr Documentation](https://dplyr.tidyverse.org/)
- [R for Data Science — Data Transformation](https://r4ds.had.co.nz/transform.html)
