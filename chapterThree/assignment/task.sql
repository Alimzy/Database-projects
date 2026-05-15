USE weatherApp_db;
CREATE TABLE locations(
	id int auto_increment PRIMARY KEY,
    name varchar(40),
    country varchar(30), 
    region varchar(30),
    lat varchar(30),
	lon varchar(30),
    timezoneId varchar(30),
    loc_time TIME,
    localtime_epoch int,
	utc_offset varchar(30)
);

CREATE TABLE current_weather (
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    observation_time VARCHAR(50),
    temperature INT,
    weather_code INT,
    weather_icons JSON,
    weather_descriptions JSON,
    wind_speed INT,
    wind_degree INT,
    wind_dir VARCHAR(10),
    pressure INT,
    precip DOUBLE,
    humidity INT,
    cloudcover INT,
    feelslike INT,
    uv_index INT,
    visibility INT,
    is_day VARCHAR(10),
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE IF NOT EXISTS weather_data (
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    location_id int,
    current_id BIGINT,
    fetched_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    CONSTRAINT fk_location FOREIGN KEY (location_id) 
        REFERENCES locations(id) ON DELETE CASCADE,
    CONSTRAINT fk_current FOREIGN KEY (current_id) 
        REFERENCES current_weather(id) ON DELETE CASCADE
);
