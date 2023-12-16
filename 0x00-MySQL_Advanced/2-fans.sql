-- Ranks the country_origins_of_bands
-- Ordered_by_the_number_of_(non-unique)_fans
-- Column_names_must_be: origin_and_nb_fans

SELECT origin, SUM(fans) AS nb_fans
FROM metal_bands 
GROUP BY origin
ORDER BY nb_fans DESC;
