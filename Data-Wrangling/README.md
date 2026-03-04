# 🔧 Data Wrangling

> Five-question CodeGrade assignments applying core `dplyr` verbs to four distinct real-world datasets — each requiring filtering, grouping, mutation, and summarizing with precise output formatting.

---

## 📂 Projects

| Folder | Dataset | Description | Key Skills |
|--------|---------|-------------|------------|
| [pizza](pizza/) | `pizza.csv` | Pizza delivery log: driver performance, bill/pizza ratios, free wine patterns, daily variance | `filter`, `mutate`, `group_by`, `summarise`, `var` |
| [fastfood](fastfood/) | `openintro::fastfood` | Fast food nutrition: calorie ranking, computed fat×sugar columns, restaurant-level averages | `arrange`, `desc`, `mutate`, `head`, `nrow` |
| [msleep](msleep/) | `ggplot2::msleep` | Mammal sleep patterns: sleep/REM ratios, conservation status grouping, body/brain weight filtering | `filter`, `mutate`, `distinct`, `count`, `na.rm` |
| [nycflights13](nycflights13/) | `nycflights13::flights` | NYC 2013 flights: carrier averages, busiest month, shortest routes, JFK daily distance, max delays | `group_by`, `summarise`, `distinct`, `max`, `mean` |

---

## 🛠️ Packages Used

| Package | Purpose |
|---------|---------|
| `tidyverse` | All core `dplyr` verbs and `readr` for CSV import |
| `openintro` | Provides the `fastfood` dataset |
| `nycflights13` | Provides the `flights` dataset |

---

## 📋 Concepts Covered

- `filter()` with single and compound conditions (`&`, `|`)
- `mutate()` for computed columns and conditional recoding with `ifelse()`
- `group_by()` + `summarise()` for grouped aggregations
- `arrange()` + `desc()` for sorted output
- `distinct()` to deduplicate after grouping or sorting
- `head()` / `tail()` for top-N results
- `na.rm = TRUE` — required when any column contains `NA`
- `as.data.frame()` — converting tibbles when rounding behaves unexpectedly
- `suppressPackageStartupMessages()` — required for CodeGrade submission
- Output formatting: required column names, rounding to two decimals, tibble vs. data frame

---

## ⚠️ CodeGrade Notes

- Never call `install.packages()` in a submitted `.R` script
- Use `suppressPackageStartupMessages(library(...))` for all package loads
- Use `suppressMessages(read_csv(...))` when loading CSV files
- Do not print results automatically — CodeGrade calls what it needs

---

> ⬆️ [Back to repo root](../README.md)
