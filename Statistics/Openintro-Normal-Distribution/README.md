# OpenIntro Lab — Normal Distribution

> Testing normality of fast food calorie and sodium data using histograms with overlaid normal curves, Q-Q plots, simulation comparison, and `pnorm` probability calculations for McDonald's and Dairy Queen menu items.

![Category](https://img.shields.io/badge/Category-Statistics-purple)
![R](https://img.shields.io/badge/R-4.0%2B-blue?logo=r&logoColor=white)
![Packages](https://img.shields.io/badge/Packages-tidyverse%20%7C%20openintro-orange)
![Course](https://img.shields.io/badge/Course-DTSC%20550-lightgrey)

---

## 📌 Overview

This lab evaluates whether fast food nutritional data follows a normal distribution using four complementary techniques: density histograms with fitted normal curves, Q-Q plots, simulated normal comparisons, and theoretical vs. empirical probability calculations. McDonald's and Dairy Queen are compared throughout.

---

## 📂 File Structure

```
statistics/openintro-normal-distribution/
├── README.md
└── OpenIntro_-_Lab_-_Normal_Distrobution.Rmd
```

---

## ⚙️ Requirements

```r
install.packages(c("tidyverse", "openintro"))
```

---

## 📋 Exercises Covered

| Exercise | Topic | Key Code |
|----------|-------|----------|
| 1 | Visualize calories vs. cal_fat for McDonald's and DQ | `geom_point()` |
| 2 | Histogram + normal curve overlay for cal_fat | `geom_histogram(aes(y=..density..))` + `stat_function(fun=dnorm)` |
| 3 | Q-Q plot for real data | `geom_line(stat="qq")` |
| 4 | Simulate normal data; compare histogram to real | `rnorm(n, mean, sd)` |
| 5 | Test McDonald's total calories for normality | Histogram + simulated normal overlay |
| 6 | Theoretical vs. empirical probability for DQ calories | `pnorm(600, mean, sd)` vs. `filter + n()/nrow()` |
| 7 | Which restaurant's sodium is closest to normal? | `ggplot` grouped by restaurant |

---

## 💡 Key Findings

- Neither McDonald's nor Dairy Queen cal_fat data is truly normally distributed
- **Dairy Queen's** simulated vs. actual distribution are closer, suggesting a more normal menu distribution
- **McDonald's** actual calorie distribution is **right-skewed** relative to a normal simulation
- Theoretical (`pnorm`) and empirical (filtered proportion) probabilities for DQ calories **do not agree closely**, further evidence against normality

---

## 💡 Key Concepts

- **`aes(y = ..density..)`** — rescales histogram bars to density so they can be overlaid with a probability density function
- **`stat_function(fun = dnorm, args = c(mean, sd))`** — draws the fitted normal curve over the histogram
- **`qqnormsim()`** — OpenIntro function that generates multiple simulated Q-Q plots alongside the real data for visual comparison
- **`set.seed(100)`** — ensures the simulated normal samples are reproducible across knits
- **Theoretical vs. empirical probability** — `pnorm` gives the mathematical prediction; filtering and dividing gives the actual proportion in the data

---

## 🔗 References

- [OpenIntro Statistics](https://www.openintro.org/book/os/)
- [fastfood Dataset (openintro)](https://www.openintro.org/data/index.php?data=fastfood)
