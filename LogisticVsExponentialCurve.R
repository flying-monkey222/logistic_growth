# Load library
install.packages("ggplot2")
library(ggplot2)

# Define parameters
N0 <- 978.1            # Initial population size
r <- 0.01004           # Growth rate
K <- 5.979e10          # Carrying capacity
time <- seq(0, 5000, by = 10)  # Time points from 0 to 5000 minutes

# Exponential growth function
exponential_growth <- function(t, N0, r) {
  N0 * exp(r * t)
}

# Logistic growth function
logistic_growth <- function(t, N0, r, K) {
  (K * N0 * exp(r * t)) / (K - N0 + N0 * exp(r * t))
}

# Calculate population sizes
exp_growth <- sapply(time, exponential_growth, N0 = N0, r = r)
log_growth <- sapply(time, logistic_growth, N0 = N0, r = r, K = K)

# Combine into a data frame for plotting
growth_data <- data.frame(
  Time = time,
  Exponential = exp_growth,
  Logistic = log_growth
)

# Create the plot
growth_plot <- ggplot(growth_data, aes(x = Time)) +
  geom_line(aes(y = Exponential, colour = "Exponential Growth")) +
  geom_line(aes(y = Logistic, colour = "Logistic Growth")) +
  scale_y_log10() +
  labs(
    title = "Comparison of Exponential and Logistic Growth",
    x = "Time (minutes)",
    y = "Population Size (log scale)",
    colour = "Growth Model"
  ) +
  theme_minimal()

# Save the plot as a PNG file
ggsave("growth_comparison.png", plot = growth_plot, width = 8, height = 6, dpi = 300)

# Display the plot
print(growth_plot)
