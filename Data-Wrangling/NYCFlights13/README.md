# NYC Flights 2013 — Data Wrangling

> Five data manipulation exercises on the `nycflights13::flights` dataset covering carrier distance averages, busiest month, shortest routes, daily mean distance from JFK, and maximum arrival delays by destination.

![Category](https://img.shields.io/badge/Category-Data%20Wrangling-green)
![R](https://img.shields.io/badge/R-4.0%2B-blue?logo=r&logoColor=white)
![Packages](https://img.shields.io/badge/Packages-tidyverse%20%7C%20nycflights13-orange)
![Course](https://img.shields.io/badge/Course-DTSC%20650-lightgrey)

---

## 📌 Overview

A CodeGrade-graded assignment using the `nycflights13::flights` dataset — 336,776 domestic flights departing NYC in 2013. Covers grouped averages, peak-month ranking, route deduplication, day-level JFK distance, and arrival delay extremes by destination.

---

## 📂 File Structure

```
data-wrangling/nycflights13/
├── README.md
├── nycflights13.R
└── nycflights13_Assignment_Description_and_Building.Rmd
```

---

## ⚙️ Requirements

```r
install.packages(c("tidyverse", "nycflights13"))
```

The `flights` dataset loads automatically with `library(nycflights13)`.

---

## 📋 Questions

| Q | Task | Output |
|---|------|--------|
| Q1 | Mean distance for carriers AA, EV, and FL | Data frame: carrier, avg_dis |
| Q2 | Month with the highest number of flights | Tibble: month, NumFlights |
| Q3 | Five shortest unique routes (origin → dest) | Tibble: origin, dest, min_dist |
| Q4 | Top 5 days by mean flight distance from JFK | Data frame: month, day, mean_distance |
| Q5 | Maximum arrival delay for flights to ATL and BOS | Summarised by dest |

---

## 📊 Dataset — `nycflights13::flights`

All domestic flights departing EWR, JFK, or LGA in 2013. Key variables: `year`, `month`, `day`, `dep_delay`, `arr_delay`, `carrier`, `flight`, `origin`, `dest`, `air_time`, `distance`.

---

## 💡 Key Concepts

- **`distinct()` after `arrange()`** — essential for shortest-route queries to avoid duplicate origin/dest pairs at different times
- **`group_by()` + `mutate()` vs. `summarise()`** — `mutate()` adds a computed column per row while keeping all rows; `summarise()` collapses each group to one row
- **`na.rm = TRUE` in `max()`** — `arr_delay` contains `NA` values for cancelled flights; always include `na.rm` for delay calculations

---

## 🔗 References

- [nycflights13 Package](https://cran.r-project.org/web/packages/nycflights13/)
- [R for Data Science — Chapter 5: Data Transformation](https://r4ds.had.co.nz/transform.html)
