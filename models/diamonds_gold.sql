{{ config(materialized="table", file_format="delta") }}

select color, avg(price) as price
from {{ ref('diamonds_silver') }}
group by color