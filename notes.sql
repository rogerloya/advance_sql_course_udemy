
-- 2. Subqueries and CTEs
	-- 6. Subqueries in FROM Statements
select * from 
	(select * from patients
	where date_of_birth >= '2000-01-01'
	order by master_patient_id) p
where p.name ilike 'm%';

		--Select surgeries for Nov 2016 for patients born after 1990
select se.* from
(select * from surgical_encounters
	where surgical_admission_date 
	between '2016-11-01' and '2016-11-30') se
inner join (
	select master_patient_id from patients
	where date_of_birth >= '1990-01-01') p
on se.master_patient_id = p.master_patient_id;

	-- 7. Common Table Expressions
with young_patients as (
	select * 
	from patients
	where date_of_birth >= '2000-01-01'
)
select * 
from young_patients
where name ilike 'm%';

		--# of surgeries by county with more than 1,500 patients
with top_counties as (
		select 
			county, 
			count(*) as num_patients
		from patients
		group by county
		having count(*) > 1500
	),
	county_patients as (
		select 
			p.master_patient_id, 
			p.county
		from patients p
		inner join top_counties t on 
			p.county = t.county)
select 
	p.county, 
	count(s.surgery_id) as num_surgeries
from surgical_encounters s
inner join county_patients p on
	s.master_patient_id = p.master_patient_id
group by p.county;


-- ******************************************************************************

-- 3. Window Functions


-- ******************************************************************************

-- 4. Advanced Joins


-- ******************************************************************************

-- 5. Set Operations


-- ******************************************************************************

-- 6. Grouping Sets


-- ******************************************************************************

-- 7. Schema Structure


-- ******************************************************************************

-- 8. Transations


