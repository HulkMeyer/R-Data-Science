# OpenIntro Lab — Introduction to Data

> An exploratory analysis of NYC flight data using `dplyr` and `ggplot2`, covering filtering, grouping, mutation, and scatterplots to answer questions about departure delays, on-time performance, and flight speed.

![Category](https://img.shields.io/badge/Category-Statistics-purple)
![R](https://img.shields.io/badge/R-4.0%2B-blue?logo=r&logoColor=white)
![Packages](https://img.shields.io/badge/Packages-tidyverse%20%7C%20openintro-orange)
![Course](https://img.shields.io/badge/Course-DTSC%20550-lightgrey)

---

## 📌 Overview

This OpenIntro Statistics lab uses the `nycflights` dataset from the Bureau of Transportation Statistics to practice core `dplyr` verbs and `ggplot2` visualizations. Students answer nine structured questions about departure delays by destination, on-time rates by airport, and the relationship between flight speed and distance.

---

## 📂 File Structure

```
statistics/openintro-intro-to-data/
├── README.md
└── OpenIntro_Lab_-_Introduction_to_Data.Rmd
```

---

## ⚙️ Requirements

```r
install.packages(c("dplyr", "ggplot2", "openintro"))
```

---

## 📋 Exercises Covered

| Exercise | Question | Key Function |
|----------|----------|-------------|
| 1 | Compare histograms at different binwidths for departure delay | `geom_histogram(binwidth=)` |
| 2 | Filter flights to SFO in February — how many? | `filter(dest, month)` |
| 3 | Distribution of arrival delays by origin airport | `group_by`, `summarise`, `IQR` |
| 4 | Most variable arrival delays by carrier (SFO Feb) | `group_by(carrier)`, `iqr_ad` |
| 5 | Best month to minimize departure delay — mean vs. median tradeoffs | `mutate`, `ifelse`, `dep_type` |
| 6 | Which NYC airport has best on-time departure rate? | `sum(dep_type == "on time") / n()` |
| 7 | Add `avg_speed` column (distance / air_time in hours) | `mutate(avg_speed = distance / (air_time/60))` |
| 8 | Scatterplot of avg_speed vs. distance | `geom_point()` |
| 9 | Replicate colored scatterplot for AA, DL, UA | `filter(carrier == c(...))`, `color = carrier` |

---

## 💡 Key Findings

- Flights from **LGA depart on time at a higher rate** than JFK or EWR
- The avg_speed vs. distance relationship appears **exponential** — longer flights fly faster
- **DL typically arrives early**, **UA averages ~2 min late** for SFO Feb flights; both are the most variable carriers

---

## 🔗 References

- [OpenIntro Statistics Lab](https://www.openintro.org/book/os/)
- [nycflights Dataset](https://cran.r-project.org/web/packages/nycflights13/)
