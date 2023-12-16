-- script_that_lists_all_bands_with_Glam_rock_as_their_main_style, ranked_by_their_longevity

SELECT
    band_name, (IFNULL(split, 2022) - formed) AS lifespan
FROM metal_bands
WHERE style LIKE '%Glam rock%';
