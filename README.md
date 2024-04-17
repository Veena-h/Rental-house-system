# Rental House System

Welcome to the Rental House System, a comprehensive web application designed to facilitate the management and booking of rental properties. This system is divided into two main modules: the Admin module and the User module.

## Features

### User Module
- **Property Browsing**: Users can view a list of available properties along with detailed descriptions and images.
- **Agent Details**: For each property, users can access contact details and information about the agent handling the property.
- **Booking Appointments**: Users can book appointments to visit properties they are interested in.

### Admin Module
- **Manage Properties**: Admins can add, update, and remove properties from the system.
- **Manage Agents**: Admins can add and update details of the agents.
- **Appointment Management**: Admins receive and manage booking requests from users.
- **Feedback Handling**: Admins can view and manage feedback provided by users.

## Technology Stack
- **Frontend**: HTML, CSS, JavaScript, JSP
- **Backend**: Java, Servlets, MVC architecture
- **Database**: MySQL
- **Other**: JDBC for database connectivity

## Getting Started

### Prerequisites
- Java JDK 8 or above
- Apache Tomcat Server
- MySQL Database

### Setting Up the Project
1. **Clone the repository**
 git clone https://github.com/Veena-h/Rental-house-system.git

2. **Database Setup**
- Create a MySQL database named `rental`.
- Import the provided SQL script to set up tables:
  ```
  mysql -u username -p RentalDB < setup.sql
  ```
3. **Configure JDBC Connection**
- Edit the `connection` file in the `src` folder with your MySQL username and password.

4. **Build and Run the Project**
- Import the project into an IDE that supports JSP and Servlets (e.g., Eclipse, IntelliJ).
- Configure the project to run on Apache Tomcat Server.
- Build the project and start the server.

### Contributing
Contributions are welcome! For major changes, please open an issue first to discuss what you would like to change.

### Feedback
Feedback is crucial for us to learn and improve. If you have any feedback or suggestions, please reach out to us.

## Contact
For any queries, you can reach out to [veena hadimani](veenahadimani123@gmail.com).

