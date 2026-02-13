# 🥕 GreenMart

A Flutter UI implementation based on the provided Figma design.  
Developed during the Flutter course.

This project demonstrates clean UI implementation, reusable components, feature-based structure, and basic authentication flow design.

---

# 🟢 Session 10 – Intro Flow

### Implemented Screens:

- Splash Screen
- Onboarding Screen

## 📸 Screenshots

### Splash Screen

<img src="screen_shots/splash_screen.png" width="300"/>

### Onboarding Screen

<img src="screen_shots/onbording_screen.png" width="300"/>

---

# 🟢 Session 11 – Authentication Flow

### Implemented Screens:

- Login Screen
- Sign Up Screen
- Enter Mobile Number Screen
- OTP Verification Screen

## 📸 Screenshots

### Login Screen

<img src="screen_shots/login_screen.png" width="300"/>

### Sign Up Screen

<img src="screen_shots/sign_up_screen.png" width="300"/>

### Enter Mobile Number Screen

<img src="screen_shots/number_screen.png" width="300"/>

### OTP Verification Screen

<img src="screen_shots/verification_screen.png" width="300"/>

---

## 🏗 Project Structure

The project follows a feature-based structure with separation of concerns:

```
lib/
├── core/
│   ├── constants/
│   ├── functions/
│   ├── styles/
│   └── widgets/
│
├── features/
│   └── auth/
│       ├── functions/
│       ├── screens/
│       └── widgets/
│
├── intro/
└── explore/
```

### Structure Explanation

- **core/** → Shared resources (colors, styles, navigation, validations, reusable widgets)
- **features/auth/** → Authentication feature module
- **functions/** → Logic separated from UI (e.g., OTP timer)
- **widgets/** → Reusable UI components
- **styles/** → Centralized theme management


---

# ✨ Features

- Clean and modular architecture
- Reusable custom widgets
- Centralized colors and text styles
- SVG asset support
- OTP input field using Pinput
- Countdown timer logic separated from UI
- Form validation
- Basic responsive layout handling

---

# 📦 Dependencies

- flutter_svg
- pinput
- cupertino_icons
