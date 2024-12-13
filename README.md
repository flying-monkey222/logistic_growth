## Question 1

The data for this analysis was obtained from the file `experiment.csv`.

#### Methods for Parameter Estimation

The logistic growth model parameters (N<sub>0</sub>\, r, and K) were estimated using linear regression on subsets of the data.

##### 1. Using the early exponential growth phase to estimate the parameters N<sub>0</sub> and r: 

During the early exponential growth phase (t < 1000), the population grows exponentially, and the relationship between ln(N) (log-transformed population size) and t is linear. This relationship is described by: **ln(N) = ln(N<sub>0</sub>) + r * t**

To estimate the parameters N<sub>0</sub> and r :
- The natural logarithm of N (ln(N)) was computed to linearise the exponential growth equation.
- A linear model (ln(N) ~ t) was fitted, giving the following outputs:
  - **Intercept (ln(N<sub>0</sub>))**: Estimated as 6.883, converted to N<sub>0</sub> = e<sup>6.883</sup> ≈ 978.1.
  - **Slope (r)**: Representing the growth rate, estimated as r ≈ 0.01004.

##### 2. Using the stable phase to estimate the parameter K:

During the stable phase (t > 2500), the population size approaches its carrying capacity (K). At this stage, the population remains constant, and the relationship can be described by: **N(t) ≈ K**

To estimate the parameter K:
- A subset of the data with time points (t > 2500) was used, corresponding to the stable phase.
- A linear model (N ~ 1) was fitted, treating K as a constant.
- The intercept from this model provided the estimate for K:
  - **Intercept (K)**: Estimated as K ≈ 5.979 × 10<sup>10</sup>.

##### Estimated Parameters

- **N<sub>0</sub>**: Initial population size ≈ 978.1
- **r**: Growth rate during exponential growth ≈ 0.01004
- **K**: Carrying capacity (maximum population size)≈ 5.979 × 10<sup>10</sup>.

## Question 2

#### 1. Exponential Growth Calculation

The exponential growth formula is:

N(t) = N<sub>0</sub> * e<sup>(r * t)</sup>

Where:​
- **N<sub>0</sub>** = 978.1
- **r** = 0.01004
- **t**: Time (in minutes) (4980)

N(4980) = 978.1 * e<sup>(0.01004 * 4980)</sup>

N(4980) = 978.1 * e<sup>(50.0192)</sup>

N(4980) = 978.1 * (5.184×10<sup>(21)</sup>) 

N(4980) = 5.072 * 10<sup>(24)</sup>

The population size under **exponential growth** at at (t=4980) is approximately **5.072 * 10<sup>(24)</sup>**

#### 2. Logistic Growth Calculation

The logistic growth equation:

N(t) = (K * N<sub>0</sub> * e<sup>(r * t)</sup>) / (K - N<sub>0</sub> + N<sub>0</sub> * e<sup>(r * t)</sup>)

Where:
- **N<sub>0</sub>**: Initial population size (978.1)
- **r**: Growth rate during exponential growth (0.01004)
- **K**: Carrying capacity (5.979 × 10<sup>10</sup>)
- **t**: Time (in minutes) (4980)

N(4980) = ((5.979 × 10<sup>10</sup>) * (978.1) * (e<sup>(50.0192)</sup>)) / ((5.979 × 10<sup>10</sup>) - (978.1)+ (978.1) * (e<sup>(50.0192)</sup>))

N(4980) ≈ 5.979 * 10<sup>(10)</sup> 

The population size under **logistic growth** at at (t=4980) is approximately **5.979 * 10<sup>10</sup>**

**Conclusion**: The population size under logistic growth (5.979 * 10<sup>10</sup>) is much smaller than the population size at exponential growth (5.072 * 10<sup>24</sup>). The exponential growth model assumes unlimited resources whereas the logistic growth model population size is constrained becuase it takes into consideration carrying capcity (K).

## Question 3

Graph comparing logistic and exponential growth curves:

<img width="1082" alt="image" src="https://github.com/user-attachments/assets/4ce95051-86ba-4bbe-a752-ead78a57f127" />

