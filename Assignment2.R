library(dplyr)
#assignment 2
penguins <- read.csv("penguins.csv")

#summary statistics
summary(penguins)

#count of species
species_count <- penguins %>%
  count(species)

# Average body mass by species
avg_body_mass <- aggregate(body_mass_g ~ species, data = penguins, FUN = mean)

# Combine results
results <- merge(species_count, avg_body_mass, by = "species")

# Save results
write.csv(results, "penguins_results.csv", row.names = FALSE)

