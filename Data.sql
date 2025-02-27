-- Saudi Tennis Federation Data Warehouse Setup Script
-- For Oracle LiveSQL
-- Created on February 27, 2025

-- Mohammed Al-Nuseirat
-- @MohaNuseirat

-- Create Date Dimension
CREATE TABLE dim_date (
    date_id NUMBER PRIMARY KEY,
    full_date DATE,
    day_of_week VARCHAR2(10),
    day_number_in_month NUMBER,
    day_number_in_year NUMBER,
    month_name VARCHAR2(10),
    month_number NUMBER,
    quarter_number NUMBER,
    year_number NUMBER
);

-- Create Location Dimension
CREATE TABLE dim_location (
    location_id NUMBER PRIMARY KEY,
    city_name VARCHAR2(100),
    region VARCHAR2(100),
    country VARCHAR2(100)
);

-- Create Club/Academy Dimension
CREATE TABLE dim_entity (
    entity_id NUMBER PRIMARY KEY,
    entity_name VARCHAR2(100),
    entity_type VARCHAR2(20) -- 'Club' or 'Academy'
);

INSERT INTO dim_entity (entity_id, entity_name, entity_type) VALUES (1, 'Al Anwar', 'Club');
INSERT INTO dim_entity (entity_id, entity_name, entity_type) VALUES (2, 'Uhud', 'Club');
INSERT INTO dim_entity (entity_id, entity_name, entity_type) VALUES (3, 'Al Ibtisam', 'Club');
INSERT INTO dim_entity (entity_id, entity_name, entity_type) VALUES (4, 'Al Ittihad', 'Club');
INSERT INTO dim_entity (entity_id, entity_name, entity_type) VALUES (5, 'Al Ettifaq', 'Club');
INSERT INTO dim_entity (entity_id, entity_name, entity_type) VALUES (6, 'Al Okhdood', 'Club');
INSERT INTO dim_entity (entity_id, entity_name, entity_type) VALUES (7, 'Al Artawi', 'Club');
INSERT INTO dim_entity (entity_id, entity_name, entity_type) VALUES (8, 'Al Etimad', 'Club');
INSERT INTO dim_entity (entity_id, entity_name, entity_type) VALUES (9, 'Al Aghar', 'Club');
INSERT INTO dim_entity (entity_id, entity_name, entity_type) VALUES (10, 'Al Ansar', 'Club');
INSERT INTO dim_entity (entity_id, entity_name, entity_type) VALUES (11, 'Al Intilaq', 'Club');
INSERT INTO dim_entity (entity_id, entity_name, entity_type) VALUES (12, 'Al Ahli', 'Club');
INSERT INTO dim_entity (entity_id, entity_name, entity_type) VALUES (13, 'Al Asyah', 'Club');
INSERT INTO dim_entity (entity_id, entity_name, entity_type) VALUES (14, 'Al Batin', 'Club');
INSERT INTO dim_entity (entity_id, entity_name, entity_type) VALUES (15, 'Al Badaie', 'Club');
INSERT INTO dim_entity (entity_id, entity_name, entity_type) VALUES (16, 'Al Bukayriyah', 'Club');
INSERT INTO dim_entity (entity_id, entity_name, entity_type) VALUES (17, 'Al Taraji', 'Club');
INSERT INTO dim_entity (entity_id, entity_name, entity_type) VALUES (18, 'Al Taawoun', 'Club');
INSERT INTO dim_entity (entity_id, entity_name, entity_type) VALUES (19, 'Al Taqadum', 'Club');
INSERT INTO dim_entity (entity_id, entity_name, entity_type) VALUES (20, 'Al Tuhami', 'Club');
INSERT INTO dim_entity (entity_id, entity_name, entity_type) VALUES (21, 'Al Thuqbah', 'Club');
INSERT INTO dim_entity (entity_id, entity_name, entity_type) VALUES (22, 'Al Jubail', 'Club');
INSERT INTO dim_entity (entity_id, entity_name, entity_type) VALUES (23, 'Al Jazirah', 'Club');
INSERT INTO dim_entity (entity_id, entity_name, entity_type) VALUES (24, 'Al Jandal', 'Club');
INSERT INTO dim_entity (entity_id, entity_name, entity_type) VALUES (25, 'Al Jawaa', 'Club');
INSERT INTO dim_entity (entity_id, entity_name, entity_type) VALUES (26, 'Al Jeel', 'Club');
INSERT INTO dim_entity (entity_id, entity_name, entity_type) VALUES (27, 'Al Hijaz', 'Club');
INSERT INTO dim_entity (entity_id, entity_name, entity_type) VALUES (28, 'Al Hareeq', 'Club');
INSERT INTO dim_entity (entity_id, entity_name, entity_type) VALUES (29, 'Al Hazm', 'Club');
INSERT INTO dim_entity (entity_id, entity_name, entity_type) VALUES (30, 'Al Hamadah', 'Club');
INSERT INTO dim_entity (entity_id, entity_name, entity_type) VALUES (31, 'Al Howraa', 'Club');
INSERT INTO dim_entity (entity_id, entity_name, entity_type) VALUES (32, 'Al Khubaraa', 'Club');
INSERT INTO dim_entity (entity_id, entity_name, entity_type) VALUES (33, 'Al Khulood', 'Club');
INSERT INTO dim_entity (entity_id, entity_name, entity_type) VALUES (34, 'Al Khaleej', 'Club');
INSERT INTO dim_entity (entity_id, entity_name, entity_type) VALUES (35, 'Al Khuwaldiyah', 'Club');
INSERT INTO dim_entity (entity_id, entity_name, entity_type) VALUES (36, 'Al Diraa', 'Club');
INSERT INTO dim_entity (entity_id, entity_name, entity_type) VALUES (37, 'Al Diriyah', 'Club');
INSERT INTO dim_entity (entity_id, entity_name, entity_type) VALUES (38, 'Al Raed', 'Club');
INSERT INTO dim_entity (entity_id, entity_name, entity_type) VALUES (39, 'Al Rawdah', 'Club');
INSERT INTO dim_entity (entity_id, entity_name, entity_type) VALUES (40, 'Al Riyadh', 'Club');
INSERT INTO dim_entity (entity_id, entity_name, entity_type) VALUES (41, 'Al Rayyan', 'Club');
INSERT INTO dim_entity (entity_id, entity_name, entity_type) VALUES (42, 'Al Zulfi', 'Club');
INSERT INTO dim_entity (entity_id, entity_name, entity_type) VALUES (43, 'Al Zaytoun', 'Club');
INSERT INTO dim_entity (entity_id, entity_name, entity_type) VALUES (44, 'Al Sadd', 'Club');
INSERT INTO dim_entity (entity_id, entity_name, entity_type) VALUES (45, 'Al Sirr', 'Club');
INSERT INTO dim_entity (entity_id, entity_name, entity_type) VALUES (46, 'Al Sarat', 'Club');
INSERT INTO dim_entity (entity_id, entity_name, entity_type) VALUES (47, 'Al Salam', 'Club');
INSERT INTO dim_entity (entity_id, entity_name, entity_type) VALUES (48, 'Al Silmiyah', 'Club');
INSERT INTO dim_entity (entity_id, entity_name, entity_type) VALUES (49, 'Al Shabab', 'Club');
INSERT INTO dim_entity (entity_id, entity_name, entity_type) VALUES (50, 'Al Shurooq', 'Club');
INSERT INTO dim_entity (entity_id, entity_name, entity_type) VALUES (51, 'Al Sholah', 'Club');
INSERT INTO dim_entity (entity_id, entity_name, entity_type) VALUES (52, 'Al Shuaib', 'Club');
INSERT INTO dim_entity (entity_id, entity_name, entity_type) VALUES (53, 'Al Sahari', 'Club');
INSERT INTO dim_entity (entity_id, entity_name, entity_type) VALUES (54, 'Al Safa', 'Club');
INSERT INTO dim_entity (entity_id, entity_name, entity_type) VALUES (55, 'Al Saqr', 'Club');
INSERT INTO dim_entity (entity_id, entity_name, entity_type) VALUES (56, 'Al Sawari', 'Club');
INSERT INTO dim_entity (entity_id, entity_name, entity_type) VALUES (57, 'Al Taie', 'Club');
INSERT INTO dim_entity (entity_id, entity_name, entity_type) VALUES (58, 'Al Tarf', 'Club');
INSERT INTO dim_entity (entity_id, entity_name, entity_type) VALUES (59, 'Al Adalah', 'Club');
INSERT INTO dim_entity (entity_id, entity_name, entity_type) VALUES (60, 'Al Arabi', 'Club');
INSERT INTO dim_entity (entity_id, entity_name, entity_type) VALUES (61, 'Al Ardh', 'Club');
INSERT INTO dim_entity (entity_id, entity_name, entity_type) VALUES (62, 'Al Orobah', 'Club');
INSERT INTO dim_entity (entity_id, entity_name, entity_type) VALUES (63, 'Al Areen', 'Club');
INSERT INTO dim_entity (entity_id, entity_name, entity_type) VALUES (64, 'Al Ula', 'Club');
INSERT INTO dim_entity (entity_id, entity_name, entity_type) VALUES (65, 'Al Omran', 'Club');
INSERT INTO dim_entity (entity_id, entity_name, entity_type) VALUES (66, 'Al Ain', 'Club');
INSERT INTO dim_entity (entity_id, entity_name, entity_type) VALUES (67, 'Al Oyoon', 'Club');
INSERT INTO dim_entity (entity_id, entity_name, entity_type) VALUES (68, 'Al Ghazwah', 'Club');
INSERT INTO dim_entity (entity_id, entity_name, entity_type) VALUES (69, 'Al Ghoutah', 'Club');
INSERT INTO dim_entity (entity_id, entity_name, entity_type) VALUES (70, 'Al Farouq', 'Club');
INSERT INTO dim_entity (entity_id, entity_name, entity_type) VALUES (71, 'Al Fateh', 'Club');
INSERT INTO dim_entity (entity_id, entity_name, entity_type) VALUES (72, 'Al Fursan', 'Club');
INSERT INTO dim_entity (entity_id, entity_name, entity_type) VALUES (73, 'Al Fayha', 'Club');
INSERT INTO dim_entity (entity_id, entity_name, entity_type) VALUES (74, 'Al Faisaly', 'Club');
INSERT INTO dim_entity (entity_id, entity_name, entity_type) VALUES (75, 'Al Qadisiyah', 'Club');
INSERT INTO dim_entity (entity_id, entity_name, entity_type) VALUES (76, 'Al Qarah', 'Club');
INSERT INTO dim_entity (entity_id, entity_name, entity_type) VALUES (77, 'Al Qalah', 'Club');
INSERT INTO dim_entity (entity_id, entity_name, entity_type) VALUES (78, 'Al Qawarah', 'Club');
INSERT INTO dim_entity (entity_id, entity_name, entity_type) VALUES (79, 'Al Qaws', 'Club');
INSERT INTO dim_entity (entity_id, entity_name, entity_type) VALUES (80, 'Al Qaisumah', 'Club');
INSERT INTO dim_entity (entity_id, entity_name, entity_type) VALUES (81, 'Al Liwaa', 'Club');
INSERT INTO dim_entity (entity_id, entity_name, entity_type) VALUES (82, 'Al Laith', 'Club');
INSERT INTO dim_entity (entity_id, entity_name, entity_type) VALUES (83, 'Al Majd', 'Club');
INSERT INTO dim_entity (entity_id, entity_name, entity_type) VALUES (84, 'Al Mijzal', 'Club');
INSERT INTO dim_entity (entity_id, entity_name, entity_type) VALUES (85, 'Al Muheet', 'Club');
INSERT INTO dim_entity (entity_id, entity_name, entity_type) VALUES (86, 'Al Muzahmiyah', 'Club');
INSERT INTO dim_entity (entity_id, entity_name, entity_type) VALUES (87, 'Al Masyaf', 'Club');
INSERT INTO dim_entity (entity_id, entity_name, entity_type) VALUES (88, 'Al Najmah', 'Club');
INSERT INTO dim_entity (entity_id, entity_name, entity_type) VALUES (89, 'Al Nujoom', 'Club');
INSERT INTO dim_entity (entity_id, entity_name, entity_type) VALUES (90, 'Al Nasr', 'Club');
INSERT INTO dim_entity (entity_id, entity_name, entity_type) VALUES (91, 'Al Nahda', 'Club');
INSERT INTO dim_entity (entity_id, entity_name, entity_type) VALUES (92, 'Al Hidayah', 'Club');
INSERT INTO dim_entity (entity_id, entity_name, entity_type) VALUES (93, 'Al Huda', 'Club');
INSERT INTO dim_entity (entity_id, entity_name, entity_type) VALUES (94, 'Al Hilal', 'Club');
INSERT INTO dim_entity (entity_id, entity_name, entity_type) VALUES (95, 'Al Hilaliyah', 'Club');
INSERT INTO dim_entity (entity_id, entity_name, entity_type) VALUES (96, 'Al Wadi', 'Club');
INSERT INTO dim_entity (entity_id, entity_name, entity_type) VALUES (97, 'Al Wehda', 'Club');
INSERT INTO dim_entity (entity_id, entity_name, entity_type) VALUES (98, 'Al Washm', 'Club');
INSERT INTO dim_entity (entity_id, entity_name, entity_type) VALUES (99, 'Al Watan', 'Club');
INSERT INTO dim_entity (entity_id, entity_name, entity_type) VALUES (100, 'Al Watani', 'Club');
INSERT INTO dim_entity (entity_id, entity_name, entity_type) VALUES (101, 'Al Yarmouk', 'Club');
INSERT INTO dim_entity (entity_id, entity_name, entity_type) VALUES (102, 'Abha', 'Club');
INSERT INTO dim_entity (entity_id, entity_name, entity_type) VALUES (103, 'Ashiqar', 'Club');
INSERT INTO dim_entity (entity_id, entity_name, entity_type) VALUES (104, 'Baysh', 'Club');
INSERT INTO dim_entity (entity_id, entity_name, entity_type) VALUES (105, 'Tayma', 'Club');
INSERT INTO dim_entity (entity_id, entity_name, entity_type) VALUES (106, 'Jubbah', 'Club');
INSERT INTO dim_entity (entity_id, entity_name, entity_type) VALUES (107, 'Jeddah', 'Club');
INSERT INTO dim_entity (entity_id, entity_name, entity_type) VALUES (108, 'Jerash', 'Club');
INSERT INTO dim_entity (entity_id, entity_name, entity_type) VALUES (109, 'Hira', 'Club');
INSERT INTO dim_entity (entity_id, entity_name, entity_type) VALUES (110, 'Ohod', 'Club');
INSERT INTO dim_entity (entity_id, entity_name, entity_type) VALUES (111, 'Khaybar', 'Club');
INSERT INTO dim_entity (entity_id, entity_name, entity_type) VALUES (112, 'Ras Tanura', 'Club');
INSERT INTO dim_entity (entity_id, entity_name, entity_type) VALUES (113, 'Radwa', 'Club');
INSERT INTO dim_entity (entity_id, entity_name, entity_type) VALUES (114, 'Sajir', 'Club');
INSERT INTO dim_entity (entity_id, entity_name, entity_type) VALUES (115, 'Sadus', 'Club');
INSERT INTO dim_entity (entity_id, entity_name, entity_type) VALUES (116, 'Sudair', 'Club');
INSERT INTO dim_entity (entity_id, entity_name, entity_type) VALUES (117, 'Sumaira', 'Club');
INSERT INTO dim_entity (entity_id, entity_name, entity_type) VALUES (118, 'Damak', 'Club');
INSERT INTO dim_entity (entity_id, entity_name, entity_type) VALUES (119, 'Tabarjal', 'Club');
INSERT INTO dim_entity (entity_id, entity_name, entity_type) VALUES (120, 'Tuwaiq', 'Club');
INSERT INTO dim_entity (entity_id, entity_name, entity_type) VALUES (121, 'Arar', 'Club');
INSERT INTO dim_entity (entity_id, entity_name, entity_type) VALUES (122, 'Afif', 'Club');
INSERT INTO dim_entity (entity_id, entity_name, entity_type) VALUES (123, 'Okaz', 'Club');
INSERT INTO dim_entity (entity_id, entity_name, entity_type) VALUES (124, 'Faid', 'Club');
INSERT INTO dim_entity (entity_id, entity_name, entity_type) VALUES (125, 'Fifa', 'Club');
INSERT INTO dim_entity (entity_id, entity_name, entity_type) VALUES (126, 'Qifar', 'Club');
INSERT INTO dim_entity (entity_id, entity_name, entity_type) VALUES (127, 'Kumait', 'Club');
INSERT INTO dim_entity (entity_id, entity_name, entity_type) VALUES (128, 'Masadah', 'Club');
INSERT INTO dim_entity (entity_id, entity_name, entity_type) VALUES (129, 'Mudar', 'Club');
INSERT INTO dim_entity (entity_id, entity_name, entity_type) VALUES (130, 'Najd', 'Club');
INSERT INTO dim_entity (entity_id, entity_name, entity_type) VALUES (131, 'NEOM', 'Club');
INSERT INTO dim_entity (entity_id, entity_name, entity_type) VALUES (132, 'Hajar', 'Club');
INSERT INTO dim_entity (entity_id, entity_name, entity_type) VALUES (133, 'Tennis Point', 'Academy');
INSERT INTO dim_entity (entity_id, entity_name, entity_type) VALUES (134, 'Fighters', 'Academy');
INSERT INTO dim_entity (entity_id, entity_name, entity_type) VALUES (135, 'Match Point', 'Academy');
INSERT INTO dim_entity (entity_id, entity_name, entity_type) VALUES (136, 'N Tennis', 'Academy');
INSERT INTO dim_entity (entity_id, entity_name, entity_type) VALUES (137, 'DJTA - Dhahran Aramco Academy', 'Academy');
INSERT INTO dim_entity (entity_id, entity_name, entity_type) VALUES (138, 'Smash', 'Academy');
INSERT INTO dim_entity (entity_id, entity_name, entity_type) VALUES (139, 'DQ', 'Academy');
INSERT INTO dim_entity (entity_id, entity_name, entity_type) VALUES (140, 'Red Sea', 'Academy');

