<?php
	if (isset($_POST["forgotPass"])) {
		$connection = new mysqli("localhost", "root", "", "final_year_project");
		
		$emailAdd = $_POST['emailAdd'];
		
		$sql = "SELECT * FROM userlist WHERE emailAdd = '$emailAdd'";
	    $res = mysqli_query($connection, $sql);
	    $count = mysqli_num_rows($res);
		
	if($count > 0){
			$str = "0123456789qwertzuioplkjhgfdsayxcvbnm";
			$str = str_shuffle($str);
			$str = substr($str, 0, 10);
			$url = "http://domain.com/members/resetPassword.php?token=$str&emailAdd=$emailAdd";

			//mail($email, "Reset password", "To reset your password, please visit this: $url", "From: myanotheremail@domain.com\r\n");

			$connection->query("UPDATE userlist SET token='$str', expire = DATE_ADD(NOW(), INTERVAL 5 MINUTE) WHERE emailAdd='$emailAdd'");

			echo "<script>alert('Please check your email!')</script>";
			
		} else {
			echo "<script>alert('Please check your inputs!')</script>";
		}
	}

?>

	
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
                        <center><h4>FORGET PASSWORD</h4></center> 
                    </a>
                </div>
                <div class="login-form">
                     <form class="form" action="forgetPass.php" method="post" enctype="multipart/form-data" autocomplete="off">
                        <div class="form-group">
                            <label>Email address</label>
                                <input type="text" class="form-control" placeholder="Enter Email Address" name="emailAdd" required>
                        </div>
                            <input type="submit" name="forgotPass" class="btn btn-primary btn-flat m-b-15" value="Request Password">
							

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