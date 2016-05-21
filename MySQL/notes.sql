select a.Id from Weather a, Weather b
where DATE_SUB(a.Date , INTERVAL 1 day) = b.Date
and a.Temperature > b.Temperature;

insert into Weather(Id, Date, Temperature) values
(1, '2015-01-01', 10),
(2, '2015-01-02', 25),
(3, '2015-01-03', 20),
(4, '2015-01-04', 30)

insert into Logs(Num) values(1),(1),(1),(2),(1),(2),(2);

select distinct(Num) from(
select Num, count(rank) as count from (
select Num, @curRank := @curRank + IF(@preNum = Num , 0, 1) as rank, @preNum := Num
from Logs s, (select @curRank := 0) r, (select @preNum := NULL) p
) as raw
group by raw.rank having count(*) >= 3
) as d


select IFNULL((select e.Salary from Employee e group by e.Salary order by e.Salary desc limit 1,1), NULL) secendSalary

DELIMITER //
CREATE FUNCTION getNthHighestSalary(N INT) RETURNS INT
BEGIN
  RETURN (
      # Write your MySQL query statement below.
      @NUM := N;
      select IFNULL( select e.Salary from Employee as e
      group by Salary order by e.Salary desc
      limit (@NUM  - 1),1), NULL) as Nth ;
  );
END //
DELIMITER ;
