# Family Calendar - Wall Display

A single-page web app for a wall-mounted iPad that shows your family's Google Calendars in a clean weekly view.

## Features
- **Google Sign-In** — auto-discovers all your calendars (shared, family, sports, etc.)
- **Calendar Picker** — toggle each calendar on/off with custom colors
- **Sports Detection** — auto-badges Bucks 🦌, Packers 🏈, Brewers ⚾, Badgers 🏅 calendars
- **Weather** — current conditions for Milwaukee area (Open-Meteo, no key needed)
- **Dark / Light Mode** — toggle or auto-detect from system
- **Countdown Bar** — shows next upcoming event across all calendars
- **Screen Wake Lock** — keeps iPad display on
- **Touch Swipe** — swipe left/right to navigate weeks
- **Add to Home Screen** — full-screen web app mode on iPad

## Quick Start

### 1. Create a Google Cloud OAuth Client ID
1. Go to [Google Cloud Console](https://console.cloud.google.com/)
2. Create a new project (or pick an existing one)
3. **APIs & Services → Library** → search **Google Calendar API** → **Enable**
4. **APIs & Services → OAuth consent screen**
   - Choose **External**, click Create
   - Fill in App name, User support email, Developer email → Save
   - Scopes: click **Add or Remove Scopes**, add `../auth/calendar.readonly` and `../auth/userinfo.profile`
   - Test users: add your Google email (and family member emails)
   - Publish the app (or stay in Testing — up to 100 test users)
5. **APIs & Services → Credentials** → **Create Credentials → OAuth client ID**
   - Application type: **Web application**
   - Authorized JavaScript origins: add your GitHub Pages URL, e.g. `https://yourusername.github.io`
   - Also add `http://localhost:8080` for local testing
   - Click Create → copy the **Client ID**

### 2. Deploy to GitHub Pages
1. Install [Git](https://git-scm.com/downloads) if you haven't
2. Create a new repository on GitHub (e.g. `family-calendar`)
3. Push this code:
   ```bash
   cd calender
   git init
   git add .
   git commit -m "Initial commit"
   git branch -M main
   git remote add origin https://github.com/YOURUSERNAME/family-calendar.git
   git push -u origin main
   ```
4. In the GitHub repo → **Settings → Pages** → Source: **Deploy from a branch** → Branch: **main** → Save
5. Wait ~1 minute, your site will be at `https://yourusername.github.io/family-calendar/`

### 3. Set Up on iPad
1. Open Safari → go to your GitHub Pages URL
2. Click the **⚙ Settings** gear → paste your **Client ID** → Save
3. Click **Sign in with Google** → sign in with your Google account
4. Toggle on the calendars you want to see
5. **Share button (□↑) → Add to Home Screen** → tap Add
6. Open the new home screen icon — it runs full-screen!
7. Go to iPad **Settings → Display & Brightness → Auto-Lock → Never**

## Local Development
```bash
npx http-server -p 8080
# Open http://localhost:8080
```

## License
MIT
