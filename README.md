## Question 1

This assignment required the analyses of bacterial population growth using a logistic growth model. 

The goal is to estimate the following parameters:
- \(N<sub>0</sub>\): Initial population size.
- \(r): Growth rate during exponential growth.
- \(K\): Carrying capacity (maximum population size).

The data for this analysis was obtained from the file `experiment.csv`.

### Methods for Parameter Estimation

The logistic growth model parameters (N<sub>0</sub>\), \(r\), and \(K\)) were estimated using linear regression on subsets of the data.

#### 1. Using the early exponential growth phase to estimate the parameters N<sub>0</sub> and r: 

During the early exponential growth phase (t < 1000), the population grows exponentially, and the relationship between ln(N) (log-transformed population size) and t is linear. This relationship is described by: **ln(N) = ln(N<sub>0</sub>) + r * t**

To estimate the parameters N<sub>0</sub> and r :
- The natural logarithm of N (ln(N)) was computed to linearise the exponential growth equation.
- A linear model (ln(N) ~ t) was fitted, giving the following outputs:
  - **Intercept (ln(N<sub>0</sub>))**: Estimated as 6.883, converted to N<sub>0</sub> = e<sup>6.883</sup> ≈ 978.1.
  - **Slope (r)**: Representing the growth rate, estimated as r ≈ 0.01004.

#### 2. Using the stable phase to estimate the parameter K:

During the stable phase (t > 2500), the population size approaches its carrying capacity (K). At this stage, the population remains constant, and the relationship can be described by: **N(t) ≈ K**

To estimate the parameter K:
- A subset of the data with time points (t > 2500) was used, corresponding to the stable phase.
- A linear model (N ~ 1) was fitted, treating K as a constant.
- The intercept from this model provided the estimate for K:
  - **Intercept (K)**: Estimated as K ≈ 5.979 × 10<sup>10</sup>.

#### Estimated Parameters

- **N<sub>0</sub>** = 978.1
- **r** = 0.01004
- **K** = 5.979 × 10<sup>10</sup>.

## Question 2

