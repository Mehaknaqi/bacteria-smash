# 🦠 BACTERIA SMASH - IMRS'26 Interactive Game

A premium arcade-style mobile game for the Internal Medicine Research Symposium 2026. Players smash bacteria in 20 seconds to unlock an exclusive registration reward.

## 📋 Table of Contents

1. [Quick Start](#quick-start)
2. [What You'll Need](#what-youll-need)
3. [Step 1: Supabase Setup](#step-1-supabase-setup)
4. [Step 2: GitHub Setup](#step-2-github-setup)
5. [Step 3: Configuration](#step-3-configuration)
6. [Testing](#testing)
7. [QR Code Generation](#qr-code-generation)
8. [Troubleshooting](#troubleshooting)

---

## 🚀 Quick Start

**Total time: ~15 minutes (for first-time users)**

### For Experienced Developers:

1. Create Supabase project → Run `supabase-setup.sql` → Get credentials
2. Clone/fork the GitHub repository
3. Update `SUPABASE_URL` and `SUPABASE_ANON_KEY` in `bacteria-smash.html`
4. Push to GitHub
5. Enable GitHub Pages
6. Done! Get the URL and generate QR code

### For Beginners:

Follow the detailed step-by-step guide below.

---

## 📦 What You'll Need

- ✅ **Free Supabase Account** (https://supabase.com)
- ✅ **Free GitHub Account** (https://github.com)
- ✅ **A text editor** (VS Code, Notepad++, or even Notepad)
- ✅ **No credit card required** – stays within free tier

**Time commitment:**
- Supabase setup: 5 minutes
- GitHub setup: 3 minutes
- Configuration: 2 minutes
- Testing: 5 minutes

---

## Step 1: Supabase Setup

### 1.1 Create a Supabase Account

1. Go to **https://supabase.com**
2. Click **"Start your project for free"**
3. Sign up with GitHub (recommended) or email
4. Verify your email if needed

### 1.2 Create a New Project

1. Click **"New Project"** in your dashboard
2. **Project Name:** `bacteria-smash` (or any name)
3. **Database Password:** Create a strong password (you'll need this)
4. **Region:** Choose closest to your location
5. Click **"Create new project"** and wait ~2 minutes for it to initialize

### 1.3 Get Your Supabase Credentials

Once your project is ready:

1. Go to **Settings** → **API** (left sidebar)
2. Find these two values:
   - **Project URL** (looks like: `https://xxxxxxxx.supabase.co`)
   - **Anon/Public Key** (starts with `eyJhbGc...`)
3. **Copy and save both values** – you'll need them in Step 3

### 1.4 Create the Database Table

1. Go to **SQL Editor** (left sidebar under "Development")
2. Click **"New Query"**
3. **Copy the entire contents** of `supabase-setup.sql`
4. **Paste it** into the SQL editor
5. Click **"RUN"** (green button, top right)
6. You should see: `Success. No rows returned.`

✅ **Your database is ready!**

---

## Step 2: GitHub Setup

### 2.1 Create a GitHub Repository

1. Go to **https://github.com/new**
2. **Repository name:** `bacteria-smash` (must be lowercase)
3. **Description:** (optional) "BACTERIA SMASH - IMRS'26 Interactive Game"
4. **Public** (required for GitHub Pages to work)
5. **Do NOT initialize with README** (we'll add files manually)
6. Click **"Create repository"**

### 2.2 Upload the Game Files

You have two options:

#### Option A: Using GitHub's Web Interface (Easiest)

1. On your new repository page, click **"Add file"** → **"Upload files"**
2. Upload these three files:
   - `bacteria-smash.html`
   - `supabase-setup.sql` (optional, for reference)
   - `README.md` (this file)
3. Scroll down and click **"Commit changes"**

#### Option B: Using Git Command Line (For Developers)

```bash
git clone https://github.com/YOUR_USERNAME/bacteria-smash.git
cd bacteria-smash

# Copy the files into this directory
# bacteria-smash.html
# supabase-setup.sql
# README.md

git add .
git commit -m "Add BACTERIA SMASH game"
git push origin main
```

### 2.3 Enable GitHub Pages

1. Go to your repository
2. Click **Settings** (top right)
3. Click **"Pages"** (left sidebar)
4. Under "Build and deployment":
   - **Source:** Select **"Deploy from a branch"**
   - **Branch:** Select **"main"** and **"/ (root)"**
5. Click **"Save"**
6. Wait ~1 minute
7. You'll see a message: **"Your site is live at: https://YOUR_USERNAME.github.io/bacteria-smash"**

✅ **Your game is now hosted!**

---

## Step 3: Configuration

### 3.1 Update the Game with Your Supabase Credentials

1. Go to your GitHub repository
2. Click on **`bacteria-smash.html`** (in the file list)
3. Click the **pencil icon** (top right) to edit
4. Find these lines (around line 473):

```javascript
const SUPABASE_URL = "YOUR_SUPABASE_URL";
const SUPABASE_ANON_KEY = "YOUR_SUPABASE_ANON_KEY";
```

5. Replace `YOUR_SUPABASE_URL` with your Project URL (from Step 1.3)
   - Example: `const SUPABASE_URL = "https://xxxxxxxx.supabase.co";`

6. Replace `YOUR_SUPABASE_ANON_KEY` with your Anon Key (from Step 1.3)
   - Example: `const SUPABASE_ANON_KEY = "eyJhbGc...";`

7. Scroll down and click **"Commit changes"**
8. Leave the default message and click **"Commit changes"** again

### 3.2 Wait for GitHub Pages to Rebuild

- GitHub will automatically rebuild your site (takes ~1 minute)
- You'll see a small indicator next to the commit hash that says "Deployment"
- When it's green/complete, your game is updated!

---

## 🧪 Testing

### Test Locally (Before Publishing)

1. Download `bacteria-smash.html` to your computer
2. Double-click it to open in your browser
3. Game should work, but leaderboard will fail (if Supabase not configured)

### Test on Mobile (Recommended)

1. Open your GitHub Pages URL on a mobile phone
   - Example: `https://username.github.io/bacteria-smash`
2. Test gameplay:
   - ✅ Can you tap bacteria?
   - ✅ Does the score increase?
   - ✅ Does the timer count down?
3. Win the game (21+ points) and check leaderboard:
   - ✅ Can you enter your name?
   - ✅ Does your score appear in the leaderboard?
   - ✅ Can you see other players' scores?
4. Click "CLAIM YOUR REWARD":
   - ✅ Does it open the IMRS'26 Google Form in a new tab?

### Test Across Devices

1. Have 2+ people play on different phones
2. Player 1 enters name and score
3. Player 2 plays and views the leaderboard
4. Player 2 should see Player 1's score
5. Scores should be ranked correctly (highest first)

---

## 🔗 QR Code Generation

Once you have your GitHub Pages URL, you can create a QR code:

### Option 1: Free Online (Easiest)

1. Go to **https://www.qr-code-generator.com**
2. Paste your GitHub Pages URL:
   - Example: `https://username.github.io/bacteria-smash`
3. Click **"Create QR Code"**
4. Download the image
5. Print it on your physical carton/standee for IMRS'26

### Option 2: Use a QR Code Library

- Python: `pip install qrcode` → [Script provided below]
- Node.js: `npm install qrcode` → [Script provided below]

### Python Script:

```python
import qrcode

url = "https://username.github.io/bacteria-smash"  # Replace with your URL
qr = qrcode.QRCode(version=1, box_size=10, border=4)
qr.add_data(url)
qr.make(fit=True)
img = qr.make_image(fill_color="black", back_color="white")
img.save("bacteria-smash-qr.png")
print("QR code saved as bacteria-smash-qr.png")
```

### Tips:

- Make sure the QR code links directly to your GitHub Pages URL
- Test the QR code on a phone before printing
- Ensure good contrast (dark on light background) for scanning
- Test scanning from different angles and distances

---

## 🔧 Troubleshooting

### Issue: GitHub Pages not showing my site

**Solution:**
1. Go to Settings → Pages
2. Verify the branch is set to "main" and folder is "/ (root)"
3. Wait 1-2 minutes for deployment
4. Refresh your browser (Ctrl+Shift+R to clear cache)

### Issue: Game won't load at all

**Solution:**
1. Check browser console (F12 → Console tab)
2. Look for errors
3. Make sure you uploaded all files correctly
4. Ensure the filename is exactly `bacteria-smash.html`

### Issue: Leaderboard not working / scores not saving

**Solution:**
1. Check that you replaced `SUPABASE_URL` and `SUPABASE_ANON_KEY` correctly
2. Verify there are no extra spaces or quotes
3. Open browser console (F12 → Console tab)
4. Look for error messages
5. Check Supabase project:
   - Go to Table Editor
   - Click on "scores" table
   - Verify it exists and has no errors

### Issue: Supabase Database Error

**Solution:**
1. Go to your Supabase project → SQL Editor
2. Run this query to check:
```sql
SELECT * FROM scores LIMIT 1;
```
3. If it fails, re-run the entire `supabase-setup.sql` from Step 1.4
4. Make sure there are no duplicate tables

### Issue: Leaderboard shows scores but with wrong ranking

**Solution:**
1. Scores should be ranked by score (highest first)
2. If not, check that the index was created properly:
   - Go to SQL Editor
   - Run: `SELECT * FROM scores ORDER BY score DESC LIMIT 10;`
3. If results look wrong, the RLS policies might need adjustment

### Issue: Can't submit score with my name

**Solution:**
1. Name must be 1-20 characters
2. No special characters required, but they're allowed
3. If error persists, check browser console for details
4. Verify Supabase RLS policies were applied (Step 1.4)

### Issue: Registration button doesn't open Google Form

**Solution:**
1. Make sure the Google Form URL is correct in the game:
   - Find: `const REGISTRATION_URL = "https://docs.google.com/..."`
   - Verify it matches the link provided by IMRS'26
2. Check that your browser allows pop-ups (some phones block them)
3. Test on a different browser/device

---

## 📊 How the Leaderboard Works

### Real-time Shared Leaderboard

- **Database:** Supabase (PostgreSQL)
- **Storage:** All scores stored permanently
- **Access:** Every player sees the same leaderboard
- **Updates:** When a player submits, it appears instantly for others
- **Ranking:** Highest score first, ties broken by submission time

### Data Flow:

```
Player 1 (Phone A)
    ↓
Taps bacteria, wins game
    ↓
Enters name, clicks "Submit & View Leaderboard"
    ↓
Score sent to Supabase
    ↓
Leaderboard updates
    ↓
                    Leaderboard also updates for:
                    ↓
                    Player 2 (Phone B)
                    Player 3 (Tablet)
                    Player 4 (Laptop)
                    (etc.)
```

### Anti-Cheat Measures:

- ✅ Score validated (must be 0-9999)
- ✅ Name validated (must be 1-20 characters)
- ✅ RLS policies prevent direct database access
- ✅ No UPDATE/DELETE allowed (scores permanent once submitted)
- ✅ Public key never has full access

---

## 📱 Mobile Optimization

The game is fully optimized for mobile:

- ✅ Touch-friendly tap targets
- ✅ Responsive layout (works on phones, tablets, desktops)
- ✅ No scroll during gameplay (prevents accidental navigation)
- ✅ Fast load times (~50KB total)
- ✅ Works on iOS and Android
- ✅ Safe area support (notches, home indicators)

---

## 🎮 Game Features

### Gameplay:
- 20-second timer
- Random bacteria spawning
- Increasing difficulty
- Real-time score updates
- Responsive tap feedback

### Progression:
- Landing screen with instructions
- 3-2-1 countdown
- Interactive gameplay arena
- Win/lose result screen
- Name entry (1-20 characters)
- Real-time leaderboard with rankings
- Reward unlock for winners (21+ points)
- Registration claim button

### Visual Design:
- IMRS'26 brand colors (maroon, gold, cream)
- Premium typography (Cinzel headings, Inter body)
- Custom SVG bacteria graphics (4 types)
- Smooth animations
- Dark theme with accent lighting
- Medical/scientific aesthetic

---

## 💾 File Structure

```
bacteria-smash/
├── bacteria-smash.html      (Game code - single file)
├── supabase-setup.sql       (Database schema - reference only)
└── README.md                (This file - documentation)
```

That's it! The entire game is in one HTML file for easy deployment.

---

## 🚀 Performance & Scalability

### Free Tier Limits:

- **Supabase:** Up to 500,000 API calls/month = ~16,000 submissions
- **GitHub Pages:** Unlimited
- **Expected capacity:** Handles 100+ concurrent players easily

### For IMRS'26:

- Expect 50-200 players (conservative estimate)
- Database will easily handle this volume
- No paid upgrades needed

---

## 📞 Support & Contact

### Common Questions:

**Q: Can I customize the colors?**
A: Yes! Edit the `:root` CSS variables in `bacteria-smash.html`

**Q: Can I change the IMRS'26 registration link?**
A: Yes, find the line: `const REGISTRATION_URL = "..."`

**Q: How long will the leaderboard persist?**
A: Permanently (Supabase keeps it indefinitely)

**Q: Can players access the leaderboard without playing?**
A: Yes, after entering a name, everyone can view scores

**Q: Is there a data export feature?**
A: Not in-game, but you can export from Supabase → Table Editor

---

## ✅ Verification Checklist

Before launching at IMRS'26:

- [ ] Supabase project created and database table set up
- [ ] GitHub repository created with all files
- [ ] GitHub Pages enabled and site is live
- [ ] SUPABASE_URL and SUPABASE_ANON_KEY updated in HTML
- [ ] Tested on at least 2 different phones
- [ ] Score submission works
- [ ] Leaderboard updates in real-time across devices
- [ ] Reward button opens Google Form
- [ ] QR code generated and tested
- [ ] QR code printed on physical carton

---

## 📄 License & Attribution

**BACTERIA SMASH** © IMRS'26

Built for the Internal Medicine Research Symposium 2026.

Technologies used:
- HTML5 / CSS3 / JavaScript
- Supabase (PostgreSQL)
- GitHub Pages
- Google Fonts (Cinzel, Inter)

---

## 🎉 You're Ready!

You now have a complete, working arcade game with a shared leaderboard, reward system, and IMRS'26 integration.

**Next steps:**
1. Follow the steps above
2. Test thoroughly
3. Print the QR code
4. Launch at IMRS'26
5. Watch people have fun smashing bacteria!

---

**Questions?** Open an issue on GitHub or review the inline code comments in `bacteria-smash.html`.

Good luck! 🦠💥
