# Convert feet to meters
20/3.281

# let's make a variable. we use "<-"
depth_ft <- 20
depth_m <- depth_ft / 3.281
ft_to_m <- 1 / 3.281
depth_m <- depth_ft * ft_to_m
?ceiling
ceiling(2.1)
cos(0)
sin(0)
x <- c(1.0, 3.4, 9.8, 3.9, 7.3, 8.2, 3.8, 2.2, 1.9, 6.9)
length(x)
atan(x)
x^2
max(x)
LETTERS
LETTERS[1:10]
LETTERS[c(5,10,15)]
LETTERS[16:26]
tolower(LETTERS[16:26])
instrument_deployed_hm <- c(730, 915, 1345)
instrument_deployed_h <- floor(instrument_deployed_hm) / 100
instrument_deployed_hdec <- (instrument_deployed_hm %% 100) / 60
instrument_deployed <- instrument_deployed_h + instrument_deployed_hdec
