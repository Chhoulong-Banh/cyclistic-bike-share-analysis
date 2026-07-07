-- Create Aggregation Views for Tableau (Performance Optimization)
-- Dashboarding directly on 5.5M rows is slow. Aggregating at the DB level is the professional way.
CREATE OR REPLACE VIEW v_agg_ride_metrics_by_user AS
SELECT 
    member_casual,
    day_of_week,
    hour_of_day,
    COUNT(ride_id) AS total_rides,
    AVG(ride_length_min) AS avg_ride_length
FROM v_analysis_ready_trips
GROUP BY member_casual, day_of_week, hour_of_day;