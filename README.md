# 📌 Personal Task Manager

A Flutter-based **Personal Task Manager** to help users organize tasks efficiently. Built using **Flutter** and **Firebase Firestore**, following **MVVM architecture** for better scalability.

---
## **🚀 Overview**
A Flutter-based Personal Task Manager to help users organize tasks efficiently. Built using Flutter and Firebase Firestore, following MVVM architecture for better scalability.

---
## **🚀 Features**
This app allows users to:
✅ Add, edit, and delete tasks.
✅ Categorize tasks with priorities.
✅ View tasks on a calendar-based UI.
✅ Track task completion status.
✅ State management using Provider.

---

## **📂 Project Structure**

📂 lib/
├── 📂 models/            # Data Models (TaskModel, CategoryModel)
├── 📂 providers/         # State Management (TaskProvider, ThemeProvider)
├── 📂 services/          # Firebase interactions (TaskService)
├── 📂 screens/           # UI Screens (Home, Task Calendar, Add Task, Settings)
├── 📂 widgets/           # Reusable UI Components (TaskListTile, AppText, etc.)
├── 📝 main.dart          # Entry point of the application

---



## **📊 Database Setup**

The app uses Firebase Firestore for task storage. Collections include:

tasks (id, title, description, dueDate, priority, status, categoryId)

categories (id, name)

Ensure Firebase is configured:

Add google-services.json (Android) inside android/app/.

Add GoogleService-Info.plist (iOS) inside ios/Runner/.

Enable Firestore Database in Firebase Console.



## **Tech Stack**
- **Framework:** Flutter (Dart)  
- **State Management:** Provider  
- **Database:** Firebase  
- **UI Components:** Material Design

---
## **🚀 Future Improvements**

🔹 Implement push notifications for due tasks.
🔹 Add task reminders and alarms.
🔹 Improve UI with animations and themes.
🔹 Integrate cloud sync with Firebase Auth.