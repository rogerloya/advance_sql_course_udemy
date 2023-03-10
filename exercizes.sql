
-- 2. Subqueries and CTEs

-- Find the average number of orders per encounter by provider/physician.

-- Find encounters with any of the top 10 most common order codes.

-- Find accounts with a total account balance over $10,000 and at least one ICU encounter.

-- Find encounters for patients born on or after 1995-01-01 whose length of stay is greater than or equal to the average surgical length of stay for patients 65 or older.

-- ******************************************************************************

-- 3. Window Functions
-- Find all surgeries that occurred within 30 days of a previous surgery.

-- For each department, find the 3 physicians with the most admissions.

-- For each surgery, find any resources that accounted for more than 50% of total surgery cost.

-- ******************************************************************************

-- 4. Advanced Joins
-- Find all combinations of physicians and practices in the database.

-- Find the average blood pressure (systolic and diastolic) by admitting provider.

-- Find the number of surgeries in the surgical costs table without data in the surgical encounters table.

-- ******************************************************************************

-- 5. Set Operations
-- Generate a list of all physicians and physician types on the encounters table (including thei names).

-- Find all primary care physicians (PCPs) who also are admitting providers.

-- Determine whether there are any surgeons in the surgical_encounters table who are not in the physicians table.

-- ******************************************************************************

-- 6. Grouping Sets
-- Find the average pulse and average body surface area by weight, height, and weight/height.

-- Generate a report on surgical admissions by year, month, and day using ROLLUP.

-- Generate a report on the number of patients by primary language, citizenship, primary language/citizenship, and primary language/ehtnicity.

-- ******************************************************************************

-- 7. Schema Structure
-- Add a comment for admitting ICD and verify that it was added. (ICD = International Classification of Diseases)

-- Add NOT NULL constraint on surgical_admission_date field.

-- Add constraint to ensure that patient_discharge_datetime is after patient_admission_datetime OR empty.

-- Verify the constriants were added. (Hint: look at the information_schema.)

-- Drop the previously created constraints.

-- ******************************************************************************

-- 8. Transations
-- Revert our update to the physicians table inside a transaction using LOCK TABLE.
  -- Krollman, Bill -> Krollman, Gage
  
-- Try dropping a table inside a transaction with ROLLBACK and confirm the table was not dropped.

