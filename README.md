# 🎮 Number Guessing Game Database

<p align="center">
  <img src="https://img.shields.io/badge/PostgreSQL-Database-336791?style=for-the-badge&logo=postgresql&logoColor=white" alt="PostgreSQL"/>
  <img src="https://img.shields.io/badge/Bash-Scripting-4EAA25?style=for-the-badge&logo=gnubash&logoColor=white" alt="Bash"/>
  <img src="https://img.shields.io/badge/SQL-Relational%20Database-4479A1?style=for-the-badge&logo=postgresql&logoColor=white" alt="SQL"/>
  <img src="https://img.shields.io/badge/freeCodeCamp-Relational%20Database-0A0A23?style=for-the-badge&logo=freecodecamp&logoColor=white" alt="freeCodeCamp"/>
</p>

A Bash-based number guessing game built for the **freeCodeCamp Relational Database Certification**.

The game generates a random secret number between 1 and 1000 and allows users to guess it through the command line. PostgreSQL stores user information and game history, allowing returning players to view their total games played and best game.

<br>

## 🗂️ Database Structure

The database contains two related tables: `users` stores usernames and unique user identifiers, while `games` stores game records, including the number of guesses taken to find the secret number.

| **Table** | **Keys** | **Main Columns** |
|---|---|---|
| `users` | **PK:** `user_id` · **Unique:** `username` | `user_id`, `username` |
| `games` | **PK:** `game_id` · **FK:** `user_id` | `game_id`, `user_id`, `number_of_guesses` |

<br>

## 🛠️ Tools & Technologies

- **Bash** - Shell scripting and game logic
- **PostgreSQL** - Relational database management system
- **SQL** - Database queries and data manipulation
- **`psql`** - PostgreSQL command-line client
- **`pg_dump`** - Database backup and export tool
- **Git** - Version control

<br>

## 💡 What I Worked On

- Bash scripting and command-line interaction
- Random number generation and game logic
- User input validation and conditional logic
- PostgreSQL database creation and management
- SQL queries and aggregate functions
- User registration and game statistics tracking
- Database backup and export using `pg_dump`
- Git version control and commit history

<br>

## 📂 Project Files

| File | Description |
|---|---|
| `number_guess.sh` | Bash script that runs the number guessing game and interacts with PostgreSQL |
| `number_guess.sql` | PostgreSQL database dump containing the schema, data, and constraints |

<br>

<p align="center">
  <strong>🎮 Number Guessing Game Database</strong> · Built with Bash, PostgreSQL & SQL
</p>
