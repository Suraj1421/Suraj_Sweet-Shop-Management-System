# How to Push to GitHub

## Step 1: Create Personal Access Token

1. Go to: https://github.com/settings/tokens
2. Click "Generate new token (classic)"
3. Name: "Sweet Shop Project"
4. Select scope: **repo** (full control)
5. Click "Generate token"
6. **Copy the token immediately** (you won't see it again!)

## Step 2: Push to GitHub

Run this command in your terminal:

```bash
cd "C:\Users\ASUS\OneDrive\Desktop\sweet shop management system"
git push -u origin main
```

When prompted:
- **Username**: `Dipikagithub123`
- **Password**: Paste your Personal Access Token (NOT your GitHub password)

## Alternative: Use GitHub Desktop

If you prefer a GUI:
1. Download GitHub Desktop: https://desktop.github.com/
2. Sign in with your GitHub account
3. File → Add Local Repository
4. Select your project folder
5. Click "Publish repository"

## Alternative: Use SSH (More Secure)

1. Generate SSH key:
   ```bash
   ssh-keygen -t ed25519 -C "your_email@example.com"
   ```

2. Add SSH key to GitHub:
   - Copy the public key from: `C:\Users\ASUS\.ssh\id_ed25519.pub`
   - Go to: https://github.com/settings/keys
   - Click "New SSH key"
   - Paste and save

3. Change remote to SSH:
   ```bash
   git remote set-url origin git@github.com:Dipikagithub123/dipika-sweet-shop-management.git
   git push -u origin main
   ```

