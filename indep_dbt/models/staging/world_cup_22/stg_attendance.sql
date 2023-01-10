with src_world_cup_22 as (

  select * from {{ source('world_cup_22', 'attendance') }}
), 

final as (

  select  
    Date as game_date,
    CAST(CONCAT(SUBSTR(Time, 1, 5),":00") AS TIME) as game_start, 
    CAST(CONCAT(SUBSTR(Time, 8, 5), ":00") AS TIME) as game_end, 
    Home as home, 
    Away as away, 
    Attendance as attendance, 
    Venue as stadium

    from src_world_cup_22
)

select * from final