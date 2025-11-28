--recursicve cte
-- recursive common table expression 
-- exaple 
--factorial 


with [rcte] as (
    -- anchor query
    select 1 as n
    
    union ALL

    -- recursive query 
    select n+1 from [rcte] where n<=4
)
select exp(sum(log(n))) [factorial] from rcte




with [rcte1] as (
    -- anchor query
    select 1 as n
    
    union ALL

    -- recursive query 
    select n+1 from [rcte1] where n<=4
)
select * from rcte1