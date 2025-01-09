# I edited the code to do exercise 1 of Prog101

# What do the following expressions do?
temp_F <- temp_C * 9/5 - 32
rect_area <- rect_length * rect_width
# line 2 converts the temperature from celsius to fahrenheit
# line 3 computes the area by multiplying the length and width
# Fill in the question marks to complete these expressions
tri_area <- 1/2 * base * height
cylinder_volume <- pi * radius^2 * height

  # What are the errors in these expressions?
  speed_m_s <- distance_m * time_s
acceleration m s2 <- speed_m_s / time_s
force_N < mass + acceleration_m_s2
#line 11 is indented and should be distance / time
# line 12 has spaces not underscores
# line 13 should be mass multiplied by acceleration, not added

# The energy density of market squid is 4850 joules per gram[1]. If a 225 kg
# Risso's dolphin needs 5 million joules of energy per day[2] and a typical
# market squid is 35 g[1], then how many squid does a Risso's dolphin need to
# eat each day? Solve the above word problem in R. Consider how many variables
# you need to create, what to name them to make the code readable, and how to
# combine them into expressions.

squid_energy_J_g <- 4850
squid_mass_g <- 35
dolphin_energy_J <- 5000000
energy_squid_J <- squid_energy_J_g * squid_mass_g
squids_eat <- dolphin_energy_J / energy_squid_J

# [1] Price et al. 2024 https://doi.org/10.3389/fmars.2023.1345525
# [2] Barlow et al. 2008 https://doi.org/10.3354/meps07695

