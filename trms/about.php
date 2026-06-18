<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <meta name="description" content="" />
        <meta name="author" content="" />
        <title>About - Teachers Record Management System</title>
        <!-- Favicon-->
        <link rel="icon" type="image/x-icon" href="assets/favicon.ico" />
        <!-- Bootstrap icons-->
        <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.5.0/font/bootstrap-icons.css" rel="stylesheet" />
        <!-- Core theme CSS (includes Bootstrap)-->
        <link href="css/styles.css" rel="stylesheet" />
    </head>

    <body class="d-flex flex-column">
        <main class="flex-shrink-0">
            <!-- Navigation-->
            <?php include_once('includes/header.php'); ?>

            <!-- About section-->
            <section class="py-5 bg-light" id="scroll-target">
                <div class="container px-5 my-5">
                    <div class="row gx-5 align-items-center">
                        <div class="col-lg-6">
                            <img class="img-fluid rounded mb-5 mb-lg-0" src="images/about-us.jpg" alt="About TRMS" />
                        </div>
                        <div class="col-lg-6">
                            <h2 class="fw-bolder">About Us</h2>
                            <p class="lead fw-normal text-muted mb-0">
                                TRMS Project Modules<br>
                                In Teachers Record Management System we use PHP and MySQL database. This is the project which keeps records of Teachers. Teachers Record Management System has two modules i.e. admin and users.
                            </p>

                            <p><b>Admin Module</b></p>
                            <b>Dashboard:</b> In this section admin can briefly view total number of subjects and total number of teachers.<br>
                            <b>Subjects:</b> In this section, admin can manage the Subjects (add/update).<br>
                            <b>Teachers:</b> In this section, admin can add new teachers and manage the details of old teachers.<br>
                            <b>Search:</b> In this section, admin can search teachers by using teacher name.<br>
                            <b>Report:</b> In this section, admin can view number of teachers added in particular periods.<br>
                            <b>Profile:</b> In this section admin can update his/her profile.<br>
                            <b>Change Password:</b> In this section admin can change his/her own passwords.<br>
                            <b>Logout:</b> Through this button admin can logout.<br>
                            <b>Forgot Password:</b> In this section, admin can reset his/her password by using registered email id and contact number.<br>

                            <p><b>Teacher Module</b></p>
                            Dashboard: It is the welcome page for a teacher.<br>
                            Queries: In this section, teacher can view the queries raised by users.<br>
                            Profile: In this section teacher can update his/her profile.<br>
                            Change Password: In this section teacher can change his/her own passwords.<br>
                            Logout: Through this button teacher can logout.<br>
                            Note: In this project MD5 encryption method is used.<br>

                            <p><b>Users</b></p>
                            Users can search the teachers by entering the subject name and raise queries which are seen by the teacher.
                        </div>
                    </div>
                </div>
            </section>
        </main>

        <!-- Footer-->
        <?php include_once('includes/footer.php'); ?>

        <!-- Bootstrap core JS-->
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
        <!-- Core theme JS-->
        <script src="js/scripts.js"></script>
    </body>
</html>
