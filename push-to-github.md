# How to Push Code to GitHub - Step by Step

## The Problem
Your git is configured with a different account (Kashish-0509) but you want to push to Dipikagithub123's repository. GitHub requires proper authentication.

## Solution: Use Personal Access Token

### Step 1: Create Personal Access Token

1. **Go to GitHub Settings:**
   - Visit: https://github.com/settings/tokens
   - Or: Click your profile picture → Settings → Developer settings → Personal access tokens → Tokens (classic)

2. **Generate New Token:**
   - Click "Generate new token (classic)"
   - Give it a name: `Sweet Shop Project`
   - Select expiration: `90 days` (or `No expiration` for convenience)
   - **Check the `repo` checkbox** (this gives full repository access)
   - Scroll down and click "Generate token"

3. **Copy the Token:**
   - ⚠️ **IMPORTANT**: Copy the token immediately - you won't see it again!
   - It looks like: `ghp_xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx`

### Step 2: Push Using the Token

**Option A: Push and Enter Credentials When Prompted**

Run this command:
```bash
git push -u origin main
```

When prompted:
- **Username**: `Dipikagithub123`
- **Password**: Paste your Personal Access Token (NOT your GitHub password)

**Option B: Include Token in URL (One-time)**

If you want to avoid entering credentials every time, you can use:

```bash
git remote set-url origin https://Dipikagithub123:YOUR_TOKEN@github.com/Dipikagithub123/dipika-sweet-shop-management.git
git push -u origin main
```

Replace `YOUR_TOKEN` with your actual token.

### Step 3: Verify Upload

After pushing, visit:
https://github.com/Dipikagithub123/dipika-sweet-shop-management

You should see all your files!

## Alternative: Use GitHub Desktop (Easier)

1. Download GitHub Desktop: https://desktop.github.com/
2. Sign in with your **Dipikagithub123** account
3. File → Add Local Repository
4. Select your project folder
5. Click "Publish repository"

## Troubleshooting

**Error: "Permission denied"**
- Make sure you're using the Personal Access Token, not your password
- Verify the token has `repo` scope enabled

**Error: "Repository not found"**
- Make sure you're logged into the correct GitHub account (Dipikagithub123)
- Verify the repository exists at: https://github.com/Dipikagithub123/dipika-sweet-shop-management

**Error: "Authentication failed"**
- Your token might have expired
- Generate a new token and try again