CREATE TABLE dim_personnel (
    personnel_id NUMBER PRIMARY KEY,
    role_type VARCHAR2(20), -- 'Player', 'Coach', or 'Referee'
    name VARCHAR2(100),
    gender VARCHAR2(10),
    birth_date DATE,
    nationality VARCHAR2(50)
);


-- Federation Statistics Fact Table
CREATE TABLE fact_federation_stats (
    stats_id NUMBER PRIMARY KEY,
    date_id NUMBER,
    total_players NUMBER,
    total_coaches NUMBER,
    total_referees NUMBER,
    total_clubs NUMBER,
    total_academies NUMBER,
    CONSTRAINT fk_fed_stats_date FOREIGN KEY (date_id) REFERENCES dim_date(date_id)
);

INSERT INTO fact_federation_stats (
    stats_id,
    date_id,
    total_players,
    total_coaches,
    total_referees,
    total_clubs,
    total_academies
) VALUES (
    1,
    TO_CHAR(SYSDATE, 'YYYYMMDD'),
    2551, -- Number of players
    355,  -- Number of coaches
    216,  -- Number of referees
    132,  -- Number of clubs
    8     -- Number of academies 
);


-- View for overall statistics
CREATE OR REPLACE VIEW vw_federation_overview AS
SELECT
    d.full_date,
    f.total_players,
    f.total_coaches,
    f.total_referees,
    f.total_clubs,
    f.total_academies,
    ROUND(f.total_coaches / f.total_players * 100, 2) AS coach_to_player_ratio_pct,
    ROUND(f.total_referees / f.total_players * 100, 2) AS referee_to_player_ratio_pct
