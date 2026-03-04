# Base R Plots — Plotting Fundamentals Reference

> A concise reference script demonstrating base R and tidyverse plotting tools: scatter plots, histograms, stem-and-leaf plots, and box plots using the Fibonacci sequence and the `msleep` mammal sleep dataset.

![Category](https://img.shields.io/badge/Category-R%20Fundamentals-blue)
![R](https://img.shields.io/badge/R-4.0%2B-blue?logo=r&logoColor=white)
![Packages](https://img.shields.io/badge/Packages-tidyverse-orange)

---

## 📌 Overview

A quick-reference plotting script covering the most common base R visualization functions. Demonstrates how to customize plots with titles, axis labels, color, point shape, line type, and size — and introduces tidyverse's `msleep` dataset for histogram, stem-and-leaf, and boxplot examples.

---

## 📂 File Structure

```
r-fundamentals/base-plots/
├── README.md
└── Plots.R
```

---

## ⚙️ Requirements

```r
install.packages("tidyverse")
```

---

## 🚀 How to Run

```r
setwd("path/to/base-plots")
source("Plots.R")
```

---

## 📋 Topics Covered

**Base R `plot()`:**
- Simple scatter plot from a numeric vector (Fibonacci)
- `main` — plot title
- `sub` — subtitle
- `xlab` / `ylab` — axis labels
- `type = "b"` — both points and lines
- `col` — color
- `pch` — point character (shape); `pch = 19` is a solid circle
- `cex` — character expansion (point size)
- `lty` — line type (dashed, solid, etc.)
- `lwd` — line width

**`msleep` Dataset (tidyverse):**
- `hist()` — frequency histogram of total sleep hours
- `hist(breaks = 20)` — finer bin control
- `stem()` — stem-and-leaf plot (console output)
- `boxplot()` — five-number summary (min, Q1, median, Q3, max)

---

## 💡 Key Concepts

- **`pch` values** — R has 25 built-in point shapes; `pch = 19` (filled circle) is the most commonly used in publications
- **`type` parameter** — `"p"` (points only), `"l"` (lines only), `"b"` (both), `"h"` (histogram-style vertical lines)
- **`stem()`** — outputs to the console, not a plot window; useful for quick distribution checks on small datasets
- **Boxplot five-number summary** — minimum, 25th percentile (Q1), median, 75th percentile (Q3), maximum; outliers shown as points beyond whiskers

---

## 🔗 References

- [Base R `plot()` Documentation](https://www.rdocumentation.org/packages/graphics/versions/3.6.2/topics/plot)
- [`msleep` Dataset (ggplot2)](https://ggplot2.tidyverse.org/reference/msleep.html)
