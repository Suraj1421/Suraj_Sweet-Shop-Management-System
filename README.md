# 🍬 Sweet Shop Management System

<div align="center">

**A modern, full-stack inventory management solution for sweet shops**


</div>

---

## 📑 Table of Contents

- [About the Project](#about-the-project)
- [Features](#features)
- [Technology Stack](#technology-stack)
- [Getting Started](#getting-started)
  - [Prerequisites](#prerequisites)
  - [Installation](#installation)
  - [Configuration](#configuration)
  - [Running the Application](#running-the-application)
- [Project Structure](#project-structure)
- [API Documentation](#api-documentation)
- [Usage Guide](#usage-guide)
- [Screenshots](#screenshots)
- [Testing](#testing)
- [Deployment](#deployment)
- [My AI Usage](#my-ai-usage)
- [Contributing](#contributing)
- [License](#license)

---

## About the Project

The **Sweet Shop Management System** is a comprehensive web-based application designed to revolutionize how sweet shops manage their inventory and operations. This full-stack solution combines a powerful backend API with an intuitive frontend interface, enabling shop owners to efficiently track products, manage stock levels, and process customer purchases.

### What Problem Does It Solve?

Running a sweet shop involves numerous challenges: maintaining accurate inventory records, tracking product availability, managing prices, and ensuring customers can easily find what they're looking for. Traditional methods using spreadsheets or paper records are prone to errors, time-consuming, and don't scale well as the business grows.

This application addresses these pain points by providing:

- **Digital Inventory Tracking**: Replace manual record-keeping with an automated system that updates in real-time
- **Streamlined Operations**: Simplify product management, restocking, and sales processes
- **Enhanced Customer Experience**: Enable quick product discovery through advanced search and filtering
- **Role-Based Access**: Secure system with different permissions for customers and administrators
- **Scalability**: Built to handle growing product catalogs and increasing user bases

### Key Highlights

- ✅ **100% Test Pass Rate**: All 18 test cases passing with comprehensive coverage
- ✅ **Production Ready**: Fully functional, well-documented, and deployable
- ✅ **Modern Stack**: Built with latest versions of React, Node.js, and MongoDB
- ✅ **Secure**: JWT authentication, password hashing, and input validation
- ✅ **Responsive Design**: Works seamlessly on desktop, tablet, and mobile devices
- ✅ **User-Friendly**: Intuitive interface requiring minimal training

---

## Features

### 🔐 Authentication & Security
- User registration with email and password
- Secure login with JWT token-based authentication
- Password hashing using bcryptjs
- Role-based access control (User/Admin)
- Protected routes and API endpoints

### 📦 Product Management
- View all available sweets with detailed information
- Add new products (Admin only)
- Edit existing product details (Admin only)
- Delete products from inventory (Admin only)
- Real-time inventory tracking

### 🔍 Search & Filter
- Search products by name (case-insensitive)
- Filter by product category
- Filter by price range (min/max)
- Combined search criteria support

### 🛒 Purchase System
- One-click purchase functionality
- Automatic inventory deduction
- Out-of-stock prevention
- Quantity-based purchasing

### 📊 Admin Features
- Complete product lifecycle management
- Restock products to increase quantities
- Monitor all products and stock levels
- Full administrative control panel

---

## Technology Stack

### Backend
- **Node.js** - JavaScript runtime environment
- **Express.js** - Web application framework
- **MongoDB** - NoSQL database
- **Mongoose** - MongoDB object modeling
- **JWT** - JSON Web Tokens for authentication
- **bcryptjs** - Password hashing library
- **express-validator** - Input validation middleware
- **Jest** - Testing framework
- **Supertest** - HTTP assertion library

### Frontend
- **React 18** - UI library
- **React Router** - Client-side routing
- **Axios** - HTTP client for API calls
- **Vite** - Build tool and dev server
- **React Icons** - Icon library
- **CSS3** - Styling and animations

---

## Getting Started

This guide will walk you through setting up and running the Sweet Shop Management System on your local machine.

### Prerequisites

Before you begin, ensure you have the following installed:

- **Node.js** (version 18 or higher) - [Download here](https://nodejs.org/)
- **npm** (comes with Node.js) or **yarn**
- **MongoDB Atlas account** (free tier available) - [Sign up here](https://www.mongodb.com/cloud/atlas)
- **Git** (for cloning the repository) - [Download here](https://git-scm.com/)

### Installation

#### Step 1: Clone the Repository

```bash
git clone <your-repository-url>
cd "sweet shop management system"
```

#### Step 2: Install Backend Dependencies

Navigate to the backend directory and install dependencies:

```bash
cd backend
npm install
```

This will install all required packages including Express, Mongoose, JWT, and testing libraries.

#### Step 3: Install Frontend Dependencies

Open a new terminal window, navigate to the frontend directory, and install dependencies:

```bash
cd frontend
npm install
```

This will install React, React Router, Axios, and other frontend dependencies.

### Configuration

#### Backend Configuration

1. **Create Environment File**

   In the `backend` directory, create a `.env` file:

   ```bash
   cd backend
   touch .env
   ```

   Or on Windows:
   ```bash
   cd backend
   type nul > .env
   ```

2. **Configure Environment Variables**

   Open the `.env` file and add the following variables:

   ```env
   PORT=5000
   MONGODB_URI=your_mongodb_atlas_connection_string
   JWT_SECRET=your_super_secret_jwt_key_here
   NODE_ENV=development
   ```

3. **Get MongoDB Atlas Connection String**

   - Go to [MongoDB Atlas](https://www.mongodb.com/cloud/atlas)
   - Sign up or log in to your account
   - Create a new cluster (free tier M0 is sufficient)
   - Click "Connect" → "Connect your application"
   - Copy the connection string
   - Replace `<password>` with your database user password
   - Replace `<dbname>` with `sweet-shop` (or your preferred database name)
   - Example: `mongodb+srv://username:password@cluster0.xxxxx.mongodb.net/sweet-shop?retryWrites=true&w=majority`

4. **Set JWT Secret**

   Generate a secure random string for JWT_SECRET. You can use:
   - Online generator: [RandomKeygen](https://randomkeygen.com/)
   - Node.js: `node -e "console.log(require('crypto').randomBytes(32).toString('hex'))"`
   - Or any secure random string (minimum 32 characters recommended)

#### Frontend Configuration

The frontend is configured to connect to `http://localhost:5000` by default. If your backend runs on a different port, update the API base URL in your frontend code.

### Running the Application

#### Option 1: Run Servers Separately (Recommended for Development)

**Terminal 1 - Backend Server:**

```bash
cd backend
npm run dev
```

You should see:
```
Connected to MongoDB
Server is running on port 5000
```

**Terminal 2 - Frontend Development Server:**

```bash
cd frontend
npm run dev
```

You should see:
```
VITE v4.x.x  ready in xxx ms

➜  Local:   http://localhost:3000/
➜  Network: use --host to expose
```

#### Option 2: Use Startup Scripts (Windows)

**PowerShell Script:**
```powershell
.\start-servers.ps1
```

**Batch Script:**
```cmd
start-servers.bat
```

These scripts will automatically start both servers in separate windows.

#### Access the Application

1. Open your web browser
2. Navigate to `http://localhost:3000`
3. You should see the login page

#### First-Time Setup

1. **Register a New User:**
   - Click "Register" or navigate to the registration page
   - Fill in username, email, and password
   - Click "Register"
   - You'll be automatically logged in

2. **Create an Admin User (Optional):**
   - Register a new user
   - In MongoDB Atlas or using MongoDB Compass, update the user document:
   - Set `role: "admin"` in the users collection
   - Or use the MongoDB shell:
     ```javascript
     db.users.updateOne(
       { email: "your-email@example.com" },
       { $set: { role: "admin" } }
     )
     ```

3. **Start Using the Application:**
   - Browse available sweets
   - Search and filter products
   - Make purchases (as regular user)
   - Manage inventory (as admin)

---

## Project Structure

```
sweet-shop-management-system/
│
├── backend/                    # Backend API Server
│   ├── src/
│   │   ├── __tests__/         # Test files
│   │   │   ├── auth.test.js
│   │   │   └── sweet.test.js
│   │   ├── controllers/       # Business logic
│   │   │   ├── auth.controller.js
│   │   │   └── sweet.controller.js
│   │   ├── middleware/         # Custom middleware
│   │   │   └── auth.middleware.js
│   │   ├── models/             # Database models
│   │   │   ├── User.model.js
│   │   │   └── Sweet.model.js
│   │   ├── routes/             # API routes
│   │   │   ├── auth.routes.js
│   │   │   └── sweet.routes.js
│   │   └── server.js           # Application entry point
│   ├── package.json
│   ├── jest.config.js          # Jest configuration
│   ├── env.example             # Environment variables template
│   └── .gitignore
│
├── frontend/                    # React Frontend Application
│   ├── src/
│   │   ├── components/         # Reusable components
│   │   │   ├── ProtectedRoute.jsx
│   │   │   ├── SearchBar.jsx
│   │   │   ├── SweetCard.jsx
│   │   │   ├── SweetModal.jsx
│   │   │   ├── RestockModal.jsx
│   │   │   └── Toast.jsx
│   │   ├── context/            # React Context
│   │   │   └── AuthContext.jsx
│   │   ├── pages/              # Page components
│   │   │   ├── Login.jsx
│   │   │   ├── Register.jsx
│   │   │   └── Dashboard.jsx
│   │   ├── App.jsx             # Main app component
│   │   ├── main.jsx            # React entry point
│   │   └── index.css           # Global styles
│   ├── index.html
│   ├── package.json
│   ├── vite.config.js          # Vite configuration
│   └── .gitignore
│
├── README.md                    # Main documentation
├── README_ALTERNATIVE.md        # Alternative documentation
├── TEST_REPORT.md               # Test coverage report
├── start-servers.ps1            # PowerShell startup script
└── start-servers.bat            # Batch startup script
```

---

## API Documentation

### Base URL
```
http://localhost:5000/api
```

### Authentication Endpoints

#### Register User
```http
POST /api/auth/register
Content-Type: application/json

Request Body:
{
  "username": "john_doe",
  "email": "john@example.com",
  "password": "password123",
  "role": "user"  // optional, defaults to "user"
}

Response (201):
{
  "message": "User registered successfully",
  "token": "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9...",
  "user": {
    "id": "user_id",
    "username": "john_doe",
    "email": "john@example.com",
    "role": "user"
  }
}
```

#### Login User
```http
POST /api/auth/login
Content-Type: application/json

Request Body:
{
  "email": "john@example.com",
  "password": "password123"
}

Response (200):
{
  "message": "Login successful",
  "token": "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9...",
  "user": {
    "id": "user_id",
    "username": "john_doe",
    "email": "john@example.com",
    "role": "user"
  }
}
```

### Sweet Management Endpoints

**Note:** All sweet endpoints require authentication. Include the JWT token in the Authorization header:
```
Authorization: Bearer <your-jwt-token>
```

#### Get All Sweets
```http
GET /api/sweets
Authorization: Bearer <token>

Response (200):
{
  "sweets": [
    {
      "_id": "sweet_id",
      "name": "Chocolate Bar",
      "category": "Chocolate",
      "price": 5.99,
      "quantity": 100,
      "createdAt": "2024-01-01T00:00:00.000Z",
      "updatedAt": "2024-01-01T00:00:00.000Z"
    }
  ]
}
```

#### Search Sweets
```http
GET /api/sweets/search?name=chocolate&category=Chocolate&minPrice=2&maxPrice=10
Authorization: Bearer <token>

Query Parameters:
- name: string (optional) - Search by product name
- category: string (optional) - Filter by category
- minPrice: number (optional) - Minimum price
- maxPrice: number (optional) - Maximum price
```

#### Create Sweet (Admin Only)
```http
POST /api/sweets
Authorization: Bearer <admin-token>
Content-Type: application/json

Request Body:
{
  "name": "Gummy Bears",
  "category": "Candy",
  "price": 3.99,
  "quantity": 50
}

Response (201):
{
  "message": "Sweet created successfully",
  "sweet": { ... }
}
```

#### Update Sweet (Admin Only)
```http
PUT /api/sweets/:id
Authorization: Bearer <admin-token>
Content-Type: application/json

Request Body (all fields optional):
{
  "name": "Updated Name",
  "category": "Updated Category",
  "price": 4.99,
  "quantity": 75
}
```

#### Delete Sweet (Admin Only)
```http
DELETE /api/sweets/:id
Authorization: Bearer <admin-token>

Response (200):
{
  "message": "Sweet deleted successfully"
}
```

#### Purchase Sweet
```http
POST /api/sweets/:id/purchase
Authorization: Bearer <token>
Content-Type: application/json

Request Body:
{
  "quantity": 2  // optional, defaults to 1
}

Response (200):
{
  "message": "Purchase successful",
  "sweet": { ... }  // updated sweet with new quantity
}
```

#### Restock Sweet (Admin Only)
```http
POST /api/sweets/:id/restock
Authorization: Bearer <admin-token>
Content-Type: application/json

Request Body:
{
  "quantity": 50  // amount to add to current stock
}

Response (200):
{
  "message": "Restock successful",
  "sweet": { ... }  // updated sweet with new quantity
}
```

---

## Usage Guide

### For Regular Users

1. **Registration & Login**
   - Click "Register" to create a new account
   - Fill in your details (username, email, password)
   - After registration, you'll be automatically logged in
   - For subsequent visits, use "Login" with your credentials

2. **Browsing Products**
   - Once logged in, you'll see the dashboard with all available sweets
   - Each product card shows: name, category, price, and available quantity

3. **Searching Products**
   - Use the search bar to find products by name
   - Filter by category using the category dropdown
   - Set price range using min/max price filters
   - Combine multiple filters for precise results

4. **Making Purchases**
   - Click the "Purchase" button on any product card
   - The system will deduct 1 unit from inventory
   - If a product is out of stock, the purchase button is disabled
   - You'll see a confirmation message after successful purchase

### For Administrators

1. **Accessing Admin Features**
   - Log in with an admin account
   - You'll see additional admin controls on the dashboard

2. **Adding New Products**
   - Click the "Add New Sweet" button
   - Fill in the product details:
     - Name (minimum 2 characters)
     - Category (e.g., Chocolate, Candy, etc.)
     - Price (must be a positive number)
     - Initial Quantity (optional, defaults to 0)
   - Click "Create" to add the product

3. **Editing Products**
   - Click the edit icon (✏️) on any product card
   - Modify the fields you want to update
   - You can update name, category, price, or quantity
   - Click "Update" to save changes

4. **Deleting Products**
   - Click the delete icon (🗑️) on any product card
   - Confirm the deletion
   - The product will be permanently removed from inventory

5. **Restocking Products**
   - Click the restock icon (📦) on any product card
   - Enter the quantity to add (e.g., 50 to add 50 units)
   - Click "Restock" to update inventory
   - The new total quantity will be displayed

---

## Screenshots

### Login Page
![Login Page](Login_Page.jpg)
*Secure login interface with email and password authentication*

### Registration Page
![Registration Page](Registration_Page.jpg)
*User registration form with validation*

### Dashboard (User View)
![Dashboard](User_Dashboard.jpg)
*Main dashboard showing all available sweets with search and filter options*

### Dashboard (Admin View)
![Admin Dashboard](Admin_Dashboard.jpg)
*Administrative dashboard with additional controls for product management*



**Note:** Please add your actual screenshots to the `screenshots/` directory and update the paths above. The screenshots should demonstrate:
- Login/Registration pages
- Main dashboard with product listings
- Admin panel with management controls
- Search and filter functionality
- Product cards and modals

---

## Testing

The project includes a comprehensive test suite to ensure code quality and reliability.

### Running Tests

```bash
cd backend
npm test
```

### Test Coverage

- **Total Tests**: 18
- **Passed**: 18 (100%)
- **Code Coverage**: 81.64% statements, 53.52% branches, 100% functions

### Test Suites

1. **Authentication Tests** (`auth.test.js`)
   - User registration
   - User login
   - Input validation
   - Error handling

2. **Sweet Management Tests** (`sweet.test.js`)
   - CRUD operations
   - Search functionality
   - Purchase operations
   - Restock operations
   - Admin authorization

### Viewing Test Report

A detailed test report is available in [`TEST_REPORT.md`](./TEST_REPORT.md) with:
- Complete test execution results
- Code coverage breakdown
- Issues and recommendations

---

## Deployment

### Backend Deployment

**Recommended Platforms:**
- Heroku
- Railway
- Render
- AWS EC2
- DigitalOcean

**Steps:**
1. Create account on chosen platform
2. Create new project/service
3. Connect Git repository
4. Set environment variables:
   - `PORT` (auto-assigned or custom)
   - `MONGODB_URI` (your MongoDB Atlas connection string)
   - `JWT_SECRET` (secure random string)
   - `NODE_ENV=production`
5. Configure MongoDB Atlas network access (allow 0.0.0.0/0)
6. Deploy and verify

### Frontend Deployment

**Recommended Platforms:**
- Vercel (recommended for React)
- Netlify
- GitHub Pages
- AWS S3 + CloudFront

**Steps:**
1. Build production version:
   ```bash
   cd frontend
   npm run build
   ```
2. Deploy `dist` folder to chosen platform
3. Update API URLs to point to deployed backend
4. Configure environment variables if needed

---

## My AI Usage

### AI Tools Utilized

During the development of this project, I utilized **Cursor AI** (an AI-powered coding assistant) to assist with various aspects of the development process.

### How AI Was Used

#### 1. Code Generation & Boilerplate
AI assistance was used to generate initial project structure and configuration files including:
- `package.json` files with appropriate dependencies
- `vite.config.js` for frontend build configuration
- `jest.config.js` for test framework setup
- Boilerplate code for Express routes, controllers, and middleware
- React component templates with proper structure

#### 2. Code Conversion
- Initially created the backend in TypeScript, then used AI assistance to convert all TypeScript files to plain JavaScript as per project requirements
- AI helped maintain code functionality while converting type annotations and interfaces
- Assisted in resolving module resolution issues during conversion

#### 3. Best Practices & Patterns
AI was consulted for:
- Best practices in Express.js route organization and middleware usage
- React component structure and state management patterns
- MongoDB schema design and Mongoose usage patterns
- Authentication and authorization implementation strategies
- Error handling and validation approaches

#### 4. Debugging & Problem Solving
AI assistance was valuable for:
- Troubleshooting import/export issues when converting from TypeScript to JavaScript
- Fixing module resolution problems with ES6 imports
- Resolving async/await patterns and promise handling
- Debugging test failures and identifying root causes
- Fixing environment variable and configuration issues

#### 5. Documentation
AI assisted in:
- Structuring the README file with clear sections
- Formatting API endpoint documentation
- Generating clear setup instructions
- Creating comprehensive project descriptions
- Organizing code comments and inline documentation

### Reflection on AI Impact

#### Positive Impacts

- **Development Speed**: Significantly accelerated development by generating boilerplate code and common patterns, allowing focus on core business logic
- **Learning Enhancement**: AI suggestions helped understand modern best practices and patterns in full-stack development
- **Code Consistency**: AI helped maintain consistent code style and structure across the project
- **Error Prevention**: AI caught potential issues early, such as missing imports, incorrect syntax, and common pitfalls
- **Documentation Quality**: Improved documentation clarity and completeness

#### Challenges & Learning

- **Over-reliance Risk**: Initially found myself relying too heavily on AI suggestions without fully understanding the code
- **Context Understanding**: Sometimes AI suggestions needed refinement to match specific project requirements
- **Debugging Complexity**: When AI-generated code had issues, it required careful debugging to understand root causes
- **Balance Finding**: Learned to use AI as a tool rather than a crutch, maintaining critical thinking

#### Responsible Usage

- **Code Review**: Reviewed and understood all AI-generated code before using it
- **Customization**: Modified and customized AI suggestions to fit the project's specific needs
- **Manual Testing**: Wrote all tests manually to ensure understanding of functionality
- **Critical Thinking**: Used AI as a tool to enhance productivity, not replace critical thinking
- **Learning Focus**: Used AI explanations to learn, not just to complete tasks

### Conclusion

AI tools like Cursor AI proved to be valuable assistants in this project, helping with repetitive tasks and providing learning opportunities. However, the core logic, architecture decisions, and understanding of the codebase remain my own. The AI served as a powerful pair-programming partner, but I maintained full control and understanding of the code throughout the development process. This experience taught me how to effectively leverage AI tools while maintaining code quality and personal growth as a developer.

---

## Contributing

Contributions are welcome! Please feel free to submit a Pull Request.

1. Fork the repository
2. Create your feature branch (`git checkout -b feature/AmazingFeature`)
3. Commit your changes (`git commit -m 'Add some AmazingFeature'`)
4. Push to the branch (`git push origin feature/AmazingFeature`)
5. Open a Pull Request

---

## License

This project is open source and available under the [MIT License](LICENSE).

---

## Contact & Support

For questions, issues, or suggestions, please open an issue in the repository.

---

<div align="center">


**Happy Coding! 🍬**

</div>


