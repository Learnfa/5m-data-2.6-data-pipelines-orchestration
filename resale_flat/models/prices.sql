
{{ config(materialized='table') }}

WITH base AS (
  SELECT
    id,
    month,
    town,
    flat_type,
    block,
    street_name,
    storey_range,
    SAFE_CAST(floor_area_sqm AS NUMERIC) AS floor_area_sqm,
    flat_model,
    lease_commence_date,
    remaining_lease,
    SAFE_CAST(resale_price AS NUMERIC) AS resale_price
  FROM {{ source('resale', 'public_resale_flat_prices_from_jan_2017') }}
)

SELECT
  *,
  resale_price / NULLIF(floor_area_sqm, 0) AS price_per_sqm
FROM base