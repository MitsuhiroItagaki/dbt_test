{{ config(materialized="table", file_format="delta") }}

select carat, cut, color, clarity, price
from {{ ref('diamonds_bronze') }}