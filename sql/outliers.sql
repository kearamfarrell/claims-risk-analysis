SELECT *
FROM `claims-cost-analysis.insurance_project.insurance`
WHERE charges > (
  SELECT APPROX_QUANTILES(charges, 100)[OFFSET(95)]
  FROM `claims-cost-analysis.insurance_project.insurance`
);
