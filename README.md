# 📊 r-data-science

A curated collection of R projects and assignments spanning data wrangling, statistical analysis, probability, regression modeling, and a capstone public health study. Each project lives in its own folder with its own README and is designed to be self-contained and reproducible.

![R](https://img.shields.io/badge/R-4.0%2B-blue?logo=r&logoColor=white)
![License](https://img.shields.io/badge/License-MIT-green)
![Status](https://img.shields.io/badge/Status-Active-brightgreen)
![Projects](https://img.shields.io/badge/Projects-15%2B-orange)

---

## 📁 Repository Structure

```
r-data-science/
│
├── README.md
├── .gitignore
├── CONTRIBUTING.md
│
├── r-fundamentals/
│   ├── r-intro-labs/
│   └── base-plots/
│
├── statistics/
│   ├── probability-distributions/
│   ├── openintro-intro-to-data/
│   ├── openintro-probability/
│   └── openintro-normal-distribution/
│
├── data-wrangling/
│   ├── pizza/
│   ├── fastfood/
│   ├── msleep/
│   └── nycflights13/
│
├── statistical-modeling/
│   ├── pizza-stats/
│   ├── fastfood-stats/
│   ├── msleep-stats/
│   └── nycflights13-stats/
│
└── capstone/
    └── brfss2015-public-health/
```

---

## 🗂️ Project Index

### 🔰 R Fundamentals

| Project | Description | Key Concepts |
|---------|-------------|--------------|
| [r-intro-labs](r-fundamentals/r-intro-labs/) | Four intro labs: variables, vectors, data frames, descriptive stats | Variables, indexing, factors, `mean`, `var`, `summary` |
| [base-plots](r-fundamentals/base-plots/) | Base R plotting reference: scatter, histogram, stem-leaf, boxplot | `plot()`, `hist()`, `boxplot()`, `stem()`, tidyverse `msleep` |

---

### 📐 Statistics

| Project | Description | Key Concepts |
|---------|-------------|--------------|
| [probability-distributions](statistics/probability-distributions/) | Binomial and normal distribution functions in R | `dbinom`, `pbinom`, `qbinom`, `rbinom`, `pnorm`, `qnorm` |
| [openintro-intro-to-data](statistics/openintro-intro-to-data/) | NYC flights EDA: filtering, grouping, mutation, scatterplots | `filter`, `mutate`, `summarise`, `ggplot2`, `nycflights` |
| [openintro-probability](statistics/openintro-probability/) | Hot hand fallacy: Kobe Bryant streaks vs. simulated independent shooter | `sample`, `set.seed`, `calc_streak`, `geom_bar` |
| [openintro-normal-distribution](statistics/openintro-normal-distribution/) | Normal distribution testing on fast food calorie data | `rnorm`, `pnorm`, `qqnormsim`, `stat_function`, `dnorm` |

---

### 🔧 Data Wrangling

| Project | Description | Key Concepts |
|---------|-------------|--------------|
| [pizza](data-wrangling/pizza/) | Pizza delivery data: filtering, mutating, grouping, variance | `filter`, `mutate`, `group_by`, `summarise`, `var` |
| [fastfood](data-wrangling/fastfood/) | Fast food nutrition: sorting, filtering, computed columns | `arrange`, `desc`, `mutate`, `head`, `nrow` |
| [msleep](data-wrangling/msleep/) | Mammal sleep patterns: ratios, conservation status, body/brain weight | `filter`, `mutate`, `count`, `distinct`, `arrange` |
| [nycflights13](data-wrangling/nycflights13/) | NYC flight data: carrier stats, distance ranking, delay analysis | `group_by`, `summarise`, `distinct`, `max`, `mean` |

---

### 📈 Statistical Modeling

| Project | Description | Key Concepts |
|---------|-------------|--------------|
| [pizza-stats](statistical-modeling/pizza-stats/) | Pizza: correlation matrices, logistic regression, multiple regression, AIC | `cor`, `glm`, `lm`, `lm.beta`, `AIC` |
| [fastfood-stats](statistical-modeling/fastfood-stats/) | Fast food: correlation, logistic regression, standardized regression | `cor`, `glm`, `lm.beta`, `AIC` |
| [msleep-stats](statistical-modeling/msleep-stats/) | Mammal sleep: `cor.test`, correlation matrix, OLS regression, AIC, logistic | `cor.test`, `cor`, `lm`, `glm`, `AIC`, `drop_na` |
| [nycflights13-stats](statistical-modeling/nycflights13-stats/) | Flights: outlier removal, correlation, simple/multiple regression, standardized | `quantile`, `cor.test`, `lm`, `lm.beta`, `summary` |

---

### 🏁 Capstone

| Project | Description | Key Concepts |
|---------|-------------|--------------|
| [brfss2015-public-health](capstone/brfss2015-public-health/) | CDC behavioral health survey: full EDA, ANOVA, regression pipeline, model selection | `aov`, `TukeyHSD`, `lm`, `glm`, `ols_step_all_possible`, `ggplot2` |

---

## 🚀 Getting Started

### Prerequisites

- R 4.0 or higher
- RStudio (recommended)
- Required packages installed from CRAN

### Running a Project

```r
# In RStudio, open the project folder and set working directory:
setwd("path/to/project-folder")

# Install required packages (one time only, from Console — never in submitted scripts):
install.packages(c("tidyverse", "openintro", "nycflights13", "lm.beta", "psych", "Hmisc"))

# Run the .R script or knit the .Rmd file
source("project_name.R")
```

---

## 🛠️ Common Packages

| Package | Purpose |
|---------|---------|
| `tidyverse` | Core data manipulation and visualization (`dplyr`, `ggplot2`, `readr`) |
| `openintro` | OpenIntro Statistics datasets (`fastfood`, `kobe_basket`, `nycflights`) |
| `nycflights13` | NYC 2013 flight data |
| `lm.beta` | Standardized regression coefficients |
| `psych` | `describe()` for comprehensive descriptive statistics |
| `Hmisc` | Alternative `describe()` and statistical utilities |
| `olsrr` | OLS regression model selection (`ols_step_all_possible`) |
| `lsr` | Learning Statistics with R utilities |

---

## 📬 Contributing

See [CONTRIBUTING.md](CONTRIBUTING.md) for guidelines.

---

## 📄 License

This repository is licensed under the [MIT License](LICENSE).

---

> Built and maintained by [Colt Meyer](https://github.com/YOUR_USERNAME)
