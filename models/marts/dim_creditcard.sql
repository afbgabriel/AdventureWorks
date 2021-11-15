{{ config(materialized='table') }}

with
    creditcard as (
        select *
        from {{ ref('stg_creditcard') }}
    )
 , transformed as (
        select
            row_number() over (order by creditcardid) as creditcard_sk -- chave surrogate auto incremental
            , creditcardid
            , cardtype
        from creditcard
    )

select * from transformed
