WITH src_listings AS (
    select * from {{ ref('src_listings') }}
)

SELECT 
    listing_id,
    listing_name,
    room_type,
    CASE 
        when min_nights_booking = 0 then 1
        else min_nights_booking
    END AS min_nights_booking,
    host_id,
    REPLACE(
        price_str,
        '$'
    ) :: NUMBER(
        10,
        2
    )    AS price,
    created_at,
    updated_at 
From 
    src_listings    