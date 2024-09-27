<?php
		$first_name = $_POST['first_name'];
		$last_name = $_POST['last_name'];
		$email = $_POST['email'];
		$phone_number = $_POST['phone_number'];
		$subject = $_POST['subject'];
		$message = $_POST['message'];

		$conn = mysqli_connect("localhost", "root", "", "restaurant_db");
		mysqli_query($conn, "INSERT INTO `contact` (`first_name`, `last_name`, `email`, `phone_number`, `subject`, `message`) VALUES ('".$first_name."', '".$last_name."', '".$email."', '".$phone_number."', '".$subject."', '".$message."');");
		
		header("Location: ../contact-us.php");
?>