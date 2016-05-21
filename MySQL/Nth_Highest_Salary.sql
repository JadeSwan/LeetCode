if funciton getNthHighestSalary exist drop function getNthHighestSalary;
DELIMITER //
CREATE FUNCTION getNthHighestSalary(N INT) RETURNS INT
BEGIN
  RETURN (
      # Write your MySQL query statement below.
      select IFNULL( select e.Salary from Employee as e
      group by Salary order by e.Salary desc
      limit (N - 1),1), NULL) as Nth ;
  );
END //
DELIMITER ;
