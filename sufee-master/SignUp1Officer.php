<!doctype html>
<!--[if lt IE 7]>      <html class="no-js lt-ie9 lt-ie8 lt-ie7" lang=""> <![endif]-->
<!--[if IE 7]>         <html class="no-js lt-ie9 lt-ie8" lang=""> <![endif]-->
<!--[if IE 8]>         <html class="no-js lt-ie9" lang=""> <![endif]-->
<!--[if gt IE 8]><!-->
<html class="no-js" lang="en">
<!--<![endif]-->

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>Sufee Admin - HTML5 Admin Template</title>
    <meta name="description" content="Sufee Admin - HTML5 Admin Template">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <link rel="apple-touch-icon" href="apple-icon.png">
    <link rel="shortcut icon" href="favicon.ico">


    <link rel="stylesheet" href="vendors/bootstrap/dist/css/bootstrap.min.css">
    <link rel="stylesheet" href="vendors/font-awesome/css/font-awesome.min.css">
    <link rel="stylesheet" href="vendors/themify-icons/css/themify-icons.css">
    <link rel="stylesheet" href="vendors/flag-icon-css/css/flag-icon.min.css">
    <link rel="stylesheet" href="vendors/selectFX/css/cs-skin-elastic.css">

    <link rel="stylesheet" href="assets/css/style.css">

    <link href='https://fonts.googleapis.com/css?family=Open+Sans:400,600,700,800' rel='stylesheet' type='text/css'>



</head>

<body class="bg-dark">


    <div class="sufee-login d-flex align-content-center flex-wrap">
        <div class="container">
            <div class="login-content">
                <div class="login-logo">
                    <a href="index.html">
                       <center><h4>SIGN UP HERE</h4></center> 
                    </a>
                </div>
                <div class="login-form">
                    <form class="form" action="SignUp2Applicant.php" method="post" enctype="multipart/form-data" autocomplete="off">
                        <div class="form-group">
                            <label>Name</label>
                             <input type="text" class="form-control" placeholder="Enter Name" name="Name" required>
                        </div>
						<div class="form-group">
                            <label>IC Number</label>
                             <input type="text" class="form-control" placeholder="Enter IC No" name="user_Ic" required>
                        </div>
                            <div class="form-group">
                                <label>Email address</label>
                                <input type="text" class="form-control" placeholder="Enter Email Address" name="emailAdd" required>
                        </div>
                                <div class="form-group">
                                    <label>Password</label>
                                    <input type="password" class="form-control" placeholder="Enter Password" name="password" required>
                        </div>
						<div class="form-group">
                                    <label>Confirm Password</label>
                                    <input type="password" class="form-control" placeholder="Enter Confirm Password" name="confirmpassword" required>
                        </div>
						<div class="form-group">
                                    <label>User Type</label>
                                    <select name="usertype" class="form-control" id="usertype">
		              <option value="">Choose User Type</option>
		              <option value="officer">Officer</option>
		             
		        </select>
                        </div>
                                    <div class="checkbox">
                                        <label>
                                <input type="checkbox"> Agree the terms and policy
                            </label>
                                    </div>
									<div class="modal-footer">
									<input style="border-radius: 8px;" type="submit" name="register" value="Create Account" class="btn btn-primary" /><a style="border-radius: 8px;" class="btn btn-primary" href="manager.php">Back</a>
									</div>
									
                                    
                                    <div class="register-link m-t-15 text-center">
                                        <p>Already have account ? <a href="login.php"> Sign in</a></p>
                                    </div>
                    </form>
                </div>
            </div>
        </div>
    </div>


    <script src="vendors/jquery/dist/jquery.min.js"></script>
    <script src="vendors/popper.js/dist/umd/popper.min.js"></script>
    <script src="vendors/bootstrap/dist/js/bootstrap.min.js"></script>
    <script src="assets/js/main.js"></script>


</body>

</html>
<?php
     $link = mysqli_connect("localhost", "root", "");
     if($_SERVER["REQUEST_METHOD"]=="POST")
	 {
     
     $name = mysqli_real_escape_string($link,$_POST['Name']);
	 $user_Ic = mysqli_real_escape_string($link,$_POST['user_Ic']);
     $emailAdd = mysqli_real_escape_string($link,$_POST['emailAdd']);
     $password = mysqli_real_escape_string ($link,$_POST['password']);
     $confirmpassword = mysqli_real_escape_string ($link,$_POST['confirmpassword']);
	 $selected_val = mysqli_real_escape_string ($link,$_POST['usertype']);
     $bool = true;

     mysqli_connect("localhost","root","")or die(mysqli_connect_error());
     mysqli_select_db($link,"final_year_project") or die("Cannot connect to database");
     $query = mysqli_query($link,"Select * from userlist");
	 
     while($row = mysqli_fetch_array($query))
    {
         $table_userlist = $row['name'];
         if ($name == $table_userlist)
        {
	       $bool = false;
	       Print '<script>alert("(username has been taken!");</script>';
	       Print '<script>window.location.assign("SignUp1Officer.php");</script>';
        }
	}
	
    if($bool)
    {
	    if($password == $confirmpassword)
	    {
		$encrypted_password=md5($password);
		mysqli_query($link,"INSERT INTO userlist (name, user_Ic, emailAdd, password, confirmpassword, selected_val) VALUES ('$name','$user_Ic','$emailAdd','$password','$confirmpassword','$selected_val')");
		Print '<script>alert("Successfuly Registered!");</script>';
		Print '<script>window.location.assign("login.php");</script>';
	    }
	else
	{
		Print '<script>alert("Password and Confirm Password are different!");</script>';
		Print '<script>window.location.assign("SignUp1Officer.php");</script>';
	}
}}?>