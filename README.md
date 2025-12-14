# Sweet Shop Management System 🍬

A delightful full-stack web application for managing a sweet shop inventory. Built with modern technologies and a beautiful, user-friendly interface that makes managing your sweet inventory a breeze!



## What's This All About? ✨

Ever wanted to manage a sweet shop but found traditional inventory systems too complicated? Well, this is your solution! A beautiful, intuitive web application that lets you:

- Browse and search through your sweet collection
- Purchase items with a single click
- Manage inventory (if you're an admin)
- Track stock levels in real-time
- Enjoy a smooth, modern user experience

## Features That Make Life Easier 🎯

### For Everyone
- **Beautiful Login Experience**: A whimsical, pastel-themed login page that'll make you smile every time you sign in
- **Smart Dashboard**: A clean sidebar layout with real-time statistics showing total items, stock levels, and low stock alerts
- **Powerful Search**: Find exactly what you're looking for with advanced filters (by name, category, or price range)
- **One-Click Purchase**: Simply click "Purchase" and watch the inventory update instantly
- **Visual Stock Indicators**: Color-coded badges show you at a glance what's in stock, low stock, or out of stock

### For Admins
- **Full Control**: Add, edit, or remove sweet items from your inventory
- **Restock Management**: Easily add more items to existing products
- **Overview Dashboard**: See important stats at a glance in the sidebar
- **Smart Alerts**: Get notified about low stock items automatically

### Technical Highlights
- **Secure Authentication**: JWT-based login system that keeps your data safe
- **Responsive Design**: Works beautifully on desktop, tablet, and mobile devices
- **Real-time Updates**: Changes reflect immediately across the application
- **Smooth Animations**: Polished transitions that make the app feel premium

## Getting Started 🚀

### What You'll Need
- Node.js (version 18 or higher) - [Download here](https://nodejs.org/)
- npm (comes with Node.js)
- A MongoDB Atlas account (free tier works perfectly!) - [Sign up here](https://www.mongodb.com/cloud/atlas)

### Step-by-Step Setup

#### 1. Get the Code
```bash
git clone <repository-url>
cd sweet-shop-management-system
```

#### 2. Set Up the Backend

First, let's get the backend running:

```bash
cd backend
npm install
```

Now, create a `.env` file in the `backend` directory. You can copy the example file:

```bash
cp env.example .env
```

Then edit the `.env` file with your details:

```env
PORT=5000
MONGODB_URI=your_mongodb_atlas_connection_string
JWT_SECRET=your_super_secret_jwt_key_change_this
NODE_ENV=development
```

**Getting Your MongoDB Connection String:**
1. Head over to [MongoDB Atlas](https://www.mongodb.com/cloud/atlas) and create a free account
2. Create a new cluster (the free tier is perfect for this project)
3. Click "Connect" → "Connect your application"
4. Copy the connection string
5. Replace `<password>` with your database password
6. Replace `<dbname>` with `sweet-shop` (or whatever name you prefer)

#### 3. Set Up the Frontend

In a new terminal window:

```bash
cd frontend
npm install
```

#### 4. Fire It Up! 🎉

**Start the Backend:**
```bash
cd backend
npm run dev
```
You should see: `Server is running on port 5000` and `Connected to MongoDB`

**Start the Frontend:**
```bash
cd frontend
npm run dev
```
The frontend will typically run on `http://localhost:5173` (Vite will show you the exact URL)

#### 5. Test Everything Works

Run the test suite to make sure everything is set up correctly:

```bash
cd backend
npm test
```

## How to Use the App 📖

### First Time? Create an Account!

1. Click "Register here" on the login page
2. Fill in your details (username, email, password)
3. Choose your role:
   - **User**: Can browse and purchase sweets
   - **Admin**: Can do everything users can, plus manage inventory

### Using the Dashboard

Once you're logged in, you'll see:

**Left Sidebar:**
- Your profile information
- Real-time statistics (total items, stock levels, low stock alerts)
- Sign out button

**Main Area:**
- Search bar at the top (with collapsible advanced filters)
- Product grid showing all available sweets
- Each product card shows:
  - Product name and category
  - Price
  - Stock status (color-coded!)
  - Available quantity
  - Purchase button

### For Regular Users

1. **Browse**: Scroll through the product catalog
2. **Search**: Use the search bar to find specific items
3. **Filter**: Click "Filters" to search by category or price range
4. **Purchase**: Click the purple "Purchase" button to buy an item
5. **Stock Awareness**: Out-of-stock items will have disabled purchase buttons

### For Admins

Everything regular users can do, plus:

1. **Add Products**: Click "New Product" in the top bar
2. **Edit Products**: Click the green edit icon on any product card
3. **Restock**: Click the orange restock icon to add more inventory
4. **Delete**: Click the red delete icon to remove a product
5. **Monitor**: Keep an eye on the "Low Stock" counter in the sidebar

## API Reference 📡

If you want to integrate with the API directly, here are the endpoints:

### Authentication
- `POST /api/auth/register` - Create a new account
- `POST /api/auth/login` - Sign in to your account

### Products (All require authentication token)
- `GET /api/sweets` - Get all sweets
- `GET /api/sweets/search` - Search sweets (supports: name, category, minPrice, maxPrice)
- `POST /api/sweets` - Create a new sweet (Admin only)
- `PUT /api/sweets/:id` - Update a sweet (Admin only)
- `DELETE /api/sweets/:id` - Delete a sweet (Admin only)
- `POST /api/sweets/:id/purchase` - Purchase a sweet
- `POST /api/sweets/:id/restock` - Add more stock (Admin only)

### Example: Making API Calls

```bash
# Login and get your token
curl -X POST http://localhost:5000/api/auth/login \
  -H "Content-Type: application/json" \
  -d '{"email":"user@example.com","password":"password123"}'

# Get all sweets (use the token from login)
curl -X GET http://localhost:5000/api/sweets \
  -H "Authorization: Bearer YOUR_JWT_TOKEN"
```

## Project Structure 📁

```
sweet-shop-management-system/
├── backend/
│   ├── src/
│   │   ├── __tests__/          # All our tests live here
│   │   ├── controllers/        # Business logic
│   │   ├── middleware/         # Authentication helpers
│   │   ├── models/             # Database schemas
│   │   ├── routes/             # API endpoints
│   │   └── server.js           # The main entry point
│   ├── package.json
│   └── .env                    # Your secrets (not in git!)
├── frontend/
│   ├── src/
│   │   ├── components/         # Reusable UI components
│   │   ├── context/            # Global state management
│   │   ├── pages/              # Main page components
│   │   └── main.jsx            # React entry point
│   ├── package.json
│   └── vite.config.js
└── README.md                   # You're reading it!
```

## Technologies We Used 🛠️

### Backend
- **Node.js** - The JavaScript runtime
- **Express.js** - Makes building APIs a joy
- **MongoDB** - Our database (via Mongoose)
- **JWT** - Secure authentication tokens
- **bcryptjs** - Keeps passwords safe
- **Jest** - Testing made easy

### Frontend
- **React** - For building beautiful UIs
- **React Router** - Smooth navigation
- **Axios** - HTTP requests
- **Vite** - Lightning-fast development
- **React Icons** - Beautiful icons everywhere

## Design Philosophy 🎨

We've put a lot of thought into making this app not just functional, but delightful to use:

- **Clean Sidebar Layout**: Easy navigation with stats always visible
- **Pastel Login Theme**: A whimsical, friendly first impression
- **Color-Coded Status**: Instantly understand stock levels
- **Smooth Animations**: Every interaction feels polished
- **Responsive Design**: Works great on any device
- **Accessibility**: Built with everyone in mind

## Testing 🧪

We believe in writing tests that actually help! The backend has comprehensive test coverage:

```bash
cd backend
npm test
```

Tests cover:
- User authentication (register/login)
- All CRUD operations
- Search functionality
- Purchase and restock logic
- Admin authorization

## Deployment 🌐

Ready to share your sweet shop with the world?

### Backend Deployment
1. Set your environment variables on your hosting platform (Heroku, Railway, Render all work great)
2. Make sure MongoDB Atlas allows connections from your server
3. Deploy and enjoy!

### Frontend Deployment
1. Build the project: `npm run build`
2. Deploy the `dist` folder to Vercel, Netlify, or your favorite hosting service
3. Update the API URL if needed

## Contributing 🤝

Found a bug? Have an idea? We'd love your help!

1. Fork the repository
2. Create a feature branch (`git checkout -b feature/amazing-feature`)
3. Make your changes
4. Write or update tests
5. Commit your changes (`git commit -m 'Add amazing feature'`)
6. Push to the branch (`git push origin feature/amazing-feature`)
7. Open a Pull Request

## Troubleshooting 🔧

**Backend won't start?**
- Check that MongoDB Atlas allows connections from your IP
- Make sure your `.env` file has all the required variables
- Verify your JWT_SECRET is set

**Frontend can't connect to backend?**
- Make sure the backend is running on port 5000
- Check that CORS is enabled (it should be by default)
- Verify the API URL in your frontend code

**Tests failing?**
- Make sure MongoDB connection is working
- Check that test environment variables are set correctly

## License 📄

This project is open source and available under the [MIT License](LICENSE).

---

## A Note on AI Assistance 🤖

During development, I used **Cursor AI** as a coding assistant. It helped with:
- Generating boilerplate code
- Suggesting best practices
- Debugging tricky issues
- Code organization

However, all architectural decisions, core logic, and understanding of the codebase are my own. AI was a helpful pair-programming partner, but I maintained full control and comprehension throughout the project.

---

## Questions? 💬

If you run into any issues or have questions, please open an issue in the repository. We're here to help!

**Happy coding, and may your sweet shop be ever successful! 🍬✨**
