# Fast Food Nutrition — Data Wrangling

> Five data manipulation exercises on the OpenIntro `fastfood` dataset covering calorie ranking, mean sugar, computed fat×sugar columns, and restaurant-level averages using `dplyr`.

![Category](https://img.shields.io/badge/Category-Data%20Wrangling-green)
![R](https://img.shields.io/badge/R-4.0%2B-blue?logo=r&logoColor=white)
![Packages](https://img.shields.io/badge/Packages-tidyverse%20%7C%20openintro-orange)
![Course](https://img.shields.io/badge/Course-DTSC%20650-lightgrey)

---

## 📌 Overview

A CodeGrade-graded assignment using the `openintro::fastfood` dataset — nutritional information for ~500 menu items across 8 fast food chains. Covers cross-restaurant filtering, computed columns, grouped averages, and counting rows meeting a condition.

---

## 📂 File Structure

```
data-wrangling/fastfood/
├── README.md
├── fastfood.R
└── fastfood_Assignment_Description_and_Building.Rmd
```

---

## ⚙️ Requirements

```r
install.packages(c("tidyverse", "openintro"))
```

The `fastfood` dataset is loaded from the `openintro` package — no CSV needed.

---

## 📋 Questions

| Q | Task | Output |
|---|------|--------|
| Q1 | Highest-calorie item at Burger King or Chick-Fil-A | Item name (tibble) |
| Q2 | Mean sugar for all Subway items | 1×1 data frame: `mean_sugar` |
| Q3 | Mean calories for all Taco Bell items | 1×1 data frame: `mean_calories` |
| Q4 | Top 3 items by fat × sugar computed column | 3-row tibble: restaurant, item, fatXsugar |
| Q5 | Count of restaurants where avg sat_fat > 10g | Single integer |

---

## 📊 Dataset — `openintro::fastfood`

Nutritional data for menu items from McDonald's, Chick-Fil-A, Sonic, Arby's, Burger King, Dairy Queen, Subway, and Taco Bell. Variables include `restaurant`, `item`, `calories`, `total_fat`, `sat_fat`, `sugar`, `sodium`, `protein`, `calcium`, and more.

---

## 💡 Key Concepts

- **`mutate()` for computed columns** — `fatXsugar = total_fat * sugar` creates a new column without modifying originals
- **`nrow()` on a filtered/grouped result** — efficient way to count rows matching a condition after `filter()` and `summarise()`
- **Case-sensitive restaurant names** — `'Mcdonalds'` not `'McDonald's'`; always check `unique(fastfood$restaurant)` first

---

## 🔗 References

- [openintro `fastfood` Dataset](https://www.openintro.org/data/index.php?data=fastfood)
- [dplyr Documentation](https://dplyr.tidyverse.org/)
