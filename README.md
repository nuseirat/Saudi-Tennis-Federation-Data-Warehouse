# Saudi Tennis Federation Data Warehouse

## Overview
This repository contains SQL scripts to set up a comprehensive data warehouse for the Saudi Tennis Federation. The data warehouse organizes information about players, coaches, referees, clubs, and academies registered with the federation. The structure follows a dimensional model design pattern (star schema) optimized for analytical queries and reporting.

![Image](https://github.com/user-attachments/assets/d57e4b7f-7ded-41fd-9d59-72ba851f242b)


## Data Description
The data warehouse contains the following federation statistics:
- **Players**: 2,551 registered players
- **Coaches**: 355 registered coaches
- **Referees**: 216 registered referees
- **Clubs**: 132 registered clubs
- **Academies**: 8 registered academies

## Database Schema

### Dimension Tables
1. **dim_date**: Time dimension for tracking statistics over time
   - Includes date hierarchies (day, month, quarter, year)
   - Supports time-based analysis and reporting

2. **dim_location**: Geographic dimension for spatial analysis
   - Designed for future location-based analytics
   - Includes city, region, and country fields

3. **dim_entity**: Contains all tennis clubs and academies
   - 140 total entities (132 clubs and 8 academies)
   - Each entity has a unique identifier, name, and type

4. **dim_personnel**: Structure for individual people data
   - Supports role-based categorization (player, coach, referee)
   - Includes demographic information

### Fact Tables
1. **fact_federation_stats**: Contains aggregated statistics
   - Links to the date dimension for temporal tracking
   - Stores count metrics for all major entity types
   - Supports historical tracking of federation growth

### Views
1. **vw_federation_overview**: Provides summary statistics with calculated ratios
   - Coach-to-player ratio
   - Referee-to-player ratio
   - Overall federation metrics

2. **vw_entity_listing**: Lists all clubs and academies
   - Includes both English and Arabic entity type labels
   - Sorted by entity type and name for easy browsing

## Sample Queries

### Get Overall Federation Statistics
```sql
SELECT * FROM vw_federation_overview;
```

### Count Entities by Type
```sql
SELECT entity_type, COUNT(*) as count 
FROM dim_entity 
GROUP BY entity_type;
```

### Calculate Coach to Player Ratio
```sql
SELECT ROUND(total_coaches / total_players * 100, 2) AS coach_player_ratio_percentage 
FROM fact_federation_stats 
WHERE stats_id = 1;
```

### List All Clubs
```sql
SELECT entity_id, entity_name 
FROM dim_entity 
WHERE entity_type = 'Club' 
ORDER BY entity_name;
```

### List All Academies
```sql
SELECT entity_id, entity_name 
FROM dim_entity 
WHERE entity_type = 'Academy' 
ORDER BY entity_name;
```

## Data Maintenance

The data warehouse includes a stored procedure for updating statistics:

```sql
-- Example usage
EXEC update_federation_stats(
    p_players => 2600,    -- New total player count
    p_coaches => 360,     -- New total coach count
    p_referees => 220,    -- New total referee count
    p_clubs => 135,       -- New total club count
    p_academies => 10     -- New total academy count
);
```

## Setup Instructions

 **Verify Installation**
   - Run `SELECT table_name FROM user_tables;` to confirm all tables were created
   - Run `SELECT * FROM vw_federation_overview;` to view federation statistics

## Entity List

The data warehouse contains 140 entities (132 clubs and 8 academies). Some notable examples:

### Major Clubs
- Al Hilal
- Al Nasr
- Al Ittihad
- Al Ahli
- Al Shabab
- NEOM

### Academies
- Tennis Point
- Match Point
- DJTA - Dhahran Aramco Academy
- Red Sea
- Fighters

## Future Enhancements

The current data warehouse can be extended in several ways:

1. **Add Player Performance Metrics**
   - Track match results, rankings, and performance over time

2. **Geospatial Analysis**
   - Add coordinates to enable geographic visualization and analysis

3. **Tournament Management**
   - Add tournament dimensions and facts to track competition results

4. **Training Programs**
   - Track coaching programs, participants, and outcomes

5. **Equipment and Facilities**
   - Add dimensions for managing tennis facilities and equipment

## License
This project is licensed under the MIT License - see the LICENSE file for details.
