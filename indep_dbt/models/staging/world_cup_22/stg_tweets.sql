with src_world_cup_22 as (

  select * from {{ source('world_cup_22', 'tweets') }}
), 

final as (

  select  
    MD5(CONCAT(user_name, date)) AS tweet_id,
    user_name,
    CAST(SUBSTR(date,1,10) AS DATE) as tweet_date,
    CAST(SUBSTR(date,12,8) AS TIME) as tweet_time,
    user_location, 
    user_followers,
    user_friends,
    user_favourites,
    user_verified,
    text,
    hashtags,
    source
    
  from src_world_cup_22
)

select * from final
