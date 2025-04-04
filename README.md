# Pharmacy Store Management System

A web-based Pharmacy Store Management System built using Java, JSP, and MySQL.

## Features

- User and Admin Authentication
- Product Management
- Category Management
- Order Processing
- Inventory Management
- User Profile Management

## Technologies Used

- Java
- JSP (JavaServer Pages)
- Servlet
- MySQL Database
- HTML/CSS
- Bootstrap
- JavaScript/jQuery

## Prerequisites

- JDK 17 or higher
- Apache Tomcat 9.0
- MySQL 8.0
- Eclipse IDE (preferably Eclipse EE)

## Setup Instructions

1. Clone the repository
```bash
git clone [repository-url]
cd PharmacyStore
```

2. Database Setup
- Create a MySQL database named 'pharmacy_store'
- Import the database schema from `database/pharmacy_store.sql`
- Update database credentials in `src/com/pharmacystore/connection/DbDetails.java`

3. Configure Tomcat Server
- Install Apache Tomcat 9.0
- Configure Tomcat server in Eclipse
- Add the project to the server

4. Run the Application
- Start the Tomcat server
- Access the application at `http://localhost:8080/PharmacyStore`

## Default Admin Credentials
- Username: admin
- Password: admin123

## Project Structure

```
PharmacyStore/
├── src/
│   └── com/
│       └── pharmacystore/
│           ├── connection/
│           ├── dao/
│           ├── daoimpl/
│           └── pojo/
├── WebContent/
│   ├── js/
│   ├── css/
│   ├── images/
│   └── WEB-INF/
└── database/
    └── pharmacy_store.sql
```

## Contributing

1. Fork the repository
2. Create your feature branch (`git checkout -b feature/AmazingFeature`)
3. Commit your changes (`git commit -m 'Add some AmazingFeature'`)
4. Push to the branch (`git push origin feature/AmazingFeature`)
5. Open a Pull Request

## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details. 