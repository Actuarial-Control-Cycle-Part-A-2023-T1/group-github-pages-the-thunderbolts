# Libraries

library(readr)
library(data.table)
library(ggplot2)


# Loading in data

####################################################

# Basic script for Economic Cost Modelling

####################################################

# Import Baseline Information


recovery <- data.table(Severity = c("L", "M", "U", "F"),
                       time_noprg = c(1/12, 1/2, 1, 2),
                       time_prg = c(1/24, 1/4, 1/2, 1.5))

rebuild_multi <- data.table(Severity = c("L", "M", "U", "F"),
                            multiplier = c(1,1.25,1.5, 1.5))
replacing <- c(0.4,0.75)

scenarios <- fread("C:/Users/PC/Documents/GitHub/ACTL4001/Data/Scenarios.csv")
scenarios <- lapply(scenarios, as.vector)[-1]
scenarionames <- c("SSP1", "SSP2", "SSP3", "SSP4")

baseline <- fread("C:/Users/PC/Documents/GitHub/ACTL4001/Data/Baselineinformation.csv")

voluntary <- c(0.20, 0.1,0.15,0.25,0.3)
fatality <- 0.5727 # vector of mean times by severity level (aggregate by threshold)
injury <- 2.046

medianage <- c(31,37)
medianfood <- 3.54*1.321
retirement <- 65



inflation <- fread("C:/Users/PC/Documents/GitHub/ACTL4001/Data/inflation.csv")
inflation[, c(2:101)] <- inflation[, c(2:101)]/100+1

rf1 <- fread("C:/Users/PC/Documents/GitHub/ACTL4001/Data/rf1.csv")
rf10 <- fread("C:/Users/PC/Documents/GitHub/ACTL4001/Data/rf10.csv")
rf10[, c(2:101)] <- rf10[, c(2:101)]/100+1

GDPgrowth <- fread("C:/Users/PC/Documents/GitHub/ACTL4001/Data/GDPgrowth.csv")
totalGDP <- sum(baseline$GDP2020_1000)

populationgrowth <- fread("C:/Users/PC/Documents/GitHub/ACTL4001/Data/populationgrowth.csv")


# Import All Necessary Data

fl1 = "https://raw.githubusercontent.com/samuelsoo5/ACTL4001/main/Simulated%20values/Frequency_Lower_Region_1.csv"
fl2 = "https://raw.githubusercontent.com/samuelsoo5/ACTL4001/main/Simulated%20values/Frequency_Lower_Region_2.csv"
fl3 = "https://raw.githubusercontent.com/samuelsoo5/ACTL4001/main/Simulated%20values/Frequency_Lower_Region_3.csv"
fl4 = "https://raw.githubusercontent.com/samuelsoo5/ACTL4001/main/Simulated%20values/Frequency_Lower_Region_4.csv"
fl5 = "https://raw.githubusercontent.com/samuelsoo5/ACTL4001/main/Simulated%20values/Frequency_Lower_Region_5.csv"
fl6 = "https://raw.githubusercontent.com/samuelsoo5/ACTL4001/main/Simulated%20values/Frequency_Lower_Region_6.csv"
fm1 = "https://raw.githubusercontent.com/samuelsoo5/ACTL4001/main/Simulated%20values/Frequency_Middle_Region_1.csv"
fm2 = "https://raw.githubusercontent.com/samuelsoo5/ACTL4001/main/Simulated%20values/Frequency_Middle_Region_2.csv"
fm3 = "https://raw.githubusercontent.com/samuelsoo5/ACTL4001/main/Simulated%20values/Frequency_Middle_Region_3.csv"
fm4 = "https://raw.githubusercontent.com/samuelsoo5/ACTL4001/main/Simulated%20values/Frequency_Middle_Region_4.csv"
fm5 = "https://raw.githubusercontent.com/samuelsoo5/ACTL4001/main/Simulated%20values/Frequency_Middle_Region_5.csv"
fm6 = "https://raw.githubusercontent.com/samuelsoo5/ACTL4001/main/Simulated%20values/Frequency_Middle_Region_6.csv"
fu1 = "https://raw.githubusercontent.com/samuelsoo5/ACTL4001/main/Simulated%20values/Frequency_Upper_Region_1.csv"
fu2 = "https://raw.githubusercontent.com/samuelsoo5/ACTL4001/main/Simulated%20values/Frequency_Upper_Region_2.csv"
fu3 = "https://raw.githubusercontent.com/samuelsoo5/ACTL4001/main/Simulated%20values/Frequency_Upper_Region_3.csv"
ffreak = "https://raw.githubusercontent.com/samuelsoo5/ACTL4001/main/Simulated%20values/Frequency_Freak.csv"

