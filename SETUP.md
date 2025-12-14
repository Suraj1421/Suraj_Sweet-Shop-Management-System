# Quick Setup Guide

## Step-by-Step Setup

### 1. Install Dependencies

**Backend:**
```bash
cd backend
npm install
```

**Frontend:**
```bash
cd frontend
npm install
```

### 2. Configure Environment Variables

**Backend:**
1. Copy `backend/env.example` to `backend/.env`
2. Update the following values:
   - `MONGODB_URI`: Your MongoDB Atlas connection string
   - `JWT_SECRET`: A random secret string for JWT tokens
   - `PORT`: Server port (default: 5000)

**Example .env file:**
```env
PORT=5000
MONGODB_URI=mongodb+srv://username:password@cluster.mongodb.net/sweet-shop?retryWrites=true&w=majority
JWT_SECRET=my-super-secret-jwt-key-12345
NODE_ENV=development
```

### 3. Get MongoDB Atlas Connection String

1. Sign up at [MongoDB Atlas](https://www.mongodb.com/cloud/atlas/register)
2. Create a free cluster
3. Go to "Database Access" and create a database user
4. Go to "Network Access" and add your IP (or 0.0.0.0/0 for development)
5. Go to "Database" → "Connect" → "Connect your application"
6. Copy the connection string
7. Replace `<password>` with your database password
8. Replace `<dbname>` with `sweet-shop`

### 4. Run the Application

**Terminal 1 - Backend:**
```bash
cd backend
npm run dev
```
Backend runs on: http://localhost:5000

**Terminal 2 - Frontend:**
```bash
cd frontend
npm run dev
```
Frontend runs on: http://localhost:3000

### 5. Test the Application

1. Open http://localhost:3000 in your browser
2. Register a new account (you can choose "Admin" role during registration)
3. Login with your credentials
4. Start managing sweets!

### 6. Run Tests

```bash
cd backend
npm test
```

## Troubleshooting

### MongoDB Connection Issues
- Ensure your IP is whitelisted in MongoDB Atlas
- Check that your connection string is correct
- Verify your database user credentials

### Port Already in Use
- Change the PORT in `.env` file
- Or kill the process using the port:
  - Windows: `netstat -ano | findstr :5000` then `taskkill /PID <PID> /F`
  - Mac/Linux: `lsof -ti:5000 | xargs kill`

### Module Not Found Errors
- Delete `node_modules` and `package-lock.json`
- Run `npm install` again

### CORS Issues
- Ensure backend is running on port 5000
- Check that frontend proxy is configured correctly in `vite.config.js`

## Default Test Credentials

After running tests, you can create accounts through the registration page. For admin access, select "Admin" role during registration.

