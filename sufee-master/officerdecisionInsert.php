		<?php
		
$id1 =$_REQUEST['user_Ic'];	
				
			$Applicant_Id = null;
if ( !empty($_GET['Applicant_Id'])) {
	$Applicant_Id = $_REQUEST['Applicant_Id'];
}
?>
<?php


					//including the database connection file
					include_once("config.php");
					$db = db_connect();
					session_start();

					$qlist = "SELECT * FROM applicant";
					$reslist = $db->query($qlist);

					 while($rowlist = $reslist->fetch_assoc()) {        
							   $user_Ic=$rowlist["user_Ic"];
							   $Applicant_Name=$rowlist["Applicant_Name"];
							}
						if(isset($_POST['Insert'])) { 	
					/* Get input from form using post method*/
					$Status_1 = $_POST['Status_1'];
					$Status_2 = $_POST['Status_2'];
					$Officer_Name = $_POST['Officer_Name'];
					$date_Officer = $_POST['date_Officer'];

						// Connect to server and select database.
						$link = mysqli_connect("localhost", "root", "")or die("cannot connect server "); 
						mysqli_select_db($link, "final_year_project")or die("cannot select DB");
						$sql = "INSERT INTO decision(Applicant_Name,user_Ic,Status_1,Status_2,Officer_Name,date_Officer)VALUES('$Applicant_Name','$user_Ic','$Status_1','$Status_2','$Officer_Name','$date_Officer')";
					  
					// if successfully insert data into database, displays message "Successful". 
					$result = mysqli_query($link, $sql)or die("Failed to query database".mysqli_error($link));
					$message = "Insert Successfully";
							echo "<script type='text/javascript'>alert('$message');</script>";
						echo "<script> location.href='officerdecision.php'</script>";
						
							exit;
						}

					 ?>