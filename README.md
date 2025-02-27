# Saudi Tennis Federation Data Warehouse

![Image](https://github.com/user-attachments/assets/896afef6-6dfe-4b8a-bc86-b4a10ace5dc8)

## Overview
This SQL script creates and populates a database containing referees, coaches, players, and football clubs/academies. It is designed to be used for managing football-related entities and statistics.

![Image](https://github.com/user-attachments/assets/dd667924-4c15-4fb9-9e01-5421311d1697)

![Image](https://github.com/user-attachments/assets/1430a611-58d8-476c-aab5-413b24530193)


## Database Structure

### Tables:
- **Referees**: Stores the total number of referees.
- **Coaches**: Stores the total number of coaches.
- **Players**: Stores the total number of players.
- **Clubs_Academies**: Stores information about clubs and academies.

## SQL Schema
```sql
CREATE TABLE Referees (
    id INT PRIMARY KEY AUTO_INCREMENT,
    total_referees INT NOT NULL
);

CREATE TABLE Coaches (
    id INT PRIMARY KEY AUTO_INCREMENT,
    total_coaches INT NOT NULL
);

CREATE TABLE Players (
    id INT PRIMARY KEY AUTO_INCREMENT,
    total_players INT NOT NULL
);

CREATE TABLE Clubs_Academies (
    id INT PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    type ENUM('Club', 'Academy') NOT NULL
);
```

## Sample Data
```sql
INSERT INTO Referees (total_referees) VALUES (216);
INSERT INTO Coaches (total_coaches) VALUES (355);
INSERT INTO Players (total_players) VALUES (2551);

INSERT INTO Clubs_Academies (id, name, type) VALUES (1, 'الانوار', 'Club');
INSERT INTO Clubs_Academies (id, name, type) VALUES (2, 'احد', 'Club');
INSERT INTO Clubs_Academies (id, name, type) VALUES (3, 'الابتسام', 'Club');
INSERT INTO Clubs_Academies (id, name, type) VALUES (4, 'الاتحاد', 'Club');
INSERT INTO Clubs_Academies (id, name, type) VALUES (5, 'الاتفاق', 'Club');
...
```

## Usage Instructions
1. Copy and paste the SQL schema into your MySQL or MariaDB database.
2. Run the insert queries to populate the tables with sample data.
3. Use SQL queries to retrieve, update, or analyze data as needed.

## Notes
- The `id` column in `Clubs_Academies` must be unique.
- The `type` column allows only 'Club' or 'Academy'.
- Modify or expand the dataset as needed for additional functionality.

## License
This dataset is provided under the MIT License. Feel free to use and modify it for your projects.

