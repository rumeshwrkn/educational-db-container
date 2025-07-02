# Educational Database Containers with PostgresSQL & MySQL
This project is an educational environment to explore SQL using Docker:

- PostgresSQl with preloaded schema and sample data
- MySQL with preloaded schema and sample data
- Adminer (web-based DB UI) for easy access and testing queries

## Prerequisite
- Ensure you have Docker and Docker Compose installed on your machine.
- Basic knowledge of command line interface (CLI).

## Quick Start

1. **Clone the repo**
```bash
git clone https://github.com/rumeshwrkn/educational-db-container.git
cd /educational-db-container
```

2. **Start the containers**
```bash
docker compose up --build
```

3. **Open Adminer in your browser**
```
http://localhost:8080
```

### Database credentials
**PostgreSQL**

    System: PostgreSQL
    Server: postgres
    Username: edu_user
    Password: edu_pass
    Database: edu_db

**MySQL**

    System: MySQL
    Server: mysql
    Username: edu_user
    Password: edu_pass
    Database: edu_db

## Practice Exercises
Once connected to the DB, try running:
    
1. List all students:
    ```sql 
    SELECT * FROM students;
    ```

2. Show students and their enrolled courses:
    ```sql
    SELECT s.name, c.title, e.grade
    FROM enrollments e
    JOIN students s ON e.student_id = s.id
    JOIN courses c ON e.course_id = c.id;
    ```
3. Count how many courses each student is taking:
    ```sql
    SELECT s.name, COUNT(e.course_id) as course_count
    FROM enrollments e
    JOIN students s ON e.student_id = s.id
    GROUP BY s.name;
    ```

### Resetting Databases
To clear and reinitialize data

    ```bash 
    docker compose down -v
    docker compose up --build
    ```

### License
MIT License: free for educational and demo use.