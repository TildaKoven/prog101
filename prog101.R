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

# Link to sketch

# Plot the hottest day

hottest_idx <- ???(kefj_temperature)
hottest_time <- ???[hottest_idx]
??? <- kefj_site[???]
hotday_start <- as.POSIXct("???", tz = "Etc/GMT+8")
hotday_end <- as.POSIXct("???", tz = "Etc/GMT+8")
hotday_idx <- ??? == hottest_site &
  ??? >= hotday_start &
  ??? <= hotday_end
hotday_datetime <- ???[hotday_idx]
hotday_temperature <- ???
hotday_exposure <- ???
plot_kefj(???, ???, ???)

# Repeat for the coldest day

# What patterns do you notice in time, temperature, and exposure? Do those
# patterns match your intuition, or do they differ?

# How did Traiger et al. define extreme temperature exposure?

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