sl1 =  "https://raw.githubusercontent.com/samuelsoo5/ACTL4001/main/Simulated%20values/Severity_Lower_Region_1.csv"
sl2 =  "https://raw.githubusercontent.com/samuelsoo5/ACTL4001/main/Simulated%20values/Severity_Lower_Region_2.csv"
sl3 =  "https://raw.githubusercontent.com/samuelsoo5/ACTL4001/main/Simulated%20values/Severity_Lower_Region_3.csv"
sl4 =  "https://raw.githubusercontent.com/samuelsoo5/ACTL4001/main/Simulated%20values/Severity_Lower_Region_4.csv"
sl5 =  "https://raw.githubusercontent.com/samuelsoo5/ACTL4001/main/Simulated%20values/Severity_Lower_Region_5.csv"
sl6 =  "https://raw.githubusercontent.com/samuelsoo5/ACTL4001/main/Simulated%20values/Severity_Lower_Region_6.csv"
sm1 =  "https://raw.githubusercontent.com/samuelsoo5/ACTL4001/main/Simulated%20values/Severity_Middle_Region_1.csv"
sm2 =  "https://raw.githubusercontent.com/samuelsoo5/ACTL4001/main/Simulated%20values/Severity_Middle_Region_2.csv"
sm3 =  "https://raw.githubusercontent.com/samuelsoo5/ACTL4001/main/Simulated%20values/Severity_Middle_Region_3.csv"
sm4 =  "https://raw.githubusercontent.com/samuelsoo5/ACTL4001/main/Simulated%20values/Severity_Middle_Region_4.csv"
sm5 =  "https://raw.githubusercontent.com/samuelsoo5/ACTL4001/main/Simulated%20values/Severity_Middle_Region_5.csv"
sm6 =  "https://raw.githubusercontent.com/samuelsoo5/ACTL4001/main/Simulated%20values/Severity_Middle_Region_6.csv"
su1 =  "https://raw.githubusercontent.com/samuelsoo5/ACTL4001/main/Simulated%20values/Severity_Upper_Region_1.csv"
su2 =  "https://raw.githubusercontent.com/samuelsoo5/ACTL4001/main/Simulated%20values/Severity_Upper_Region_2.csv"
su3 =  "https://raw.githubusercontent.com/samuelsoo5/ACTL4001/main/Simulated%20values/Severity_Upper_Region_3.csv"

sfreak =   "https://raw.githubusercontent.com/samuelsoo5/ACTL4001/main/Simulated%20values/Severity_Upper_Region_0.csv"


Regions <- c(1,2,3,4,5,6,1,2,3,4,5,6,1,2,3, "total")
Severity <- c("L", "L","L", "L","L", "L","M", "M","M", "M","M", "M", "U", "U", "U", "F")

# freq tables
dt_list_f <- list()
csv_urls <- c(fl1,fl2,fl3,fl4,fl5,fl6,fm1,fm2,fm3,fm4,fm5,fm6,fu1,fu2,fu3, ffreak)

for (url in csv_urls) {
  dt <- fread(url)[, c(-1, -81)] # Can change this to include all sims
  # Extract filename srom URL
  filename <- basename(url)
  dt_list_f[[filename]] <- dt
}



# severity Tables
dt_list_s <- list()
csv_urls <- c(sl1,sl2,sl3,sl4,sl5,sl6,sm1,sm2,sm3,sm4,sm5,sm6,su1,su2,su3, sfreak)

