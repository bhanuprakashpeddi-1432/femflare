# Femflare - Event Management System

A Spring Boot web application for managing events at KL University, built with Java 17, Spring Boot, MySQL, and JSP.

## Features

- Student registration and login
- Admin dashboard for event management
- Multiple event types: FemFlare Events, Tech Events, Literary Events, and Spot Events
- Event listing and management
- User profile management

## Technology Stack

- **Backend:** Spring Boot 3.4.4
- **Frontend:** JSP, JSTL
- **Database:** MySQL
- **Build Tool:** Maven
- **Java Version:** 17
- **Container:** Docker

## Prerequisites

- Java 17 or higher
- Maven 3.6+
- MySQL 8.0+
- Docker (optional, for containerized deployment)

## Local Development Setup

### 1. Clone the Repository

```bash
git clone https://github.com/bhanuprakashpeddi-1432/femflare.git
cd femflare
```

### 2. Configure Database

Create a MySQL database:

```sql
CREATE DATABASE flare;
```

### 3. Set Environment Variables (Optional)

You can override default settings using environment variables:

```bash
export DB_USERNAME=your_mysql_username
export DB_PASSWORD=your_mysql_password
export DATABASE_URL=jdbc:mysql://localhost:3306/flare
export PORT=8080
```

Or use the defaults in `application.properties`.

### 4. Build the Application

```bash
./mvnw clean package -DskipTests
```

### 5. Run the Application

```bash
./mvnw spring-boot:run
```

Or run the JAR file:

```bash
java -jar target/Femflare-0.0.1-SNAPSHOT.jar
```

The application will be available at `http://localhost:8080`

## Docker Deployment

### Build Docker Image

```bash
docker build -t femflare-app .
```

### Run with Docker

```bash
docker run -p 8080:8080 \
  -e DATABASE_URL=jdbc:mysql://your-db-host:3306/flare \
  -e DB_USERNAME=your_username \
  -e DB_PASSWORD=your_password \
  femflare-app
```

## Deployment on Render

This application is configured for easy deployment on [Render](https://render.com).

### Option 1: Using render.yaml (Infrastructure as Code)

1. Fork this repository
2. Sign up/Log in to [Render](https://render.com)
3. Click "New" → "Blueprint"
4. Connect your GitHub repository
5. Render will automatically detect the `render.yaml` file and create:
   - A MySQL database service
   - A web service with the Spring Boot application
6. Click "Apply" to deploy

### Option 2: Manual Setup

#### Create a MySQL Database

1. In Render Dashboard, click "New" → "MySQL"
2. Configure:
   - **Name:** `femflare-db`
   - **Database:** `flare`
   - **User:** `femflare_user`
   - **Plan:** Free or Starter
3. Note the connection details (Internal Database URL, Username, Password)

#### Create a Web Service

1. Click "New" → "Web Service"
2. Connect your GitHub repository
3. Configure:
   - **Name:** `femflare-app`
   - **Runtime:** Docker
   - **Branch:** main
   - **Plan:** Free or Starter
4. Add Environment Variables:
   - `SPRING_PROFILES_ACTIVE`: `prod`
   - `DATABASE_URL`: (from MySQL service - Internal Database URL)
   - `DB_USERNAME`: (from MySQL service)
   - `DB_PASSWORD`: (from MySQL service)
   - `JAVA_OPTS`: `-Xmx512m -Xms256m`
5. Deploy!

### Important Notes for Render Deployment

- Render automatically assigns a `PORT` environment variable - the app is configured to use it
- Use the MySQL **Internal Database URL** for better performance and security
- The application uses the `prod` profile in production (less verbose logging)
- First deployment may take 5-10 minutes to build
- Free tier services may spin down after inactivity - first request after spin-down takes longer

## Configuration

### Application Profiles

- **Default Profile** (`application.properties`): Used for local development
- **Production Profile** (`application-prod.properties`): Optimized for production deployment

### Environment Variables

| Variable | Description | Default |
|----------|-------------|---------|
| `PORT` | Server port | `8080` |
| `DATABASE_URL` | MySQL JDBC URL | `jdbc:mysql://localhost:3306/flare` |
| `DB_USERNAME` | Database username | `root` |
| `DB_PASSWORD` | Database password | `admin` |
| `SPRING_PROFILES_ACTIVE` | Active Spring profile | `default` |
| `JAVA_OPTS` | JVM options | `-Xmx512m -Xms256m` |

## Project Structure

```
femflare/
├── src/
│   ├── main/
│   │   ├── java/com/klef/flemflare/
│   │   │   ├── controller/       # REST controllers
│   │   │   ├── model/            # Entity models
│   │   │   ├── repository/       # JPA repositories
│   │   │   ├── service/          # Business logic
│   │   │   ├── FemflareApplication.java
│   │   │   └── ServletInitializer.java
│   │   ├── resources/
│   │   │   ├── application.properties
│   │   │   └── application-prod.properties
│   │   └── webapp/               # JSP views
│   └── test/
├── Dockerfile
├── render.yaml
├── pom.xml
└── README.md
```

## Testing

```bash
# Run all tests (requires MySQL running)
./mvnw test

# Run tests with a specific profile
./mvnw test -Dspring.profiles.active=test

# Skip tests
./mvnw clean package -DskipTests
```

## Troubleshooting

### Database Connection Issues

- Verify MySQL is running and accessible
- Check credentials in environment variables or application.properties
- Ensure the database `flare` exists
- For Render: Use Internal Database URL for better connectivity

### Port Already in Use

```bash
# Find process using port 8080
lsof -i :8080

# Kill the process
kill -9 <PID>

# Or use a different port
export PORT=8081
```

### JSP Not Rendering

- Ensure `tomcat-jasper` and `jakarta.servlet.jsp.jstl` dependencies are in pom.xml
- Check view resolver configuration in application.properties
- Verify JSP files are in `src/main/webapp/` directory

## Contributing

1. Fork the repository
2. Create a feature branch (`git checkout -b feature/AmazingFeature`)
3. Commit your changes (`git commit -m 'Add some AmazingFeature'`)
4. Push to the branch (`git push origin feature/AmazingFeature`)
5. Open a Pull Request

## License

This project is licensed under the terms specified in the repository.

## Contact

For questions or support, please open an issue in the GitHub repository.

## Acknowledgments

- KL University
- Spring Boot Framework
- Render Platform

---

**Note:** Make sure to update the `DATABASE_URL`, `DB_USERNAME`, and `DB_PASSWORD` environment variables with your actual database credentials before deployment.
