select distinct(Num) from(
select Num, count(rank) as count from (
select Num, @curRank := @curRank + IF(@preNum = Num , 0, 1) as rank, @preNum := Num
from Logs s, (select @curRank := 0) r, (select @preNum := NULL) p
) as raw
group by raw.rank having count(*) >= 3
) as d
