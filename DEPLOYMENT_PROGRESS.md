# 🚀 Deployment Progress Tracker

## Current Status: Ready to Deploy Backend to Render

---

## ✅ Completed Steps

- [x] Backend configured for PostgreSQL and production
- [x] Frontend configured for Vercel deployment  
- [x] Combined repository created
- [x] Code pushed to GitHub: https://github.com/swostitech-solutions/SMS_Render.git
- [x] All deployment files created (render.yaml, vercel.json, build.sh)
- [x] Documentation completed

---

## 📋 Next Steps (Follow in Order)

### 🗄️ STEP 1: Create Render Account & PostgreSQL Database (5 min)

**Action Required:**

1. **Go to Render**: https://dashboard.render.com
   - Sign up with GitHub (recommended) or email
   - Verify your email

2. **Create PostgreSQL Database**:
   - Click "New +" (top right)
   - Select "PostgreSQL"
   - Configure:
     ```
     Name: schoolmanagement-db
     Database: schoolmanagement  
     User: (auto-generated)
     Region: Singapore (or closest to you)
     PostgreSQL Version: 16
     Plan: Free (or Starter $7/mo for production)
     ```
   - Click "Create Database"
   - **Wait 2-3 minutes** for database to provision

3. **Save Connection Details**:
   - Click on your database name
   - Go to "Connections" tab
   - **Copy "Internal Database URL"** (looks like):
     ```
     postgresql://user:password@hostname:5432/database
     ```
   - **SAVE THIS** - You'll need it for Step 2!

---

### 🖥️ STEP 2: Deploy Backend to Render (10 min)

**Prerequisites**: 
- ✅ PostgreSQL database created (Step 1)
- ✅ DATABASE_URL saved
- ✅ SECRET_KEY generated (see below)

**Generate SECRET_KEY** (run this locally):
```bash
python -c "import secrets; print(secrets.token_urlsafe(50))"
```
Or use this one (CHANGE FOR PRODUCTION):
```
django-insecure-CHANGE-THIS-TO-YOUR-OWN-SECRET-KEY-50-chars
```

**Action Required:**

1. **Create Web Service**:
   - On Render Dashboard, click "New +" → "Web Service"
   - Click "Connect account" to connect GitHub
   - Find and select: `swostitech-solutions/SMS_Render`
   - Click "Connect"

2. **Configure Web Service**:
   ```
   Name: schoolmanagement-backend
   Region: Singapore (same as database)
   Branch: main
   Root Directory: SchoolManagementBackend/CollegeManagement
   Runtime: Python 3
   Build Command: chmod +x build.sh && ./build.sh
   Start Command: gunicorn Swostitech_Acadix.wsgi:application --bind 0.0.0.0:$PORT
   Plan: Free (or Starter $7/mo)
   ```

3. **Add Environment Variables**:
   Click "Advanced" → Add Environment Variables:
   
   ```
   SECRET_KEY=<paste-your-generated-secret-key>
   DEBUG=False
   ALLOWED_HOSTS=schoolmanagement-backend.onrender.com
   DATABASE_URL=<paste-internal-database-url-from-step-1>
   CORS_ALLOWED_ORIGINS=http://localhost:3000
   EMAIL_HOST=smtp.gmail.com
   EMAIL_PORT=587
   EMAIL_USE_TLS=True
   EMAIL_HOST_USER=info.swostibbsr@gmail.com
   EMAIL_HOST_PASSWORD=rwlqodsnjchmbwxa
   DEFAULT_FROM_EMAIL=info.swostibbsr@gmail.com
   ```

4. **Deploy**:
   - Click "Create Web Service"
   - **Wait 8-12 minutes** for first deployment
   - Monitor logs for any errors

5. **Save Backend URL**:
   Once deployed, your backend will be at:
   ```
   https://schoolmanagement-backend.onrender.com
   ```
   **SAVE THIS URL** - You'll need it for frontend!

---

### 👤 STEP 3: Create Admin User (2 min)

**Prerequisites**: Backend deployed successfully

**Action Required:**

1. Go to Render Dashboard → Your Web Service
2. Click "Shell" tab (top right)
3. Run this command:
   ```bash
   python manage.py createsuperuser
   ```
4. Enter:
   - Username: (your admin username)
   - Email: (your email)
   - Password: (strong password)
   - Confirm password

5. **Test Admin Access**:
   ```
   https://schoolmanagement-backend.onrender.com/admin/
   ```