FROM
    fact_federation_stats f
JOIN
    dim_date d ON f.date_id = d.date_id;

-- View for club and academy listing
CREATE OR REPLACE VIEW vw_entity_listing AS
SELECT
    entity_id,
    entity_name,
    entity_type,
    CASE 
        WHEN entity_type = 'Club' THEN 'نادي'
        WHEN entity_type = 'Academy' THEN 'اكاديمية'
    END AS entity_type_arabic
FROM
    dim_entity
ORDER BY
    entity_type, entity_name;

-- Comment on tables and views
COMMENT ON TABLE dim_date IS 'Date dimension for the Saudi Tennis Federation data warehouse';
COMMENT ON TABLE dim_location IS 'Location dimension for the Saudi Tennis Federation data warehouse';
COMMENT ON TABLE dim_entity IS 'Club and Academy dimension for the Saudi Tennis Federation data warehouse';
COMMENT ON TABLE dim_personnel IS 'Personnel dimension for players, coaches, and referees';
COMMENT ON TABLE fact_federation_stats IS 'Federation statistics fact table';
COMMENT ON VIEW vw_federation_overview IS 'Overview of Saudi Tennis Federation statistics';
COMMENT ON VIEW vw_entity_listing IS 'Listing of all clubs and academies with translations';

-- Sample queries for reporting


CREATE OR REPLACE PROCEDURE update_federation_stats(
    p_players NUMBER,
    p_coaches NUMBER,
    p_referees NUMBER,
    p_clubs NUMBER,
    p_academies NUMBER
) AS
    v_date_id NUMBER := TO_CHAR(SYSDATE, 'YYYYMMDD');
    v_next_id NUMBER;
BEGIN
    -- Get next stats ID
    SELECT NVL(MAX(stats_id), 0) + 1 INTO v_next_id FROM fact_federation_stats;
    
    -- Insert new record
    INSERT INTO fact_federation_stats (
        stats_id,
        date_id,
        total_players,
        total_coaches,
        total_referees,
        total_clubs,
        total_academies
    ) VALUES (
        v_next_id,
        v_date_id,
        p_players,
        p_coaches,
        p_referees,
        p_clubs,
        p_academies
    );
    
    COMMIT;
    
    DBMS_OUTPUT.PUT_LINE('Federation statistics updated successfully.');
EXCEPTION
    WHEN OTHERS THEN
        ROLLBACK;
        DBMS_OUTPUT.PUT_LINE('Error updating federation statistics: ' || SQLERRM);
END update_federation_stats;
/


