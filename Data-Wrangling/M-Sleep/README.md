# Mammal Sleep Patterns — Data Wrangling

> Five data manipulation exercises on the `ggplot2::msleep` dataset covering variance by conservation status, sleep/REM ratios in rodents, body-to-brain weight ratios in primates, grouped sleep statistics, and filtered domesticated herbivores.

![Category](https://img.shields.io/badge/Category-Data%20Wrangling-green)
![R](https://img.shields.io/badge/R-4.0%2B-blue?logo=r&logoColor=white)
![Packages](https://img.shields.io/badge/Packages-tidyverse-orange)
![Course](https://img.shields.io/badge/Course-DTSC%20650-lightgrey)

---

## 📌 Overview

A CodeGrade-graded assignment using the built-in `msleep` dataset (83 mammals, 11 variables) to practice `dplyr` filtering, mutation, grouping, and counting. Questions require combining multiple filter conditions, computing ratios, and handling `NA` values in grouped summaries.

---

## 📂 File Structure

```
data-wrangling/msleep/
├── README.md
├── msleep.R
└── msleep_Assingment_Description_and_Building.Rmd
```

---

## ⚙️ Requirements

```r
install.packages("tidyverse")
# msleep is built into ggplot2 — no data file needed
```

---

## 📋 Questions

| Q | Task | Output |
|---|------|--------|
| Q1 | Variance in total sleep for carnivores with `lc` conservation status | 1×1 data frame: `var` |
| Q2 | Rodent (Rodentia) with highest `sleep_total / sleep_rem` ratio | Tibble: animal name |
| Q3 | Count of primates with `bodywt / brainwt ≥ 100` | Count tibble |
| Q4 | Mean and variance of total sleep by conservation status (top 6) | Data frame: conservation, mean_sleep, var_sleep |
| Q5 | Domesticated herbivores sleeping ≥ 12 hours | Tibble: name column |

---

## 📊 Dataset — `ggplot2::msleep`

Sleep data for 83 mammal species including `name`, `genus`, `vore` (diet type), `order`, `conservation`, `sleep_total`, `sleep_rem`, `sleep_cycle`, `awake`, `brainwt`, and `bodywt`. Contains `NA` values in several columns — `na.rm = TRUE` is required for grouped aggregations.

---

## 💡 Key Concepts

- **`na.rm = TRUE` in `mean()` and `var()`** — `msleep` has `NA` values in `sleep_rem`, `brainwt`, and `bodywt`; without `na.rm`, grouped stats return `NA`
- **`distinct()` after `mutate()` + `group_by()`** — prevents duplicate rows when computing group-level stats and then selecting only the summary columns
- **`count()` vs. `nrow()`** — `count()` works within a pipe chain on grouped/filtered data; `nrow()` works on the full resulting data frame

---

## 🔗 References

- [`msleep` Dataset (ggplot2)](https://ggplot2.tidyverse.org/reference/msleep.html)
- [V. M. Savage & G. B. West (2007) — Original Sleep Data Source](https://doi.org/10.1073/pnas.0610080104)