---

### 🎨 STEP 4: Deploy Frontend to Vercel (8 min)

**Prerequisites**: 
- ✅ Backend deployed
- ✅ Backend URL saved

**Action Required:**

1. **Go to Vercel**: https://vercel.com
   - Sign in with GitHub

2. **Import Project**:
   - Click "Add New" → "Project"
   - Find: `swostitech-solutions/SMS_Render`
   - Click "Import"

3. **Configure Project**:
   ```
   Project Name: schoolmanagement-frontend (or your choice)
   Framework Preset: Create React App
   Root Directory: schoolmanagement_FrontEnd
   Build Command: npm run build (auto-detected)
   Output Directory: build (auto-detected)
   Install Command: npm install (auto-detected)
   ```

4. **Add Environment Variable**:
   - Click "Environment Variables"
   - Add:
     ```
     Name: REACT_APP_API_URL
     Value: https://schoolmanagement-backend.onrender.com/api/
     ```
     (Use YOUR backend URL from Step 2!)
   
5. **Deploy**:
   - Click "Deploy"
   - **Wait 3-5 minutes**
   - Once deployed, you'll get a URL like:
     ```
     https://schoolmanagement-frontend.vercel.app
     ```

---

### 🔗 STEP 5: Connect Frontend & Backend (5 min)

**Prerequisites**: 
- ✅ Backend deployed
- ✅ Frontend deployed
- ✅ Frontend URL saved

**Action Required:**

1. **Update Backend CORS**:
   - Go to Render Dashboard → Backend Service
   - Click "Environment" tab
   - Find `CORS_ALLOWED_ORIGINS`
   - Change to: `https://your-frontend-url.vercel.app`
     (Use YOUR Vercel URL!)
   - Click "Save Changes"
   - **Wait 2-3 minutes** for auto-redeploy

2. **Test Connection**:
   - Open your Vercel frontend URL
   - Try to login
   - Check browser console (F12) for any errors

---

### ✅ STEP 6: Final Testing (5 min)

**Test Backend:**
- [ ] Admin panel loads: `https://your-backend.onrender.com/admin/`
- [ ] Can login with superuser credentials
- [ ] API responds (try any endpoint)

**Test Frontend:**
- [ ] Application loads
- [ ] No console errors (F12 → Console)
- [ ] Login page appears
- [ ] Can authenticate

**Test Integration:**
- [ ] Login works from frontend
- [ ] Can view dashboard
- [ ] API calls work (check Network tab)
- [ ] No CORS errors

---

## 🎯 Current Task

**YOU ARE HERE** → Step 1: Create Render account and PostgreSQL database

**Start here**: https://dashboard.render.com

---

## 📝 Information to Save

| Item | Value | Status |
|------|-------|--------|
| GitHub Repo | https://github.com/swostitech-solutions/SMS_Render.git | ✅ Done |
| SECRET_KEY | _________________ | ⏳ Generate |
| Database URL | _________________ | ⏳ Pending |
| Backend URL | _________________ | ⏳ Pending |
| Frontend URL | _________________ | ⏳ Pending |
| Admin Username | _________________ | ⏳ Pending |
| Admin Password | _________________ | ⏳ Pending |

---

## 🆘 Troubleshooting

### Build Fails on Render
- Check build logs for specific error
- Verify Python version (should be 3.13)
- Ensure `requirements.txt` has all dependencies

### Database Connection Error
- Verify DATABASE_URL format is correct
- Check database is running (not paused)
- Ensure web service and database in same region

### CORS Errors
- Update CORS_ALLOWED_ORIGINS with exact Vercel URL
- No trailing slash in URL
- Wait for backend to redeploy after changing env vars

### Frontend Can't Reach Backend
- Verify REACT_APP_API_URL ends with `/api/`
- Check backend is not sleeping (free tier)
- Wait 50 seconds for cold start on free tier

---

## 💰 Costs

**Current Setup (Free Tier)**:
- Render PostgreSQL: Free for 90 days
- Render Web Service: Free (with limitations)
- Vercel: Free
- **Total: $0/month**

After 90 days: ~$7/month (database only)

---

## 📞 Need Help?

- Check deployment guides in repo
- Render docs: https://render.com/docs
- Vercel docs: https://vercel.com/docs

---

**Ready? Let's start with Step 1! 🚀**

Go to: https://dashboard.render.com
