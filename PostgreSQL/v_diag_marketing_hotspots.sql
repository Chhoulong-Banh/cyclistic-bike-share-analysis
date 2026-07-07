-- 3. Diagnostic Model: Temporal & Spatial Hotspots
CREATE OR REPLACE VIEW v_diag_marketing_hotspots AS
SELECT 
    start_station_name,
    member_casual,
    day_of_week,
    hour_of_day,
    COUNT(ride_id) AS trip_volume
FROM v_analysis_ready_trips
WHERE member_casual = 'casual' -- Focus on potential conversion targets
GROUP BY start_station_name, member_casual, day_of_week, hour_of_day
ORDER BY trip_volume DESC;