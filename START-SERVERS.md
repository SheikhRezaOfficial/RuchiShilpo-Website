# How to Start Your E-Commerce Application

## Prerequisites
- Node.js installed
- MySQL database running on localhost:3306
- Database: `singitronic_nextjs_testing_dbv1`

## Step 1: Start the Backend Server (Port 3001)

Open a terminal and run:

```bash
cd server
npm start
```

**Expected Output:**
```
Server running on port 3001
Rate limiting and request logging enabled for all endpoints
Logs are being written to server/logs/ directory
```

**Important:** Keep this terminal window open. The backend must be running for the frontend to work.

## Step 2: Start the Frontend (Port 3000)

Open a **NEW** terminal window and run:

```bash
npm run dev
```

**Expected Output:**
```
▲ Next.js 15.x.x
- Local:        http://localhost:3000
- Network:      http://192.168.x.x:3000

✓ Ready in 2.5s
```

## Step 3: Access the Application

- **Frontend:** http://localhost:3000
- **Admin Panel:** http://localhost:3000/admin
- **Merchant Management:** http://localhost:3000/admin/merchant
- **Add Product:** http://localhost:3000/admin/products/new

## Troubleshooting

### "Failed to load merchants" Error

**Cause:** Backend server is not running or not accessible.

**Solution:**
1. Make sure the backend server is running (Step 1)
2. Check if port 3001 is available:
   ```bash
   netstat -ano | findstr :3001
   ```
3. Verify the API base URL in your browser console
4. Check server logs for errors

### Database Connection Issues

**Cause:** MySQL is not running or database doesn't exist.

**Solution:**
1. Start MySQL service
2. Create the database if it doesn't exist:
   ```sql
   CREATE DATABASE singitronic_nextjs_testing_dbv1;
   ```
3. Run Prisma migrations:
   ```bash
   npm run db:push
   ```

### Merchant Already Created

Your first merchant has been created with these details:
- **Name:** Default Merchant Store
- **Email:** merchant@example.com
- **Status:** ACTIVE

You can view it at: http://localhost:3000/admin/merchant

## Quick Commands

### View All Merchants
```bash
cd server
node scripts/create-first-merchant.js
```

### Reset Database (Use with Caution!)
```bash
npm run db:push
```

### Check Logs
```bash
cd server
npm run logs
```

## Adding a New Product

1. Make sure both servers are running
2. Go to: http://localhost:3000/admin/products/new
3. Select a merchant from the dropdown
4. Fill in all required fields:
   - Product name
   - Product slug
   - Category
   - Price
   - Manufacturer
   - Stock status
   - Description
5. Upload a product image
6. Click "Add product"

## Common Issues Fixed

✅ **Fixed:** API client type definitions
✅ **Fixed:** Merchant fetch error handling
✅ **Fixed:** Duplicate API request options in merchant creation
✅ **Fixed:** TypeScript errors in merchant management

All issues have been resolved. Your application should now work correctly!
