# BRFSS 2015 — Public Health Capstone

> A full statistical analysis pipeline applied to the CDC's 2015 Behavioral Risk Factor Surveillance System survey — covering data cleaning, descriptive statistics, regression modeling, ANOVA with post-hoc testing, and exploratory analysis of veteran mental health outcomes.

![Category](https://img.shields.io/badge/Category-Capstone-gold)
![R](https://img.shields.io/badge/R-4.0%2B-blue?logo=r&logoColor=white)
![Packages](https://img.shields.io/badge/Packages-tidyverse%20%7C%20psych%20%7C%20Hmisc%20%7C%20olsrr%20%7C%20lsr-orange)
![Course](https://img.shields.io/badge/Course-DTSC%20650-lightgrey)
![Data](https://img.shields.io/badge/Data-CDC%20BRFSS%202015-lightgrey)

---

## 📌 Overview

The final capstone project for DTSC 650, applying the full course toolkit to a large federal health dataset. The BRFSS is the CDC's annual telephone survey of U.S. adults on health behaviors and conditions. This project answers nine structured analytical questions and then performs an open-ended four-variable exploratory analysis predicting mental health outcomes from veteran status, marital status, and exercise type.

> ⚠️ **Data Note:** `BRFSS2015_650.csv` is not included in this repo due to file size. Download from [Kaggle — CDC BRFSS](https://www.kaggle.com/cdc/behavioral-risk-factor-surveillance-system) and place in the project folder before running.

---

## 📂 File Structure

```
capstone/brfss2015-public-health/
├── README.md
├── Final_Project_BRFSS2015.Rmd
├── Final_Project_Instructions.pdf
├── codebook15_llcp.pdf          ← Variable reference (required for interpretation)
└── BRFSS2015_650.csv            ← Not included — download separately
```

---

## ⚙️ Requirements

```r
install.packages(c("tidyverse", "Hmisc", "olsrr", "psych", "lsr"))
# Note: "carat" listed in instructions refers to "caret" — install if needed
```

---

## 📋 Questions Summary

### Part 1 — Structured Questions

| Q | Task | Key Variables | Method |
|---|------|---------------|--------|
| Q1 | Count respondents reporting excellent general health | `GENHLTH == 1` | `sum()` |
| Q2 | Max adult women in households where someone had a stroke | `NUMWOMEN`, `CVDSTRK3` | `filter` + `summarise(max())` |
| Q3 | Mean and SD of mental health days by caregiver personal care status | `MENTHLTH`, `CRGVPERS` | `group_by` + `summarise` |
| Q4 | Median age of diabetes diagnosis for Pennsylvania residents | `X_STATE == 42`, `DIABAGE2` | `filter` + `summarise(median())` |
| Q5 | Regression: predict mental health days from marital status | `MENTHLTH ~ MARITAL` | `lm()` + `summary()` |
| Q6 | Mean mental health days by marital status | `MENTHLTH`, `MARITAL` | `group_by` + `summarise(mean_mental)` |
| Q7 | Mean and SD of mental health by stroke status — uninsured only | `HLTHPLN1 == 2`, `CVDSTRK3`, `MENTHLTH` | `group_by` + `summarise` |
| Q8 | ANOVA: weekly exercise frequency by marital status + Tukey HSD | `EXEROFT1 ~ MARITAL` | `aov()` + `TukeyHSD()` |
| Q9 | Top 6 exercise types by variance in weekly drinking days — men only | `SEX == 1`, `ALCDAY5`, `EXRACT11` | `group_by` + `var()` + `arrange(desc)` |

### Part 2 — Open-Ended Exploratory Analysis

**Variables chosen:** `VETERAN3`, `MENTHLTH`, `MARITAL`, `EXRACT11`

| Step | Task |
|------|------|
| Q10 | Address special codes: `MENTHLTH == 88` → 0 (no bad days); remove refused/don't-know responses |
| Q11 | Remove outliers: filter each variable to valid response ranges; explained in comments |
| Q12 | EDA visualizations: boxplots and histograms for all four variables using `ggplot2` |
| Q13 | Descriptive statistics: `head()`, `summary()`, `psych::describe()` |
| Q14 | Model selection: OLS regression predicting `MENTHLTH` from `VETERAN3 + MARITAL + EXRACT11`; `ols_step_all_possible()` confirms full model is best by R² and Adj. R² |

---

## 💡 Key Concepts

- **BRFSS coding conventions** — many variables use non-intuitive codes: `88` = "None / no bad days", `77` = "Don't know", `99` = "Refused"; always consult `codebook15_llcp.pdf` before filtering
- **`replace(col, col == 88, 0)`** — replaces special "none" codes with 0 before computing means or filtering by range
- **`aov()` + `TukeyHSD()`** — one-way ANOVA tests whether group means differ; Tukey's HSD post-hoc identifies *which* pairs differ while controlling family-wise error rate
- **`ols_step_all_possible()`** — exhaustive model selection from `olsrr`; evaluates all possible predictor subsets and ranks by R², Adj. R², AIC, and other criteria
- **`between(x, low, high)`** — tidyverse helper for range filtering; cleaner than `x >= low & x <= high`
- **Veteran binary encoding** — `VETERAN3`: 1 = Yes, 2 = No; recoded to 1/0 before regression

---

## 📊 Dataset

The **2015 Behavioral Risk Factor Surveillance System (BRFSS)** is an annual CDC telephone survey of ~400,000 U.S. adults on health behaviors, chronic conditions, and preventive service use. The course subset (`BRFSS2015_650.csv`) contains a selection of variables relevant to mental health, exercise, demographics, and health coverage.

- **Source:** [Kaggle — CDC BRFSS](https://www.kaggle.com/cdc/behavioral-risk-factor-surveillance-system)
- **Codebook:** `codebook15_llcp.pdf` — required to interpret variable names and response codes

---

## 🔗 References

- [CDC BRFSS Overview](https://www.cdc.gov/brfss/index.html)
- [olsrr Package](https://cran.r-project.org/web/packages/olsrr/)
- [TukeyHSD Documentation](https://www.rdocumentation.org/packages/stats/versions/3.6.2/topics/TukeyHSD)
