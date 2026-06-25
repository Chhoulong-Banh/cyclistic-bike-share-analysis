-- 1. Infrastructure: Staging Table for Clean Data
-- We define 'ride_id' as the PRIMARY KEY. If you attempt to insert a duplicate 'ride_id',
-- the database will raise an error that our Python code can now cleanly catch and ignore.
CREATE TABLE IF NOT EXISTS stg_cyclistic_trips (
    ride_id VARCHAR(255) PRIMARY KEY,
    rideable_type VARCHAR(100),
    started_at TIMESTAMP,
    ended_at TIMESTAMP,
    start_station_name VARCHAR(255),
    start_station_id VARCHAR(100),
    end_station_name VARCHAR(255),
    end_station_id VARCHAR(100),
    start_lat NUMERIC(10, 8),
    start_lng NUMERIC(11, 8),
    end_lat NUMERIC(10, 8),
    end_lng NUMERIC(11, 8),
    member_casual VARCHAR(50)
);

-- 2. Infrastructure: Quarantine Log for Dirty Data
-- This table is decoupled from production, preserving the forensic row data for audit.
CREATE TABLE IF NOT EXISTS error_quarantine_log (
    quarantine_id UUID PRIMARY KEY,
    ride_id VARCHAR(255),
    file_name VARCHAR(255),
    failed_column VARCHAR(100),
    error_justification TEXT,
    row_data JSONB,
    status VARCHAR(20) DEFAULT 'PENDING',
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- 3. Operational State Machine: Job Progress Registry
-- This tracks file status. The 'status' column allows our Python script to know
-- whether a file is IN-PROGRESS, SUCCESS, or FAILED.
CREATE TABLE IF NOT EXISTS job_log (
    file_name VARCHAR(255) PRIMARY KEY,
    processed_at TIMESTAMP,
    status VARCHAR(20),
    total_records INTEGER DEFAULT 0,
    passed_records INTEGER DEFAULT 0,
    quarantined_records INTEGER DEFAULT 0
);