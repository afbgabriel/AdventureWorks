{{ config(materialized='table') }}

with
    address as (
        select
            addressid
            , stateprovinceid	
            , city
        from {{ ref('stg_address') }}
    )

    , state as (
        select 
            stateprovinceid
            , countryregioncode
            , statename
        
        from {{ ref('stg_stateprovince') }}
    )

    , country as (
        select
            countryregioncode
            , countryname
        
        from {{ ref('stg_countryregion') }}
    )

    , final as (
        select
            address.addressid
            , address.city
            , state.stateprovinceid
            , state.statename
            , country.countryregioncode
            , country.countryname
        
        from state
        left join address on state.stateprovinceid = address.stateprovinceid
        left join country on state.countryregioncode = country.countryregioncode
    )

select * from final