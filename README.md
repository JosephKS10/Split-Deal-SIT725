# Split-Deal
This repository contains the code written for Split Deal, a deal sharing platform. Its going to use Vanilla JS and node.

A RESTful API for group buying deals with JWT authentication

## Docker Deployment  

### Prerequisites  
- Docker installed ([Download Docker](https://www.docker.com/products/docker-desktop))  
- Docker Compose (included with Docker Desktop)  

### Quick Start    
1. **Start all services (app + MongoDB)**:  
   ```bash  
   docker-compose up -d

### Detailed Setup
1. **Application & Database**:
   # Build and run with MongoDB
   ```bash  
   docker-compose up -d app
   
4. Access the application <br>
   Main app: http://localhost:3000 <br>
   Student API: http://localhost:3000/api/student <br>

5. **Expected API Output**
    ```bash
    {  
    "name": "Your Name",  
    "studentId": "YourStudentID"  
    }
6. Notes
  Ensure the .env file is present for database connectivity. <br>
  Use docker logs <container_id> to debug startup issues. <br>
  Use docker ps to check which all containers are working

1. **Application & Database**:
   # Run unit tests
   ```bash  
   docker-compose run test-unit

Feautes of docker -
Local MongoDB Container - No cloud dependency
Isolated Testing - Dedicated containers for unit/e2e tests
Auto-Cleaning - Test database resets between runs
Health Checks - Ensures DB readiness before app starts
Features
✅ JWT Authentication (/register, /login)
✅ Group Management (Create groups, update status)
✅ Role-Based Access Control (Admin/User)
✅ MongoDB Data Models (Users, Groups, Deals)

Tech Stack
Backend: Node.js, Express
Database: MongoDB
Authentication: JWT, Bcrypt
Testing: Postman
Frontend: Vanilla JS

Setup
Clone the repo

git clone https://github.com/vaghelaparth5/Split-Deal.git
cd Split-Deal

Install dependencies:
npm install

Configure environment variables:
Create a .env file (see Environment Variables).

Run the server:
npm run start

API Endpoints

Authentication
Endpoint	Method	Description	Request Body Example
/api/auth/register	POST	Register a new user	{ "user_email": "test@example.com", "user_password": "123456", "name": "John Doe", "phone_number": "+1234567890" }
/api/auth/login	POST	Login and get JWT token	{ "user_email": "test@example.com", "user_password": "123456" }

Group Management (Requires JWT)
Endpoint	Method	Description	Request Body Example
/api/groups/create-group	POST	Create a new group	{ "dealTitle": "50% Off Gym Membership", "storeLocation": "Sydney", ... }
/api/groups/update-group-status/:id	PUT	Update group status (Admin-only)	{ "status": "completed" }

Testing
Manual Testing in Postman

Testing command for jest 

🔐 How to Use Authentication
Go to the Login Page

Navigate to /login to access the login screen.

Enter your registered email and password.

New User? Register First

Click on “Sign Up” or go to /register.

Fill in your name, email, and password.

Submit to create a new account.

Access Protected Pages

Once logged in, you’ll be redirected to your profile or dashboard.

Now you can access pages like /profile, /chatbot, etc.

Logout Anytime

Click the “Logout” button in the navbar to securely log out.
npm run test

To run Cypress 
npx cypress open

🤖 How to Use the Chatbot
Login Required

Users must be logged in to access the chatbot.

Navigate to the Chatbot Page

Go to the /chatbot route via the navbar or directly.

Submit a Query

Users type their message or question in the input field.

Press “Send” to submit it.

What Happens Next

The submitted queries are stored or sent to our team.

Our 6-member support team receives the queries and responds manually.

Note

Responses are not instant. Users will be contacted later with a reply.


