/* * DATA SUITABILITY AUDIT SCRIPT
 * Target: stg_cyclistic_trips
 * Purpose: Validate data health for Hypothesis A, B, and C
 */

-- 1. Check for missing values in critical columns
-- Any NULL values here will skew your aggregations for the business report.
SELECT 
    COUNT(*) AS total_rows,
    COUNT(ride_id) AS ride_id_count,
    COUNT(started_at) AS started_at_count,
    COUNT(ended_at) AS ended_at_count,
    COUNT(start_station_name) AS start_station_count,
    COUNT(end_station_name) AS end_station_count,
    COUNT(member_casual) AS member_type_count
FROM stg_cyclistic_trips;

-- 2. Audit Temporal Data Integrity (Hypothesis A & B)
-- Checking for negative or impossible durations (e.g., end time before start time).
SELECT 
    COUNT(*) AS invalid_duration_count
FROM stg_cyclistic_trips
WHERE (EXTRACT(EPOCH FROM (ended_at - started_at)) / 60) <= 0;

-- 3. Audit Spatial Integrity (Hypothesis C)
-- Checking for consistent station naming and nulls in geospatial data.
SELECT 
    start_station_name, 
    COUNT(*) AS trip_count
FROM stg_cyclistic_trips
WHERE start_station_name IS NULL
GROUP BY start_station_name;

-- 4. Check for Outliers (Duration Analysis)
-- Identifying extremely long or short rides that might be system test data.
SELECT 
    MIN(EXTRACT(EPOCH FROM (ended_at - started_at)) / 60) AS min_duration,
    MAX(EXTRACT(EPOCH FROM (ended_at - started_at)) / 60) AS max_duration,
    AVG(EXTRACT(EPOCH FROM (ended_at - started_at)) / 60) AS avg_duration
FROM stg_cyclistic_trips;