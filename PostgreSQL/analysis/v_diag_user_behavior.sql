-- 2. Diagnostic Model: Usage Intensity & Conversion Propensity
CREATE OR REPLACE VIEW v_diag_user_behavior AS
SELECT 
    member_casual,
    -- Identifying high-value casual riders who are "overpaying"
    CASE 
        WHEN ride_length_min > (SELECT AVG(ride_length_min) FROM v_analysis_ready_trips) 
        THEN 'High-Duration Rider' 
        ELSE 'Standard Rider' 
    END AS duration_category,
    COUNT(ride_id) AS total_trips,
    AVG(ride_length_min) AS avg_duration
FROM v_analysis_ready_trips
GROUP BY member_casual, duration_category;