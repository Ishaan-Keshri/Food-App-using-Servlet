# Food-App-using-Servlet
# Food Management System

A web-based Food Management System developed using Java Servlets, JSP, JDBC, and MySQL. The application provides food management functionality along with user registration, login, ordering, and billing features.

## Features

- **User Registration:** New users can create an account.
- **User Login:** Registered users can log in.
- **Food Management:** Add, update, delete, and search food items.
- **Food Reports:** View available food items.
- **Order Management:** Place food orders and manage order details.
- **Billing:** View billing information.
- **Database Integration:** Store and retrieve application data using MySQL.

## Tech Stack

| Technology | Purpose |
|---|---|
| Java | Backend programming |
| Java Servlets | Request handling |
| JSP | Dynamic web pages |
| JDBC | Database connectivity |
| MySQL | Relational database |
| HTML & CSS | Frontend design |
| Apache Tomcat | Application server |
| Eclipse IDE | Development environment |

## Project Architecture

The project follows the MVC (Model-View-Controller) architecture.

- **Model:** DTO classes represent application data.
- **View:** JSP pages display the user interface.
- **Controller:** Java Servlets handle user requests.
- **DAO:** Data Access Objects perform database operations.
- **Utilities:** ConnectionFactory manages database connectivity.

## Project Structure

```text
FOODAPP/
│
├── src/
│   └── main/
│       ├── java/
│       │   └── master/
│       │       ├── dao/
│       │       ├── dto/
│       │       ├── servlet/
│       │       └── utilities/
│       │
│       └── webapp/
│           ├── WEB-INF/
│           │   ├── lib/
│           │   └── web.xml
│           ├── *.jsp
│           └── Nav.css
│
├── .classpath
├── .project
├── .gitignore
└── README.md
```

## Prerequisites

- JDK 8 or later
- Eclipse IDE with Dynamic Web Project support
- Apache Tomcat 9 or compatible servlet container
- MySQL Server
- MySQL Connector/J

## Installation and Setup

1. Clone the repository:

   ```bash
   git clone https://github.com/Ishaan-Keshri/Food-App-using-Servlet.git
   ```

2. Open Eclipse IDE.

3. Import the project:
   - Select **File → Import**.
   - Choose **Existing Projects into Workspace**.
   - Select the cloned FOODAPP directory.

4. Create a MySQL database named `DBFOODAPP`.

5. Create the required database tables using the SQL script in the project (to be added).

6. Configure the database connection using the following environment variables:

   ```text
   DB_URL=jdbc:mysql://localhost:3306/DBFOODAPP
   DB_USERNAME=root
   DB_PASSWORD=your_password
   ```

7. Configure Apache Tomcat in Eclipse.

8. Run the project on the Tomcat server.

9. Open the application in your browser:

   ```text
   http://localhost:8080/FOODAPP/
   ```

## Database

Database name: `DBFOODAPP`

The application uses MySQL to store food details, user registration information, and order data.

**Note:** Add your database creation and table-creation SQL script to the repository before publishing so other developers can set up the project.

## Future Improvements

- Improve UI responsiveness.
- Add password hashing and stronger authentication.
- Implement input validation and exception handling.
- Improve database query security using PreparedStatement.
- Add an admin/user role-based access system.

## Author

**Ishaan Keshri**

- GitHub: [Ishaan-Keshri](https://github.com/Ishaan-Keshri)

---

If you find this project useful, feel free to star the repository!
