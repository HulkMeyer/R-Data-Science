# 📐 Statistics

> Probability theory, distribution functions, and exploratory statistical analysis — working through OpenIntro Statistics labs and distribution reference notebooks using real datasets.

---

## 📂 Projects

| Folder | Description | Key Skills |
|--------|-------------|------------|
| [probability-distributions](probability-distributions/) | R's four built-in distribution functions for binomial and normal distributions with worked examples and visualizations | `dbinom`, `pbinom`, `qbinom`, `rbinom`, `dnorm`, `pnorm`, `qnorm`, `rnorm` |
| [openintro-intro-to-data](openintro-intro-to-data/) | Exploratory analysis of NYC flight data: filtering, grouping, mutation, and scatterplots | `filter`, `mutate`, `summarise`, `group_by`, `ggplot2` |
| [openintro-probability](openintro-probability/) | Hot hand fallacy investigation using Kobe Bryant's 2009 NBA Finals shooting data vs. a simulated independent shooter | `sample`, `set.seed`, `calc_streak`, `geom_bar` |
| [openintro-normal-distribution](openintro-normal-distribution/) | Normality testing on fast food calorie and sodium data using histograms, Q-Q plots, simulation, and `pnorm` probability calculations | `dnorm`, `pnorm`, `rnorm`, `stat_function`, `qqnormsim` |

---

## 🛠️ Packages Used

| Package | Purpose |
|---------|---------|
| `tidyverse` | Data manipulation and `ggplot2` visualization |
| `openintro` | OpenIntro datasets: `fastfood`, `kobe_basket`, `nycflights` |

---

## 📋 Concepts Covered

- The `d / p / q / r` naming convention for R distribution functions
- Discrete (binomial) vs. continuous (normal) distribution behavior
- Cumulative probability with `pbinom` and `pnorm`
- Quantile lookup and why `qbinom` rounds to whole numbers
- Reproducible simulation with `set.seed()` and `sample()`
- Testing normality: density histograms, Q-Q plots, and simulated normal overlays
- Theoretical vs. empirical probability comparison
- Streak analysis and the hot hand fallacy

---

> ⬆️ [Back to repo root](../README.md)
