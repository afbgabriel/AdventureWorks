with
    source as (
        select
            addressid
            , stateprovinceid
            , addressline1	
            , addressline2	
            , city		
            , postalcode	
            , spatiallocation	
            , rowguid	
            , modifieddate

        from {{ source('erpadventureworks', 'address') }}
    )

select * from source