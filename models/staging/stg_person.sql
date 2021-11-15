with source as(
    select
        businessentityid
        , firstname
        , middlename
        , lastname
        , title
        , suffix
        , namestyle			
        , persontype
        , emailpromotion			
		, rowguid
		, modifieddate			
    from {{ source('erpadventureworks','person')}}
)
select * from source