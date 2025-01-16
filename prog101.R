##########################################################################
## Driver: (Tilda Koven) (@TildaKoven)                                       ##
## Navigator: (Stella Freedberg) (@Stellafreedberg)                                    ##
## Date: (2025-01-09)                                                   ##
##########################################################################

library(marinecs100b)

# Guiding questions -------------------------------------------------------

# What does KEFJ stand for?
# Kenai Fjords

# How was temperature monitored?
# With HOBO V2 temperature loggers which are temperature sensors
# that are in the water

# What's the difference between absolute temperature and temperature anomaly?
# anomaly temperature: regional mean - seasonal local water temp
# absolute temperature is the average while anomaly is the variation

# Begin exploring ---------------------------------------------------------

# How many kefj_* vectors are there?
# there are six kefj_* vectors
# How long are they?
# they are all vectors of length 2187966
# What do they represent?
# They represent the multiple aspects of the data from KEFJ
# Link to sketch

print(kefj_site[10])
kefj_1_datetime <- kefj_datetime[kefj_site == "Aialik"]
datetime_interval <- kefj_1_datetime[2:length(kefj_1_datetime)] - kefj_1_datetime[1:(length(kefj_1_datetime)-1)]
table(datetime_interval)

# Line 32 gives us the name of the kefj site. the numerical value doesn't matter
# as long as it's between 1 and the length of vector
# Line 33 assigns the datetime data of the Aialik site to our term name
# Line 34 gets the sample interval by subtracting the vector that is the first
# term to the second to last term from the vector that is the second term
# to the last term
# Line 35 puts that in a table where we can see that the time interval of 30
# appears 262735 times, significantly more than any other time interval.


# Problem decomposition ---------------------------------------------------

# When and where did the hottest and coldest air temperature readings happen?
which.min(kefj_temperature)
# determines which term in the vector is the minimum temp
kefj_datetime[63809]
# indexes datetime for just when min tep
kefj_site[63809]
# indexes site for just when min temp
which.max(kefj_temperature)
# determines which term in vector is max temp
kefj_datetime[158962]
# indexes datetime for when max temp
kefj_site[which.max(kefj_temperature)]
# indexes site for when max temp
# Link to sketch

# Plot the hottest day

hottest_idx <- which.max(kefj_temperature)
hottest_time <- kefj_datetime[hottest_idx]
hottest_site <- kefj_site[hottest_idx]
hotday_start <- as.POSIXct("2018-07-03 00:00:00", tz = "Etc/GMT+8")
hotday_end <- as.POSIXct("2018-07-03 23:59:59", tz = "Etc/GMT+8")
hotday_idx <- which(kefj_site == hottest_site &
  kefj_datetime >= hotday_start &
    kefj_datetime <= hotday_end)
hotday_datetime <- kefj_datetime[hotday_idx]
hotday_temperature <- kefj_temperature[hotday_idx]
hotday_exposure <- kefj_exposure[hotday_idx]
plot_kefj(hotday_datetime, hotday_temperature, hotday_exposure)

# Repeat for the coldest day
coldest_idx <- which.min(kefj_temperature)
coldest_time <- kefj_datetime[coldest_idx]
coldest_site <- kefj_site[coldest_idx]
coldday_start <- as.POSIXct("2013-01-27 00:00:00", tz = "Etc/GMT+8")
coldday_end <- as.POSIXct("2013-01-27 23:59:59", tz = "Etc/GMT+8")
coldday_idx <- which(kefj_site == coldest_site &
                      kefj_datetime >= coldday_start &
                      kefj_datetime <= coldday_end)
coldday_datetime <- kefj_datetime[coldday_idx]
coldday_temperature <- kefj_temperature[coldday_idx]
coldday_exposure <- kefj_exposure[coldday_idx]
plot_kefj(coldday_datetime, coldday_temperature, coldday_exposure)

# What patterns do you notice in time, temperature, and exposure? Do those
# patterns match your intuition, or do they differ?
# The hottest and coldest temperatures were when the sensor was in the air
# not when it was in the water
# Yes because it is hard to change the temperature of the ocean, but it is
# easy for air temps to change. But also no because we thought we were solving
#for water temperature
# Hottest time is at midday, coldest time is at night, which both make sense.

# How did Traiger et al. define extreme temperature exposure?
# When the air temps fall outside the average maximum air temp in summer and
# the average minimum air temp in winter

# Translate their written description to code and calculate the extreme heat
# exposure for the hottest day.

# Compare your answer to the visualization you made. Does it look right to you?

# Repeat this process for extreme cold exposure on the coldest day.


# Putting it together -----------------------------------------------------

# Link to sketch

# Pick one site and one season. What were the extreme heat and cold exposure at
# that site in that season?

# Repeat for a different site and a different season.

# Optional extension: Traiger et al. (2022) also calculated water temperature
# anomalies. Consider how you could do that. Make a sketch showing which vectors
# you would need and how you would use them. Write code to get the temperature
# anomalies for one site in one season in one year.
