SELECT
    airport_ident,
    airport_name,
    airport_lat,
    airport_long
FROM {{ ref('silver_airports') }}
WHERE
    airport_lat IS NULL or airport_long IS NULL 