SELECT
 *
FROM

 {{ ref('dim_listings_cleansed') }}

WHERE min_nights_booking < 1
