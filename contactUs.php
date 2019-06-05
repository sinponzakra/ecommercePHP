<?php
	include 'includes/session.php';

	if(isset($_POST['contact'])){
			$email = $_POST['email'];
			$nom = $_POST['nom'];
			$message = $_POST['message'];
		
			$conn = $pdo->open();

			$stmt = $conn->prepare("INSERT INTO contact (email, nom, message) VALUES (:email, :nom, :message)");
			$stmt->execute(['email'=>$email, 'nom'=>$nom, 'message'=>$message]);	

			$_SESSION['success'] = 'le formulaire a été bien envoyé';
		        header('location: contact.php');			

			$pdo->close();

			}

	

?>