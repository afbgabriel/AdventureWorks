{{ config(materialized='table') }}

with
    product as (
        select 
            productid
            , productname
        from {{ ref('stg_product') }}
    )
    , transformed as (
        select
            row_number() over (order by productid) as product_sk
            , *
        from product
    )

select * from transformed