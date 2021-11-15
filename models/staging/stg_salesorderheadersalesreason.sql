with
    source as (
        select 
            salesorderid		            	
            , salesreasonid	
            , modifieddate		
        from {{ source('erpadventureworks', 'salesorderheadersalesreason') }}
    )

select * from source