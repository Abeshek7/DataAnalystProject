SELECT 
      ID,
	  Name AS 'Competitor Name',
	  CASE WHEN Sex = 'M' THEN 'Male' ELSE 'Female' END AS Sex,
	  Age,
	  CASE WHEN Age <18 THEN 'Under 18'
	       WHEN Age BETWEEN 18 AND 25 THEN '18-25'
		   WHEN Age BETWEEN 25 AND 30 THEN '25-30'
		   WHEN Age >30 THEN 'Over 30'
		   END AS Age_Grouping,
	  Height,
	  Weight,
	  NOC AS 'Nation Code',
	  LEFT(Games,4) AS 'Year',
	  RIGHT(Games,6) AS 'Season',
	  Games,
	  Sport,
	  Event,
	  CASE WHEN Medal= 'NA' THEN 'Not Registered' ELSE Medal END as Medal
	  FROM [dbo].[athletes_event_results]
	  WHERE Games LIKE '%Summer%'
