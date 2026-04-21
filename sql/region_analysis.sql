SELECT region,
  smoker,
  AVG(charges) AS avg_cost
FROM `claims-cost-analysis.insurance_project.insurance`
GROUP BY region, smoker;
