# Contributing to r-data-science

Thanks for your interest in contributing! Here's how to get involved.

## Reporting Issues

- Use GitHub Issues to report bugs or suggest improvements
- Include the project folder name, R version, and a reproducible example

## Pull Requests

1. Fork the repo and create a branch: `git checkout -b feature/your-feature`
2. Make your changes, following the style guidelines below
3. Test that your script runs cleanly with no errors
4. Submit a pull request with a clear description of what changed

## Style Guidelines

- Use `snake_case` for variable and file names
- Use `suppressPackageStartupMessages(library(...))` for all package loads
- Round all float/dbl outputs to two decimal places unless otherwise specified
- Use `as.data.frame()` when tibble rounding behaves unexpectedly
- Comment your code generously — especially when interpreting codebook values
- Never `install.packages()` inside a script

## Project Structure

Each project folder should contain:
- `README.md` — overview, file list, questions, key concepts
- The `.R` script (primary submission file)
- The `.Rmd` file (if applicable — development/notes version)
- Any required local data files (`.csv`, `.xlsx`, `.dat`)

## Package Installation

Always install packages from the Console, never in submitted scripts:
```r
install.packages("tidyverse")
```
