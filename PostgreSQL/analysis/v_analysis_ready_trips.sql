-- Create a View for "Analysis-Ready" Trip Data
-- This view filters out the anomalies found in the audit and adds derived metrics.
CREATE OR REPLACE VIEW v_analysis_ready_trips AS
SELECT 
    ride_id,
    rideable_type,
    started_at,
    ended_at,
    member_casual,
    -- Calculate duration in minutes, filtering for valid rides
    EXTRACT(EPOCH FROM (ended_at - started_at)) / 60 AS ride_length_min,
    -- Extract time-based features for Hypothesis B
    EXTRACT(DOW FROM started_at) AS day_of_week,
    EXTRACT(HOUR FROM started_at) AS hour_of_day,
    TO_CHAR(started_at, 'Month') AS ride_month,
    start_station_name,
    end_station_name
FROM stg_cyclistic_trips
WHERE (ended_at - started_at) > '00:00:00' -- Excludes invalid durations
  AND (ended_at - started_at) < '24:00:00'; -- Excludes "forgotten bike" outliers (e.g., > 24 hours)