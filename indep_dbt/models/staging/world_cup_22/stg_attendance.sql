with src_world_cup_22 as (

  select * from {{ source('world_cup_22', 'attendance') }}
)

select * from src_world_cup_22