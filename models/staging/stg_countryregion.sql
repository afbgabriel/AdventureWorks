with
    source as (
        select
            countryregioncode
            , name as countryname
            , modifieddate
        from {{ source('erpadventureworks', 'countryregion') }}
    )

select * from source