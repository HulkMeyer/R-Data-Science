# OpenIntro Lab — Probability & The Hot Hand

> An investigation of the "hot hand" fallacy using Kobe Bryant's 2009 NBA Finals shooting data, comparing his real streak distribution against a simulated independent shooter using R's `sample()` function.

![Category](https://img.shields.io/badge/Category-Statistics-purple)
![R](https://img.shields.io/badge/R-4.0%2B-blue?logo=r&logoColor=white)
![Packages](https://img.shields.io/badge/Packages-tidyverse%20%7C%20openintro-orange)
![Course](https://img.shields.io/badge/Course-DTSC%20550-lightgrey)

---

## 📌 Overview

This OpenIntro lab explores probability through simulation. Students compute Kobe Bryant's shooting streak lengths from the 2009 NBA Finals, simulate a fair coin, an unfair coin, and an independent shooter at 45% accuracy, then compare the real and simulated streak distributions to evaluate the hot hand hypothesis.

---

## 📂 File Structure

```
statistics/openintro-probability/
├── README.md
└── OpenIntro_Lab_-_Probability.Rmd
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
| 1 | Streak length definition — hits and misses | `calc_streak(kobe_basket$shot)` |
| 2 | Distribution of Kobe's streak lengths + bar chart | `geom_bar()` |
| 3 | Simulate unfair coin (20% heads) with `set.seed` | `sample(outcomes, size=100, prob=c(0.2,0.8))` |
| 4 | Simulate independent shooter at 45% | `sample(c("H","M"), size=133, prob=c(0.45,0.55))` |
| 5 | Compute streaks for simulated shooter | `calc_streak(sim_basket)` |
| 6 | Distribution of simulated streaks + bar chart | `geom_bar()` |
| 7 | Would a second simulation be identical? | Conceptual — same expected counts, different streak patterns |
| 8 | Compare Kobe vs. independent shooter streaks | `table(kobe_basket$shot)` |

---

## 💡 Key Findings

- Kobe's longest streak: **4 made shots** (1 occurrence); most common streak: **1 shot** (24 occurrences)
- Independent shooter at 45%: longest streak **4** (4 occurrences); most common **1** (20 occurrences)
- Kobe made **58 shots**; simulated shooter made **60 shots** across 133 attempts
- **Conclusion:** The data does not support the hot hand model for Kobe in the 2009 NBA Finals — his streak distribution is consistent with independent shot outcomes

---

## 💡 Key Concepts

- **`set.seed()`** — ensures reproducible random samples; essential for Rmd files that re-run on every knit
- **`calc_streak()`** — OpenIntro helper that converts a vector of H/M shots into streak lengths
- **`replace = TRUE`** — required for sampling with replacement (each shot is independent)
- **Hot hand fallacy** — the cognitive bias of perceiving streaks in random sequences as evidence of momentum

---

## 🔗 References

- [OpenIntro Statistics](https://www.openintro.org/book/os/)
- [Gilovich, Vallone & Tversky (1985) — Original Hot Hand Paper](https://doi.org/10.1016/0010-0285(85)90010-6)
