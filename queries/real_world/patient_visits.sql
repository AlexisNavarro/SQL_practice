--  Real world query to find the percentage rate where a follow up was required for each provider
-- Within the year of 2024
SELECT
    provider_id,
    (COUNT(Case when follow_up_required = True Then 1 End) *100.0) / Count(*) as follow_up_rate
FROM
    patient_visits
WHERE
    visit_date BETWEEN '2024-01-01' and '2024-12-31'
Group by 
    provider_id;