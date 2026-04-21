SELECT 
  CASE 
    WHEN bmi < 25 THEN 'Low BMI'
    WHEN bmi BETWEEN 25 AND 30 THEN 'Medium BMI'
    ELSE 'High BMI'
  END AS bmi_group,
  smoker,
  AVG(charges) AS avg_cost
FROM `claims-cost-analysis.insurance_project.insurance`
GROUP BY bmi_group, smoker;
