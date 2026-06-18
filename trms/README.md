# 🎓 Teachers Record Management System (TRMS)

> A PHP/MySQL web application for managing teacher profiles, built as a BCA final-year project at the University of Burdwan (2022).

---

## 📋 Table of Contents

- [About the Project](#about-the-project)
- [Features](#features)
- [Tech Stack](#tech-stack)
- [Project Structure](#project-structure)
- [Prerequisites](#prerequisites)
- [Installation Guide](#installation-guide)
- [Default Login Credentials](#default-login-credentials)
- [How to Use](#how-to-use)
- [Database Schema](#database-schema)
- [Screenshots](#screenshots)
- [Authors](#authors)

---

## About the Project

TRMS is a web-based system that keeps records of teachers. It allows students/users to search for teachers by name or subject, and gives administrators full control over teacher management.

---

## Features

### 👤 User (Public) Module
- Search teachers by **name** or **subject**
- View listed teacher profiles publicly
- Send queries to specific teachers

### 🔑 Admin Module
- Secure admin login with MD5 password encryption
- **Dashboard** — Quick count of total subjects and teachers
- **Subjects** — Add and manage subjects
- **Teachers** — Add, edit, delete teacher records
- **Search** — Search teachers by name or subject
- **Reports** — View teachers added in specific time periods
- **Profile** — Update admin profile
- **Change Password** — Update admin password
- **Forgot Password** — Password recovery via registered email/contact

### 🧑‍🏫 Teacher Module
- Teacher self-registration and login
- **Dashboard** — Welcome page
- **Queries** — View queries raised by users
- **Profile** — Update personal profile
- **Change Password** — Update own password

---

## Tech Stack

| Layer       | Technology                        |
|-------------|-----------------------------------|
| Frontend    | HTML5, CSS3, Bootstrap 5, jQuery  |
| Backend     | PHP 7+                            |
| Database    | MySQL 5.6+                        |
| Server      | XAMPP / WAMP / MAMP / LAMP        |
| Encryption  | MD5 (for passwords)               |

---

## Project Structure

```
trms/
├── index.php                  # Public homepage (search + listed teachers)
├── about.php                  # About page
├── listed-teachers.php        # Full teacher listing
├── contact.php                # Contact page
├── search-result.php          # Search results
├── trms_database.sql          # Database schema + seed data
│
├── includes/
│   ├── dbconnection.php       # ⚙️  Database config (edit this!)
│   ├── header.php             # Frontend navigation bar
│   └── footer.php             # Frontend footer
│
├── admin/
│   ├── index.php              # Admin login
│   ├── dashboard.php          # Admin dashboard
│   ├── add-teacher.php        # Add new teacher
│   ├── manage-teacher.php     # List / delete teachers
│   ├── edit-teacher-detail.php# Edit teacher details
│   ├── add-subjects.php       # Add subject
│   ├── manage-subjects.php    # List / edit subjects
│   ├── search.php             # Admin teacher search
│   ├── queries.php            # View user queries
│   ├── report.php             # Teacher registration reports
│   ├── profile.php            # Admin profile
│   ├── change-password.php    # Change admin password
│   ├── forgot-password.php    # Password recovery
│   ├── logout.php             # Admin logout
│   └── includes/
│       ├── dbconnection.php
│       ├── header.php
│       └── sidebar.php
│
├── teacher/
│   ├── index.php              # Teacher login
│   ├── signup.php             # Teacher self-registration
│   ├── dashboard.php          # Teacher dashboard
│   ├── profile.php            # Teacher profile update
│   ├── change-password.php    # Teacher change password
│   ├── logout.php             # Teacher logout
│   ├── images/                # Teacher profile photos (uploaded)
│   └── includes/
│       └── dbconnection.php
│
├── images/                    # Site images (about-us.jpg, 1.jpg, etc.)
├── css/
│   └── styles.css             # Main stylesheet (Bootstrap-based)
├── js/
│   └── scripts.js             # Main JavaScript
└── assets/
    └── favicon.ico
```

---

## Prerequisites

Make sure you have **one** of the following local server packages installed:

| Option | Download Link |
|--------|--------------|
| XAMPP (recommended) | https://www.apachefriends.org/ |
| WAMP | https://www.wampserver.com/ |
| MAMP | https://www.mamp.info/ |
| LAMP (Linux) | via `apt install apache2 php mysql-server` |

You also need a web browser (Chrome, Firefox, Edge, etc.).

---

## Installation Guide

Follow these steps **exactly in order** to get the project running on your local machine.

### Step 1 — Download or Clone the Repository

**Option A — Download ZIP:**
1. Click the green **Code** button on this page
2. Select **Download ZIP**
3. Extract the ZIP file

**Option B — Clone with Git:**
```bash
git clone https://github.com/YOUR_USERNAME/YOUR_REPO_NAME.git
```

---

### Step 2 — Copy Project to Server Root

Move the extracted `trms` folder into your server's web root:

| Server | Web Root Path |
|--------|--------------|
| XAMPP (Windows) | `C:\xampp\htdocs\` |
| XAMPP (Mac/Linux) | `/Applications/XAMPP/htdocs/` |
| WAMP | `C:\wamp64\www\` |
| MAMP | `/Applications/MAMP/htdocs/` |

After this step, your project should be at:
```
C:\xampp\htdocs\trms\        (Windows example)
```

---

### Step 3 — Start Your Local Server

Open XAMPP Control Panel and start:
- ✅ **Apache**
- ✅ **MySQL**

---

### Step 4 — Create the Database

1. Open your browser and go to: **http://localhost/phpmyadmin**
2. Click **New** in the left sidebar
3. Type `trms` as the database name → click **Create**
4. Click on the `trms` database you just created
5. Click the **Import** tab at the top
6. Click **Choose File** → select `trms_database.sql` from the project folder
7. Scroll down and click **Go**

✅ You should see a success message. The tables are now created with sample data.

---

### Step 5 — Configure Database Connection

Open the file `includes/dbconnection.php` in a text editor:

```php
define('DB_HOST', 'localhost');
define('DB_USER', 'root');       // ← Change to your MySQL username
define('DB_PASS', '');           // ← Change to your MySQL password (blank for XAMPP default)
define('DB_NAME', 'trms');       // Leave as-is
```

> **XAMPP default:** username is `root`, password is empty — no change needed.
> **WAMP default:** username is `root`, password is empty.

Save the file.

---

### Step 6 — Open the Project in Browser

Visit: **http://localhost/trms/**

You should see the TRMS homepage! 🎉

---

## Default Login Credentials

### Admin Login
URL: `http://localhost/trms/admin/`

| Field    | Value      |
|----------|------------|
| Username | `admin`    |
| Password | `admin@123`|

> **Security Note:** Change the default admin password immediately after first login.

### Teacher Login
URL: `http://localhost/trms/teacher/`

Teachers can register themselves via **Sign Up**, or be added by the admin.

---

## How to Use

### As a Visitor/User
1. Go to `http://localhost/trms/`
2. Use the search bar to find a teacher by **name** or **subject**
3. Click on a teacher card to view full details

### As an Admin
1. Go to `http://localhost/trms/admin/`
2. Login with admin credentials
3. From the dashboard you can:
   - Add new subjects under **Subjects → Add Subject**
   - Add teachers manually under **Teachers → Add Teacher**
   - Search, edit, or delete teacher records
   - View user queries

### As a Teacher
1. Go to `http://localhost/trms/teacher/signup.php` to register
2. After registration, login at `http://localhost/trms/teacher/`
3. Update your profile, view queries from users

---

## Database Schema

### `tbladmin` — Admin credentials
| Column | Type | Description |
|--------|------|-------------|
| ID | INT | Primary key |
| UserName | VARCHAR | Admin username |
| Password | VARCHAR | MD5 hashed password |
| Email | VARCHAR | Admin email |
| MobileNumber | VARCHAR | Admin contact |

### `tblteacher` — Teacher profiles
| Column | Type | Description |
|--------|------|-------------|
| ID | INT | Primary key |
| Name | VARCHAR | Teacher full name |
| Picture | VARCHAR | Profile photo filename |
| Email | VARCHAR | Email address |
| MobileNumber | VARCHAR | Contact number |
| Qualifications | VARCHAR | Degrees (comma-separated) |
| Address | TEXT | Full address |
| TeacherSub | VARCHAR | Subject assigned |
| JoiningDate | DATE | Date of joining |
| teachingExp | VARCHAR | Years of experience |
| description | TEXT | Bio/description |
| password | VARCHAR | MD5 hashed (teacher login) |
| isPublic | TINYINT | 1 = visible on public site |
| RegDate | TIMESTAMP | Registration date |

### `tblsubjects` — Subjects list
| Column | Type | Description |
|--------|------|-------------|
| ID | INT | Primary key |
| Subject | VARCHAR | Subject name |
| CreationDate | TIMESTAMP | Added date |

### `tblquery` — User queries to teachers
| Column | Type | Description |
|--------|------|-------------|
| ID | INT | Primary key |
| TeacherID | INT | Foreign key → tblteacher |
| QueryText | TEXT | Query content |
| UserName | VARCHAR | Name of person querying |
| UserEmail | VARCHAR | Email of person querying |
| PostDate | TIMESTAMP | Submitted on |

---

## Screenshots

> Add screenshots of your project here by uploading images to an `screenshots/` folder and linking them like:
```markdown
![Homepage](screenshots/homepage.png)
![Admin Dashboard](screenshots/admin-dashboard.png)
![Teacher Profile](screenshots/teacher-profile.png)
```

---

## Authors

| Name | Roll No | Reg No |
|------|---------|--------|
| Kazi Nafis Nawaz | 19BCA060020 | 201905000047 |
| Archishman Ghatak | 19BCA060005 | 201905000016 |
| Subhodip Ghosh | 19BCA060047 | 201905000117 |

**Institution:** Burdwan Institute of Management & Computer Science  
**Guide:** Mr. Aftab Hossain Chowdhury  
**Industry Mentor:** Mr. Manas Banerjee (Technical Head, GBS Creation Pvt. Ltd.)  
**Year:** 2022

---

## License

This project was developed as a BCA final-year academic project. Feel free to use it for learning purposes.
