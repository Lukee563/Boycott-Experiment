library(dplyr)
library(ggplot2)

block1 <- read.csv("data/block1_effort_wage_2025-06-04.csv") # Effort Wage Game
block2 <- read.csv("data/block2_market_2025-06-04.csv") # Market Game

# Count how many chose "B" in each treatment group
b_counts <- block2 %>%
  filter(player.buyer_choice == "B") %>%
  group_by(subsession.treatment) %>%
  summarise(num_B_voters = n())


ggplot(b_counts, aes(x = subsession.treatment, y = num_B_voters)) +
  geom_col(fill = "deeppink3", width = 0.5) +
  labs(
    title = "Number of B Choices per Treatment Group",
    x = "Treatment Group",
    y = "Number of B Choices"
  ) +
  theme_minimal(base_size = 14) +
  theme(
    plot.title = element_text(face = "bold", hjust = 0.5, size = 16),
    axis.title.x = element_text(face = "bold"),
    axis.title.y = element_text(face = "bold"),
    panel.grid.major.y = element_line(color = "gray80"),
    panel.grid.minor = element_blank(),
    axis.text = element_text(color = "black")
  ) +
  geom_text(aes(label = num_B_voters), vjust = -0.5, size = 5)


block2 %>%
  mutate(chose_B = player.buyer_choice == "B") %>%
  group_by(subsession.treatment) %>%
  summarise(
    B_rate = mean(chose_B, na.rm = TRUE),
    n = n()
  )

# Logicistic Regression Setup
block2$chose_B <- ifelse(block2$player.buyer_choice == "B", 1, 0)

# Model
model1 <- glm(chose_B ~ subsession.treatment, data = block2, family = "binomial")
summary(model1)

# Intercept = T0
logit_T0 <- -1.9459
logit_T1 <- -1.9459 + 3.0445
logit_T2 <- -1.9459 + 3.2809

# Convert to probabilities
prob_T0 <- plogis(logit_T0)  # ≈ 0.125
prob_T1 <- plogis(logit_T1)  # ≈ 0.70
prob_T2 <- plogis(logit_T2)  # ≈ 0.74

