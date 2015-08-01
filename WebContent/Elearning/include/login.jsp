<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">

<!-- start head section -->

<head>
    <!-- set title to web page -->
    <title>Login | Register</title>

    <!-- set to unicode support -->
    <meta charset="utf-8">

    <!-- for responsive with mobile or small device -->
    <meta name="viewport" content="width=device-width, initial-scale=1" />

    <!-- style and script with cdn -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
    <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
    <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">

    <!-- require style for all pages -->
    <link rel="stylesheet" type="text/css" href="../style/bootstrap.min.css" />
    <link rel="stylesheet" type="text/css" href="../style/bootstrap-theme.min.css" />

    <!-- require script for all pages -->
    <script src="../script/jquery-1.11.3.min.js"></script>
    <script src="../script/bootstrap.min.js"></script>
</head>
<!-- end head section -->

<!-- Begin body section -->

<body>

    <!-- Start container -->
    <div class="container">

        <div class="alert alert-dismissable">
            <button type="button" id="btnRegister" class="btn btn-primary btn-lg" data-toggle="modal" data-target="#register"><span class="glyphicon glyphicon-registration-mark"></span> Register </button>

            <!-- Trigger the modal with a button -->
            <button type="button" id="btnLogin" class="btn btn-info btn-lg" data-toggle="modal" data-target="#login"><span class="glyphicon glyphicon-log-in"></span> Login </button>
        </div>

        <!-- Modal for login -->
        <div class="modal fade" id="login" role="dialog">
            <div class="modal-dialog">

                <!-- Modal content-->
                <div class="modal-content">

                    <!-- Start modal header -->
                    <div class="modal-header">
                        <h3 class="modal-title text-center text-info">Login to your account</h3>
                    </div>
                    <!-- End modal header -->

                    <!-- Start modal body -->
                    <div class="modal-body">
                        <form action="#" method="post" class="form-horizontal" role="form">

                            <div class="form-group">
                                <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                                    <div class="input-group">
                                        <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
                                        <input id="user" type="text" class="form-control" name="user" value="" placeholder="User">
                                    </div>
                                </div>
                            </div>

                            <div class="form-group">
                                <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                                    <div class="input-group">
                                        <span class="input-group-addon"><i class="glyphicon glyphicon-lock"></i></span>
                                        <input id="password" type="password" class="form-control" name="password" placeholder="Password">
                                    </div>
                                </div>
                            </div>

                            <div class="form-group">
                                <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                                    <div class="form-group">
                                        <!-- Button -->
                                        <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 controls">
                                            <button type="button" href="#" class="btn btn-primary center-block"><i class="glyphicon glyphicon-log-in"></i> Log in </button>
                                        </div>
                                    </div>
                                </div>
                            </div>

                        </form>
                    </div>
                    <!-- End modal body-->

                    <!-- Start modal footer -->
                    <div class="modal-footer">
                        <button type="button" class="btn btn-danger btn-sm" data-dismiss="modal"><i class="glyphicon"></i> Close </button>
                    </div>
                    <!-- End modal footer -->

                </div>
                <!-- End modal content -->

            </div>
        </div>
        <!-- End modal login -->

        <!-- Modal for register -->
        <div class="modal fade" id="register" role="dialog">
            <div class="modal-dialog modal-lg">

                <!-- Modal content-->
                <div class="modal-content">

                    <!-- Start modal header -->
                    <div class="modal-header">
                        <h3 class="modal-title text-center text-info">Register new account</h3>
                    </div>
                    <!-- End modal header -->

                    <!-- Start modal body -->
                    <div class="modal-body">
                        <form action="#" method="post" class="form-horizontal" role="form">
                            <div class="form-group">
                                <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                                    <div class="input-group">
                                        <span class="input-group-addon">Username</span>
                                        <input id="username" type="text" class="form-control" name="username" value="" placeholder="Username">
                                    </div>
                                </div>
                            </div>
                            <div class="form-group">
                                <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                                    <div class="input-group">
                                        <span class="input-group-addon">Full Name</span>
                                        <input id="fullname" type="text" class="form-control" name="fullname" placeholder="Fullname">
                                    </div>
                                </div>
                            </div>
                            <div class="form-group">
                                <div class="col-lg-10 col-md-10 col-sm-10 col-xs-12 col-sm-offset-1">
                                    <div class="input-group">
                                        <label class="radio-inline">
                                            <input type="radio" name="gender" value="male">Male</label>
                                        <label class="radio-inline">
                                            <input type="radio" name="gender" value="female">Female</label>
                                    </div>
                                </div>
                            </div>
                            <div class="form-group">
                                <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                                    <div class="input-group">
                                        <span class="input-group-addon">Date of Birth</span>
                                        <input id="dob" type="date" class="form-control" name="dob" placeholder="Date of Birth">
                                    </div>
                                </div>
                            </div>
                            <div class="form-group">
                                <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                                    <div class="input-group">
                                        <span class="input-group-addon">Current address</span>
                                        <input id="address" type="text" class="form-control" name="address" placeholder="Current Address">
                                    </div>
                                </div>
                            </div>
                            <div class="form-group">
                                <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                                    <div class="form-group">
                                        <!-- Button -->
                                        <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 controls">
                                            <button type="button" href="#" class="btn btn-primary center-block"><i class="glyphicon glyphicon-registration-mark"></i> Register </button>
                                        </div>
                                    </div>
                                </div>
                            </div>

                        </form>
                    </div>
                    <!-- End modal body-->

                    <!-- Start modal footer -->
                    <div class="modal-footer">
                        <button type="button" class="btn btn-danger btn-sm" data-dismiss="modal"><i class="glyphicon"></i> Close </button>
                    </div>
                    <!-- End modal footer -->

                </div>
                <!-- End modal content -->

            </div>
        </div>
        <!-- End modal register -->

    </div>
    <!-- End container-->

</body>
<!-- End body section -->

</html>