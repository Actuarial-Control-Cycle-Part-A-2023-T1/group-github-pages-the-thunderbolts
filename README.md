[![Review Assignment Due Date](https://classroom.github.com/assets/deadline-readme-button-24ddc0f5d75046c5622901739e7c5dd533143b0c8e959d652212380cedb1ea36.svg)](https://classroom.github.com/a/elzutNYu)
[![Open in Codespaces](https://classroom.github.com/assets/launch-codespace-7f7980b617ed060a017424585567c406b6ee15c891e84e1186181d67ecf80aa0.svg)](https://classroom.github.com/open-in-codespaces?assignment_repo_id=10805476)
# ACTL4001 Assignment - 2023 SOA Research Challenge

<img src="https://user-images.githubusercontent.com/86914259/230893377-bbd121d5-bad0-431d-bed2-797a52115846.jpg" width="900">

Storlysia Relocation Social Insurance Program Report 2023 <br />
The Thunderbolts,
UNSW <br />
Alex Chen,
Ji Min Eun, 
Brian Lei,
Samuel Soo

## Objectives
Storlysia has found itself impacted by severe weather catastrophes resulting in emergency relocation of its citizens. In order to reduce the negative impact on Storlysia’s economy and provide social/financial aid to its citizens, we propose the following relocation program.
The main objectives of the Storlysia Social Relocation Insurance Program are as follows:
1. Create a program, the Proactive Relocation Program, to incentivise individuals/households to relocate to a region that is less exposed to climate catastrophe risks. This voluntary program will cover:
  -	Relocation Rebate
2. Create a program, the Involuntary Relocation Program, to support individuals/households that are impacted by a climate catastrophe. This involuntary program will cover:
  -	Short-term Accommodation
  -	Medical Aid & Psychological Counselling
  -	Permanent Relocation
3. Reduce the long term impact of climate catastrophes on Storlysia’s economy and the financial and social wellbeing of Storlysia’s citizens.
### Monitored Reporting
The key metrics to be used in judging the progress of objectives is shown below.
| Metric | Rationale | Timeframe |
| ------ | --------- | --------- |
| Property damage in each region | Property damage should be decreasing, as our programs aim to encourage property construction in lower risk regions. | Evaluated annually |
| Population in each region | Population in regions 1, 2 & 3 should increase, while population in regions 4, 5 & 6 should decrease. | Evaluated annually |
| GDP lost to climate catastrophes | The GDP lost to climate catastrophes should decrease as less citizens are affected by issues such as medical aid and lost income due to climate events. | Evaluated annually |
| Claim count | The number of claims lodged by the citizens of Storlysia, representing engagement with the insurance scheme. | Evaluated monthly |
| Total claim amount | The total amount paid out in claims from the program, which should be inline with expectations and be comparable to damages without the insurance program. | Evaluated monthly |

 
## Program Design
### Proactive Relocation Program
#### Aim: 
To provide financial incentives to individuals/households voluntarily relocating to a region that is impacted less by climate catastrophes in order to reduce future climate associated costs. Furthermore, relocate the population to fit an ideal distribution among regions.
#### Context:
Our data analysis shows that while region 2 & 5 have historically seen the largest amount of property damage due to weather catastrophes, this figure does not take into account the population and total property value of each region. When scaling by their respective total property values for each region, we find that regions 4,5 & 6 actually see the largest damage-per-property value figures. Consequently, we aim to move citizens to regions 1, 2 & 3, by providing rebates for moving to lower risk regions.
#### Coverage:
-	Rebate for mortgage deposits for claimants that have relocated to a less risky region, proportional to the decrease in risk in new location.
-	Rebate for constructions costs for claims that are building new homes in a less risky region.
#### Requirements:
| Requirement | Rationale |
| ----------- | --------- |
| Claimant must have relocated to an area of proportionally lower climate catastrophe risk. | This program aims to increase the percentage of population living in less risky regions, and therefore will only provide a rebate when moving to a less risky area. |
| Claimant must have relocated in the prior 6 months to the claim.  | Prevents unexpected long-term costs from a large relocation surge. |
#### Key Features:
-	Pricing of the rebate offered to claimants is based off a region matrix factor, which captures the relative riskiness of regions compared to each other.
-	Total rebate offered in the first 3 years is capped at 30 million. This is done to even out the distribution of rebates offered in the early years.
#### Stable Region Proportions:
Ideally, we aim to have the majority of the population in regions that are less impacted by climate catastrophes. The calculation of stable region proportions is shown in Pricing/Costs. 
#### Evaluation:
Evaluation will be done with regard to several metrics. The short-term period for evaluation will be an annual evaluation on property damage and population proportion. The long-term period for evaluation will be in 2050, to achieve a final population proportion in each region, as well as have property damage under 5% of GDP.



| Metric | Guideline |
| ------ | --------- |
| Population Proportion | The percentage of the population in each region will be measured annually. In the short-term (10 years). |
| Total Property Damage | The property damage in each region will be evaluated to make sure that model predictions in the short term (10 years) is generally accurate. |

### Involuntary Relocation Program
#### Aim: 
To provide social and financial aid to individuals/households that have been affected by a severe climate catastrophe, to help these individuals recover more quickly and be able to return to being productive. 
#### Coverage:
-	Short – Term Accommodation
-	Psychological Counselling
-	Medical Services
-	Food
#### Requirements:
| Requirement | Rationale |
| ----------- | --------- |
| Claimant must have suffered a financial loss due to a severe weather catastrophe, in the form of property and home contents damage. | Financial aid to victims of a severe weather catastrophe helps them recover faster and be financially able to recover after a severe weather catastrophe. |
| Claimant must have suffered a financial loss due to a severe weather catastrophe in the past 6 months. | Prevents unexpected long-term costs to a large relocation surge. |  

#### Key Features:
-	This program aims to provide support soon after a severe weather disaster in order to help citizens recover financially and socially. 

 
## Pricing and Costs
### Overall summary

![image](https://user-images.githubusercontent.com/86914259/230884874-e55c6356-8a62-4308-98d4-7d518dc18145.png)

 
The graphs above show the costs with and without the involuntary and voluntary relocation rebates, in both the short-term and long term
### Voluntary relocation rebate
#### Region Relativity Matrix
The region relativity matrix is a core pricing factor for relocation rebates. It is calculated as follows:
- 	The frequency and severity of weather catastrophes in each region was fitted.
-	The models were used to predict the frequency and severity of weather catastrophes in each region from 2020 to 2100.
-	The property damage values for each region were scaled by the total property value in each region, to achieve a total damage per dollar of property value figure.
-	A 6x6 matrix was constructed with the property value in each region being divided over the property value in 6 different regions, resulting in a 6x6 matrix of relative property damage values. 
-	The figures had 1 subtracted then scaled by the highest value in the matrix, with negative values being removed.
-	This results in a matrix representing the rebate factor a citizen gets from moving from an old region to a new region (if the new region is comparatively less risky, they receive a higher rebate multiplier).
#### Stable Region Proportions
In order to calculate the ideal proportion of the population in each region, we will attempt to equalise total property damage among regions. This is done by taking the scaled property damage mentioned above, and finding the relative proportions for all regions. Then the reciprocal is taken, and the scaled proportions found again. We are left with the following ideal proportions for each region.
| Region 1 | Region 2 | Region 3 | Region 4 | Region 5 | Region 6 |
| -------- | -------- | -------- | -------- | -------- | -------- |  
| 40.03% | 22.80% | 26.83% | 3.78% | 5.19% | 1.37% |

#### Total Rebate Costs – Proactive Relocation Program
In order to estimate total rebate costs for the proactive relocation program, we are required to estimate the number of people relocating from one region to another. This is done by assuming we will meet our goal in 2050. Then a linear interpolation from the current region proportions is done to the new region proportions in 2050 (accounting for population growth), giving us an estimated proportion of the population in each region.
| Region | Region 1 | Region 2 | Region 3 | Region 4 | Region 5 | Region 6 |
| ------ | -------- | -------- | -------- | -------- | -------- | -------- |  
| Old Population (2020) | 6,406,008 | 4,386,948 | 5,019,684 | 995,544 | 1,257,096 | 313,836 |
| Theoretical Population (2050) | 8500000 | 5000000 | 5700000 | 800000 | 1100000 | 300000 |

The population estimates in between were used to estimate the number of people relocating due to weather catastrophes (assumed to be 4% of total mobility).
The figure below shows the expected annual rebate values annually.

![image](https://user-images.githubusercontent.com/86914259/230884915-4882662d-e3e7-42cf-b2c6-e26265783a88.png)

![image](https://user-images.githubusercontent.com/86914259/230884923-e5228d4a-822f-4b90-b13a-d3100cbd5d62.png)

### Economic capital requirements

![image](https://github.com/Actuarial-Control-Cycle-Part-A-2023-T1/group-github-pages-the-thunderbolts/blob/main/Eco_requirement_1.png)
![image](https://github.com/Actuarial-Control-Cycle-Part-A-2023-T1/group-github-pages-the-thunderbolts/blob/main/Eco_requirement_2.png)
  
As seen in the chart above, we have projections about the economic cost, leading to a recommended amount of capital required for these rebate programs. 
However, we recommend that the program undergoes regular monitoring to update these forecasts for economic capital required to react to changing experience in both population movements and weather activity.
 
## Assumptions
The following areas have been projected using key assumptions:]
| Variable | Assumptions |
| -------- | ----------- |
| Population | • Assuming a population growth of 0.5% annually similar to the Netherlands. <br /> • Assuming that following our program, the proportion of the population in each region will follow a distribution so that property damage is equalised in each region. <br /> • The population growth in each region is logarithmic. This accounts for natural population growth (births/deaths) but also the influx of people from the voluntary relocation programs.|
| Relocation | • Our relocation rebate will rebate the most substancial amount of funds to regions 1, 2 & 3, where we assume some proportions related to relocation from other regions. This is elaborated on in the Appendix. <br /> • We assume that 4% of population growth in the regions 1, 2 & 3 are due to proactive relocation from weather catastrophes.|
| GDP | • Storylsia’s economy size is most comparable to Netherland’s in terms of its GDP and population. Hence, we found it appropriate to assume Netherland’s average annual GDP growth rate of 2.2% to Storylsia.|
| Inflation |• Considering the cyclical nature of economy, we found it appropriate to use stochastic modelling and simulated 100 inflation rate scenarios:<br /> &nbsp;&nbsp;&nbsp;&nbsp;o Random walk models were used to capture the progressive ups and downs of an inflation rate cycle with a volatility of 1% <br />• At any year, the inflation rate had a lower threshold of 0% and and upper threshold of 12% (Storylsia’s highest inflation rate was 11.88%)<br />&nbsp;&nbsp;&nbsp;&nbsp;o If the random walk reached below 0%, it was negated <br />&nbsp;&nbsp;&nbsp;&nbsp;o If the random walk reached above 12%, the following year’s inflation rate was reduced by a substantial 20% considering monetary policies are implemented in a high inflations. <br />• Further methodology details in code ‘Economic Forecast’.|
| Interest Rate | • Cash rates and risk-free rates hold an intrinsic relationship with the inflation rate, where they display a “catch-up” phenomenon with each other in positive correlation. <br /> •	Cash rate was modelled by a base rate of an average 1.8% premium on top of the inflation rate and deviations using a uniform distribution between –1% and 1%. The 1 year and 10 year risk-free rates were modelled similarly by calculating the average premium on the cash rate and capturing deviations with a uniform distribution. <br /> •	Further methodology details in code ‘Economic Forecast’.|
| Hazard Severity |• The severity of hazards was grouped into four groups (low, medium, high and extreme) and parametric distributions were fit to model the severity and frequency of hazards <br /> •	Hence the aggregate distribution for each of the four groups of hazard was assumed to follow a compound distribution. <br /> • Further details around the parameter estimates, distributions used and goodness of fit can be found in the appendix.|

## Risk and Risk Mitigation Consideration
The following outlines key potential risks to the proposed relocation program and suggestions for corresponding mitigation techniques. 
### 1. Supply Chain Stress

| Risk | Likelihood | Mitigation |
| ---- | ---------- | ---------- |
| Highly concentrated time period of high frequency natural hazard (aka “freak accident”) may cause sudden financial stress and shortage of immediate support supply | The hazard distribution parametrise the likelihood of one of more “freak” accidents as 1.2% in any given year. | Maintain a safe level of 5% surplus emergency reserve supply in any given year |
|Logistical supply chain issues (such as geopolitical tensions or international trades war) that may delay the process of relocation construction or delay supply for involuntary aid | The likelihood of experiencing a supply chain disruption in any given year is 27%. | Prioritise domestic supply chains over international to prevent major lag in supply chain in event of global crisis. Otherwise, ensure domestic channels are available to reach in case of emergency.|

### 2. Participation Rate

| Risk | Likelihood | Mitigation |
| ---- | ---------- | ---------- |
| Under-participation of program due to reluctance of relocation and perceived lack of incentives poses risk | Will need to measure market participation size after initiating campaign |Utilise unused budget for marketing purposes in order to attract more participants |
| Higher than expected participation rate with unprepared budget | Will need to measure market participation size after initiating campaign. | Impose an annual threshold limit on claim counts to allow distributed rebates |

Other risks identified are political and regulatory changes, cybersecurity threats, and prolonged economic depression periods.
 

## Data & Data Limitations
Data sources used: Historical Storylsia Data

### Hazard data
Our extreme hazard event distribution only had 5 datapoints over 60 years, using the data from Storslysia’s hazard events. Hence our estimates of extreme hazard events are highly sensitive to the distribution of extreme hazard events. An assumption has been made about the distribution following a General Pareto Distribution, however it is likely that these estimates will change when another extreme hazard event occurs (both in frequency and severity)

### Missing values in economic data
For any economic data that was found to be incomplete or wrongly entered, data was re-entered as an average of the previous and next years’ data for completeness. 
The impact of this data limitation is very restricted because it affects less than 0.5% of the data set and the linearity assumption corresponds to the underlying economic view that it is highly unlikely to experience an abnormal change in a single year. 

### Limitation about geography of Storslysia and areas affected by Storslysia
The hazard data provided limited information about the specific areas affected by natural hazard events. While we could draw inferences about the areas in which certain hazard events occurred, we could not determine which areas within a region were more risk prone and which areas were less risk prone.

A large part of our strategy is to encourage individuals to move individuals from high risk areas to low risk areas and ultimately ‘spread’ the risk of individuals suffering losses due extreme weather related. However, we assume that hazards affect a region on average the same overall, whereas this is not necessarily the case.
Additional information about the geography of areas affected by extreme climate events would help assist in designing a relocation strategy that effectively ‘spreads’ the risk of weather-related hazard damage, by identifying areas of low and high risk.

### Limited information about distribution of housing in Storslysia
Our estimates for property damage were assuming that damages due to extreme climate events were spread across a region proportionate to the number of houses in the region. 

However, this may not be the case, as mentioned above regarding the geography and location that extreme weather events take place. More granular information about the distribution of houses at a city or suburb level would allow us to make more precise estimations of the property damage in regions, and the expected economic damage.
 
## Conclusion
We have created the following programs to aid Storlysia manage their exposure to severe weather catastrophes. 
### Voluntary Relocation Program
Coverages
- 	Mortgage deposit rebates
-	Construction cost rebates
Key Features
-	30 million cap on rebates in the first 3 years
-	Pricing based off region relativity matrix
### Involuntary Relocation Program
Coverages
-	Food
-	Medical Costs
-	Temporary Housing
-	Reconstruction Costs

Consequently, we should see a 100 million Ꝕ reduction in property damages from severe weather catastrophes by 2050. The population proportion in each of Storlysia’s regions should be positioned to resist social and financial impacts from catastrophes, as we situate the majority of Storlysia’s population in regions 1, 2, & 3.
Furthermore, our involuntary relocation program will provide financial rebates to support short term housing, rebuilding food, accommodation, medical costs and other essentials as rebates to reduce the impact on Storlysia’s economy. The main justification for this is to reduce the time of recovery for affected communities and thus reduce the total economic damage.

 
## Appendix
### 1. Netherlands and Storylsia economy size comparison
|     | Netherlands | Storylsia |
| --- | ----------- | --------- |
|GDP, 2021 <br /> (US$ mil) | 1,013,007 | 981,786 |
| Census Population | 17,533,044 (2023) | 18,379,116 (2021) |

Source: World Bank, Historical Storylsia Data

### 2. Random Walk Model and Economic Forecasts
RBA published results and performance of using a random walk model to forecast time-series inflation and interest rates.
https://www.rba.gov.au/publications/rdp/2003/2003-12/results.html
https://www.rba.gov.au/publications/rdp/1989/8906/inflation-and-interest-rates.html

### 3. Historic Storylsia’s Inflation and interest rate correlation matrix
 
![image](https://user-images.githubusercontent.com/86914259/230845421-6a79975f-dd5d-4328-a71e-92613458ef14.png)

![image](https://user-images.githubusercontent.com/86914259/230845444-25197cf6-08c5-4088-9ebb-645fa299b2fa.png)


### 4. Predicting population relocation in Storlysia.
Population relocation projections were done in the sheet Population_Estimates.xlsx.
A logarithmic curve with adjustments was used to predict year by year population, with the objective population per region calculated as per Stable Region Population.

### 5. Total Annual Rebate for Voluntary Relocation Program by Year
| Year | Rebate | Year | Rebate | Year | Rebate | Year | Rebate |
| ---- | ------ | ---- | ------ | ---- | ------ | ---- | ------ |
| 2022 | 30000000 | 2030 | 12385669 |	2038 | 6725309 | 2046 | 4615470 |
| 2023 | 30000000 | 2031 | 11203886 | 2039 | 6359183 | 2047 | 4451648 |
| 2024 | 30000000 | 2032 | 10237623 | 2040 | 6041634 | 2048 | 4278466 |
| 2025 | 26242797 | 2033 | 9426358  | 2041 | 5742026 | 2049 | 4125965 |
| 2026 | 21420216 | 2034 | 8728890  | 2042 | 5468322 | 2050 | 3982176 |
| 2027 | 18117092 | 2035 | 8109744  | 2043 | 5238563 |		
| 2028 | 15688375 | 2036 | 7592008  | 2044	 |5009909 |		
| 2029 | 13855998 | 2037 | 7127151  | 2045 | 4806430 |		

### 6. Prepandemic research by McKinsey found that, on average, companies experience a disruption of one to two months in duration every 3.7 years.


### 7. Fitting hazard distributions 
Rono, A., Ogutu, C. and Weke, P. (2020) “On compound distributions for natural disaster modelling in Kenya,” International Journal of Mathematics and Mathematical Sciences, 2020, pp. 1–8. Available at: https://doi.org/10.1155/2020/9398309. 

The following methodology was applied to fit severity distributions to the hazard data: <br />
• Data was analysed at a region and aggregate level. <br />
&nbsp;&nbsp;&nbsp;&nbsp;o At an aggregate level, region-spanning events were collapsed into one single event, to maintain independence of natural hazards assumption. <br />
• A combination of scale/shape parameter stability, a mean excess plot and a Gerstengarbe plot was used to determine optimal thresholds for fitting a General Pareto Distribution. <br />
&nbsp;&nbsp;&nbsp;&nbsp;o This was similar to the methodology employed by Rono et. Al 2020 <br />
• After optimal thresh-holds were determined for the middle and upper hazards, General Pareto distributions were fit on the top three thresholds (extreme, upper and middle), while a Weibull distribution was used to fit to the lower distribution

### Extreme hazard event parameters
| Scale | Shape |
| ----- | ----- |
|135074.68 | -0.26 |

### Upper hazard event parameters
| Region | Scale | Shape |
| ------ | ----- | ----- |
| 1 | 71197.09 | 0.04 |
| 2	| 82505.40 | -0.10 |
| 3 | 135074.68 | -0.26 |

### Middle hazard event parameters
| Region | Scale | Shape |
| ------ | ----- | ----- |
| 1 | 3957.05 |	0.19 |
| 2	| 5815.95 |	0.16 |
| 3	| 5583.82 |	0.04 |
| 4	| 3476.92 |	0.11 |
| 5	| 3704.67 |	0.39 |
| 6	| 5138.30 |	0.09 |

### Lower hazard event parameters
| Region | Shape | Scale |
| ------ | ----- | ----- |
| 1 | 0.66 | 105.66 |
| 2 | 0.67 | 104.95 |
| 3 |	0.62 | 79.64 |
| 4	| 0.67 | 84.81 |
| 5	| 0.66 | 88.22 |
| 6	| 0.65 | 83.14 |

### Extreme frequency
| Region | Lambda |
| ------ | ------ |
| All |	0.08 |

### Upper frequency
| Region | Lambda |
| ------ | ------ |
| 1	| 0.11 |
| 2 |	0.18 |
| 3	| 0.05 |

### Middle frequency
| Region | Size |	Mu |
| ------ | ---- | -- |
| 1	| 1.73 | 0.84 |
| 2	| 0.88 | 1.00 |
| 3 | 0.26 | 0.79 |
| 4 | 1.08 | 0.39 |
| 5	| 0.66 | 0.33 |
| 6	| 0.68 | 0.23 |

### Lower frequency
| Region | Size |	Mu |
| ------ | ---- | -- |
| 1	| 1.89 | 7.21 |
| 2	| 1.08 | 9.66 |
| 3	| 0.66 | 10.41|
| 4 | 1.17 | 6.66 |
| 5	| 1.07 | 5.51 |
| 6	| 0.73 | 2.97 |


