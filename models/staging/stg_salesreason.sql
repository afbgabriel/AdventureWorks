with
    source as (
        select 
            salesreasonid	  
            , name as reasonname
            , reasontype	
            , modifieddate
        from {{ source('erpadventureworks', 'salesreason') }}
    )

select * from source