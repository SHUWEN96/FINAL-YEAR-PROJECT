<?php
//including the database connection file
include_once("config.php");
$db = db_connect();
session_start();

$qlist = "SELECT * FROM education WHERE Education_detail_Id='".$_SESSION['SESS_EDU_ID'] ."'";
$reslist = $db->query($qlist);

 while($rowlist = $reslist->fetch_assoc()) {        
           $Edu_Type=$rowlist["Edu_Type"];
		   $user_Ic=$rowlist["user_Ic"];
		   $Education_detail_Id=$rowlist["Education_detail_Id"];
		   
        }

if(isset($_POST['Submit'])) {  

   
    $subject = $_POST['subject'];
    $gred = $_POST['gred'];
	
	/*Prevent sql injection*/
	$subject = stripcslashes($subject);
	$gred = stripcslashes($gred);

	 // Connect to server and select database.
    $link = mysqli_connect("localhost", "root", "")or die("cannot connect server "); 
    mysqli_select_db($link, "final_year_project")or die("cannot select DB");

    $sql = "INSERT INTO subject(Education_detail_Id,user_Ic,Edu_Type,subject,gred) VALUES ('$Education_detail_Id','$user_Ic','$Edu_Type','$subject','$gred')";
  $result = mysqli_query($link, $sql)or die("Failed to query database".mysqli_error($link));
$message = "Insert Successfully.";
		echo "<script type='text/javascript'>alert('$message');</script>";
	echo "<script> location.href='subject.php'; </script>";
		exit;
}	