for (url in csv_urls) {
  dt <- fread(url)[, c(-1, -81)]
  # Extract filename srom URL
  filename <- basename(url)
  dt_list_s[[filename]] <- dt
}

freqx <- unlist(scenarios[s])
g <- as.numeric(unlist(GDPgrowth[s]))
p <- as.numeric(unlist(populationgrowth[s]))

# Frequency tables
dt_list_f

# Severity tables
dt_list_s

# Lower_agg

lower_frequency <- data.table()

for (i in 1:6){
  
  temp_freq <- dt_list_f[[i]]
  
  temp_freq[, `:=` (Region = i)]
  
  lower_frequency <- rbind(lower_frequency, temp_freq)
  
}

lower_severity <- data.table()

for (i in 1:6) {
  
  temp_sev <- dt_list_s[[i]]
  
  temp_sev[, `:=` (Region = i)]
  
  lower_severity <- rbind(lower_severity, temp_sev)
  
}


lower_agg <- lower_frequency * lower_severity
lower_agg[, Region := sqrt(Region)]

# Middle

middle_frequency <- data.table()

for (i in 1:6){
  
  temp_freq <- dt_list_f[[i+6]]
  
  temp_freq[, `:=` (Region = i)]
  
  middle_frequency <- rbind(middle_frequency, temp_freq)
  
}

middle_severity <- data.table()

for (i in 1:6) {
  
  temp_sev <- dt_list_s[[i+6]]
  
  temp_sev[, `:=` (Region = i)]
  
  middle_severity <- rbind(middle_severity, temp_sev)
  
}


middle_agg <- middle_frequency * middle_severity
middle_agg[, Region := sqrt(Region)]

# Middle

middle_frequency <- data.table()

for (i in 1:6){
  
  temp_freq <- dt_list_f[[i+6]]
  
  temp_freq[, `:=` (Region = i)]
  
  middle_frequency <- rbind(middle_frequency, temp_freq)
  
}

middle_severity <- data.table()

for (i in 1:6) {
  
  temp_sev <- dt_list_s[[i+6]]
  
  temp_sev[, `:=` (Region = i)]
  
  middle_severity <- rbind(middle_severity, temp_sev)
  
}


middle_agg <- middle_frequency * middle_severity
middle_agg[, Region := sqrt(Region)]

# Upper

upper_frequency <- data.table()

for (i in 1:3){
  
  temp_freq <- dt_list_f[[i+12]]
  
  temp_freq[, `:=` (Region = i)]
  
  upper_frequency <- rbind(upper_frequency, temp_freq)
  
}

upper_severity <- data.table()

for (i in 1:3) {
  
  temp_sev <- dt_list_s[[i+12]]
  
  temp_sev[, `:=` (Region = i)]
  
  upper_severity <- rbind(upper_severity, temp_sev)
  
}


upper_agg <- upper_frequency * upper_severity
upper_agg[, Region := sqrt(Region)]

# Freak

freak_frequency <- dt_list_f[[13]]

freak_frequency[, `:=` (Region = i)]

freak_severity <- dt_list_s[[13]]
  
freak_severity[, `:=` (Region = i)]

freak_agg <- freak_frequency * freak_severity
freak_agg[, Region := sqrt(Region)]

# Calculating economic metrics

  # Calculating GDP

GDPproj = GDPgrowth
GDPproj[, `:=`()]

GDP = baseline[Regions == r, GDP2020_1000]*g,
Population = baseline[Regions == r, Population]*p,
total = as.numeric(unlist(dtf[, ..sim] * dts[, ..sim])) * 1000 * inflationsim * freqx,
housevalue = baseline[Regions == r, MedianHouse] * inflationsim, 
pphouse = baseline[Regions == r, PpHouse],
injuries = as.numeric(unlist(dtf[, ..sim])) * freqx * injury,
fatalities = as.numeric(unlist(dtf[, ..sim])) * freqx * fatality)
total <- total[, no_houses := total/housevalue][, no_pp := no_houses*pphouse][, GDPpercapita := GDP/Population]


