# Probability Distributions — Binomial and Normal

> A reference notebook covering R's four built-in probability distribution functions for both the binomial and normal distributions, with visualizations and worked examples of cumulative probability, quantile lookup, and random sampling.

![Category](https://img.shields.io/badge/Category-Statistics-purple)
![R](https://img.shields.io/badge/R-4.0%2B-blue?logo=r&logoColor=white)
![Packages](https://img.shields.io/badge/Packages-base%20R-orange)
![Course](https://img.shields.io/badge/Course-DTSC%20550-lightgrey)

---

## 📌 Overview

R provides four functions for every probability distribution it implements, following a consistent naming convention. This notebook demonstrates all four for the **binomial** and **normal** distributions with concrete examples, visualizations, and explanations of discrete vs. continuous behavior in quantile functions.

---

## 📂 File Structure

```
statistics/probability-distributions/
├── README.md
└── Probablility_Distributions_-_Binomial_and_Normal.Rmd
```

---

## ⚙️ Requirements

```r
# No external packages required — all base R
```

---

## 📋 Topics Covered

### The Four Distribution Functions (Pattern: `[d/p/q/r]dist`)

| Prefix | Function | Description |
|--------|----------|-------------|
| `d` | `dbinom` / `dnorm` | **Density** — probability of exactly x (binomial) or probability density (normal) |
| `p` | `pbinom` / `pnorm` | **Cumulative** — P(X ≤ x) |
| `q` | `qbinom` / `qnorm` | **Quantile** — value at which P(X ≤ value) = p |
| `r` | `rbinom` / `rnorm` | **Random** — generate n random values |

### Binomial Distribution
- `dbinom(x=4, size=20, prob=1/6)` — probability of rolling exactly 4 sixes in 20 rolls
- Summing `dbinom` values = equivalent to `pbinom`
- `pbinom(q=4, size=20, prob=1/6)` — P(X ≤ 4)
- `qbinom(p=0.75, size=20, prob=1/6)` — value below which 75% of outcomes fall
- **Discrete rounding** — `qbinom` returns whole numbers; the "gap" between 3 (56.6%) and 4 (76.8%) explains why 0.75 quantile returns 4
- `rbinom(n=100, ...)` — simulate 100 experiments
- Visualizing binomial PMF with `plot(x, y, type='h')`

### Normal Distribution
- `pnorm(q=0, mean=0, sd=1)` — P(Z ≤ 0) = 0.5 for standard normal
- Probability within 1 SD: `pnorm(1) - pnorm(-1)`
- `qnorm(p=0.1586, mean=0, sd=1)` — find the value corresponding to a given cumulative probability
- `dnorm()` gives **probability density**, not probability — use `pnorm` for actual probabilities

---

## 💡 Key Concepts

- **Binomial is discrete, normal is continuous** — this is why `qbinom` rounds to whole numbers while `qnorm` returns decimals
- **`pbinom` vs. summing `dbinom`** — both give the same result; `pbinom` is the efficient built-in version
- **Changing parameters shifts the shape** — `dbinom(x, 20, 1/2)` with p=0.5 produces a symmetric bell-like shape; `dbinom(x, 100, 1/2)` approaches the normal curve (Central Limit Theorem)

---

## 🔗 References

- [R Probability Distributions Documentation](https://stat.ethz.ch/R-manual/R-devel/library/stats/html/Distributions.html)
- [OpenIntro Statistics](https://www.openintro.org/book/os/)
