/*
  Query to calculate the average HbA1c Control measure value
  for each provider during the year 2023.

  - Filters records to only include those with measure_name = 'HbA1c Control'
  - Restricts data to dates within 2023
  - Groups results by provider_id
  - Calculates average measure_value per provider
*/

SELECT
    provider_id,
    AVG(measure_value) as avg_measure_value
FROM
    quality_measures
WHERE
    measure_name = 'HbA1c Control' AND
    measure_date BETWEEN '2023-01-01' AND '2023-12-31'
GROUP BY
    provider_id;