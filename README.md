# Reproducible Reporting Workflow

This repository demonstrates a reproducible analytical reporting workflow in R and LaTeX. The project illustrates how simulated longitudinal datasets can be processed, modeled, visualized, and automatically exported into publication-ready outputs using a fully reproducible pipeline.

The workflow emphasizes:
- reproducible project structure,
- automated statistical reporting,
- publication-style figure generation,
- LaTeX-ready table export,
- and mixed-effects modeling workflows.

Although inspired by scientific research pipelines, the analytical framework demonstrated here is broadly applicable to quantitative reporting and computational analysis workflows across research and data-driven domains.

---

## Repository Structure

```text
reproducible-reporting-workflow/
│
├── data/
│   └── simulated_df_models.csv
│
├── figures/
│   ├── behavior_by_rank.pdf
│   └── predicted_rg_effect.pdf
│
├── tables/
│   └── model_summary.tex
│
├── output/
│   └── model_coefficients.csv
│
├── scripts/
│   ├── generate_data.R
│   └── analysis_workflow.Rmd
│
├── reproducible-reporting-workflow.Rproj
└── README.md
```

---

## Workflow Overview

### 1. Simulated Data Generation

A simulated longitudinal dataset is generated to demonstrate reproducible statistical workflows without requiring access to original research data.

The dataset includes:
- repeated observations across sampling periods,
- quantitative predictor variables,
- standardized covariates,
- and count-based behavioral outcomes.

---

### 2. Exploratory Visualization

The workflow generates publication-style visualizations for:
- longitudinal trends,
- variable relationships,
- and model-predicted effects.

Figures are automatically exported to the `figures/` directory.

---

### 3. Mixed-Effects Modeling

Generalized linear mixed models (GLMMs) are fit using negative binomial distributions to account for repeated observations and count-based response variables.

The workflow demonstrates:
- mixed-effects modeling,
- offset terms,
- longitudinal structure,
- and model interpretation.

---

### 4. Automated Reporting Outputs

The analysis automatically exports:
- LaTeX-ready statistical tables,
- publication-ready figures,
- and model coefficient summaries.

This structure supports integration into fully reproducible scientific reports and manuscripts.

---

## Methods Demonstrated

### Data Wrangling
- Reproducible workflow structure
- Feature engineering
- Longitudinal data preparation

### Statistical Modeling
- Generalized linear mixed models (GLMMs)
- Negative binomial regression
- Longitudinal analysis
- Random-effects modeling

### Visualization
- Exploratory data visualization
- Predicted effect plots
- Publication-style figure generation

### Reporting
- Automated table export
- LaTeX integration
- Reproducible analytical pipelines

---

## Software and Packages

Primary packages used include:

- tidyverse
- data.table
- glmmTMB
- modelsummary
- broom.mixed
- ggeffects
- kableExtra
- here

---

## Running the Workflow

Recommended execution order:

1. `generate_data.R`
2. `analysis_workflow.Rmd`

---

## Notes

- All datasets included in this repository are simulated.
- The repository is intended as a reproducible portfolio workflow demonstrating computational analysis and automated reporting practices.
- Original research data are not included.