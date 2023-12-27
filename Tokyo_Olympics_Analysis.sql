--count number athletes from each country

SELECT NOC, COUNT(*) AS TotalAthlets
FROM athletes
GROUP BY NOC
ORDER BY TotalAthlets DESC;

-- calculate total no of medals by each country

SELECT TeamName, SUM(Gold) as Total_Gold, SUM(Silver) as Total_Silver, SUM(Bronze) as Total_Bronze
FROM MEDALS 
GROUP by TeamName
ORDER by Total_Gold DESC;

-- calculate avg number of entries by gender for each discipline

SELECT Discipline, AVG(Female) as Avg_Female, AVG(MALE) as Avg_male
FROM entriesgender
GROUP by Discipline
ORDER BY Avg_Female;