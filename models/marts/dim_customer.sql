{{ config(materialized='table') }}

with
    person as (
        select 
            businessentityid
            , firstname
            , middlename
            , lastname
        from {{ ref('stg_person') }}
    )
    , customer as (
        select 
            a.customerid
            , a.personid
            , b.businessentityid
            , b.firstname
            , b.middlename
            , b.lastname
            from {{ ref('stg_customer') }} as a
            left join person as b on a.personid = b.businessentityid
    )
    , transformed as (
        select
            row_number() over (order by customerid) as customer_sk
            , *
        from customer
    )
select * from transformed