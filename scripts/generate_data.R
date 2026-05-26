library(tidyverse)
library(here)

set.seed(123)

dir.create(here("data"), recursive = TRUE, showWarnings = FALSE)

ids <- paste0("id", stringr::str_pad(1:20, width = 2, pad = "0"))
periods <- as.character(1:5)

df_models <- expand_grid(
  id = ids,
  period = periods
) %>%
  mutate(
    group = if_else(as.numeric(str_extract(id, "\\d+")) <= 10, "A", "B"),
    period_num = as.numeric(period),
    time_observed = round(runif(n(), min = 8, max = 30), 2),
    
    rank_prop = runif(n(), min = 0, max = 1),
    rank_z = as.numeric(scale(rank_prop)),
    
    saturation = rnorm(n(), mean = 0.55 + 0.12 * rank_z, sd = 0.08),
    rg = rnorm(n(), mean = 0.10 + 0.08 * rank_z, sd = 0.05),
    by = rnorm(n(), mean = 0.05 - 0.04 * rank_z, sd = 0.05),
    luminance = rnorm(n(), mean = 0.45, sd = 0.07),
    
    saturation_z = as.numeric(scale(saturation)),
    rg_z = as.numeric(scale(rg)),
    by_z = as.numeric(scale(by)),
    luminance_z = as.numeric(scale(luminance)),
    
    behavior_rate = exp(
      0.3 +
        0.55 * rank_z +
        0.35 * rg_z +
        0.08 * period_num
    ),
    
    behavior_count = rpois(
      n(),
      lambda = behavior_rate * time_observed / 10
    )
  ) %>%
  select(
    id, group, period, period_num, time_observed,
    rank_prop, rank_z,
    saturation, rg, by, luminance,
    saturation_z, rg_z, by_z, luminance_z,
    behavior_count
  )

write_csv(df_models, here("data", "simulated_df_models.csv"))

df_models
