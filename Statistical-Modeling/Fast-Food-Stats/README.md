# Fast Food Nutrition — Statistical Modeling

> Correlation matrices, binary logistic regression, AIC model comparison, and standardized multiple regression applied to fast food nutritional data across McDonald's, Subway, Sonic, Arby's, and Taco Bell.

![Category](https://img.shields.io/badge/Category-Statistical%20Modeling-red)
![R](https://img.shields.io/badge/R-4.0%2B-blue?logo=r&logoColor=white)
![Packages](https://img.shields.io/badge/Packages-tidyverse%20%7C%20openintro%20%7C%20lm.beta-orange)
![Course](https://img.shields.io/badge/Course-DTSC%20650-lightgrey)

---

## 📌 Overview

Statistical modeling companion to the fast food wrangling assignment. Covers correlation among nutritional variables, logistic regression predicting restaurant chain membership, AIC-based predictor selection, and standardized coefficients to identify the strongest predictors of fat content.

---

## 📂 File Structure

```
statistical-modeling/fastfood-stats/
├── README.md
├── fastfoodStats.R
└── fastfoodStats_Assignment_Description_and_Building.Rmd
```

---

## ⚙️ Requirements

```r
install.packages(c("tidyverse", "openintro", "lm.beta"))
```

---

## 📋 Questions

| Q | Task | Method |
|---|------|--------|
| Q1 | Correlation matrix: calories, total_fat, sugar, calcium for Sonic / Subway / Taco Bell | `cor()` after `na.omit()` |
| Q2 | Logistic regression: predict McDonald's (1) vs. Subway (0) from calories, sodium, protein | `glm(..., binomial())` — coefficients |
| Q3 | Remove sodium; compare AIC of full vs. reduced model — which is better? | `AIC()` |
| Q4 | Multiple regression: predict calories from sat_fat, fiber, sugar — standardized coefficient for sat_fat | `lm()` + `lm.beta()` |
| Q5 | Multiple regression: predict total_fat from cholesterol, total_carb, restaurant (McD/Arby's/Sonic) — standardized cholesterol coefficient | `lm()` + `lm.beta()` |

---

## 💡 Key Concepts

- **`na.omit()` before `cor()`** — the fastfood dataset has `NA` values in calcium and other columns; correlation matrices require complete cases
- **Binary encoding with `mutate(ifelse())`** — `restaurant = ifelse(restaurant == 'Subway', 0, 1)` converts the categorical restaurant column to a binary numeric for logistic regression
- **Standardized vs. unstandardized coefficients** — `lm()` gives raw coefficients in original units; `lm.beta()` gives standardized (beta) coefficients for cross-predictor comparison
- **`$standardized.coefficients[2]`** — indexing into the `lm.beta` object to extract a specific predictor's standardized coefficient

---

## 🔗 References

- [openintro fastfood Dataset](https://www.openintro.org/data/index.php?data=fastfood)
- [lm.beta Package](https://cran.r-project.org/web/packages/lm.beta/)
