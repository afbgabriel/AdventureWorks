with
    source as (
        select
            customerid
            , territoryid	
            , storeid	
            , personid
            , modifieddate	
            , rowguid			    
        from {{ source('erpadventureworks', 'customer') }}
    )
select * from source