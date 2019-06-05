<?php
	include 'includes/session.php';

	if(isset($_POST['send'])){
			$email = $_POST['email'];
		
			$conn = $pdo->open();

			$stmt = $conn->prepare("INSERT INTO abonne (email) VALUES (:email)");
			$stmt->execute(['email'=>$email]);	

			$_SESSION['success'] = 'vous êtes abonné.';
		        header('location: index.php');			

			$pdo->close();

			}

	

?>