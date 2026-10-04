# Teachers Record Management System (TRMS)

A PHP/MySQL web application for managing teacher records — built as a BCA
final-year project at the University of Burdwan (2022). It digitalizes teacher
profile management: personal details, subject allocation, attendance,
performance evaluation, search, and ratings.

> **Full documentation lives in [`trms/README.md`](trms/README.md)** —
> features, tech stack, installation guide, default credentials, database
> schema, and screenshots. Start there.

## Quick Start

1. Import `trms/trms_database.sql` into MySQL.
2. Configure DB credentials in `trms/includes/` config.
3. Serve `trms/` with Apache/PHP (e.g. XAMPP) and open it in a browser.

## Tech Stack

- **Backend:** PHP
- **Database:** MySQL
- **Frontend:** HTML, CSS, JavaScript

## Project Structure

```
trms/
  index.php / about.php / contact.php   # public pages
  listed-teachers.php / search-result.php
  admin/ / teacher/                      # role modules
  includes/                              # shared config + helpers
  trms_database.sql                      # database dump
  README.md                              # full documentation
```
