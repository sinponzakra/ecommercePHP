<?php
	include 'includes/session.php';

	if(isset($_POST['edit'])){
		$id = $_POST['id'];
		$firstname = $_POST['firstname'];
		$lastname = $_POST['lastname'];
		$email = $_POST['email'];
		$password = $_POST['password'];
		$address = $_POST['address'];
		$contact = $_POST['contact'];

		$conn = $pdo->open();
		$stmt = $conn->prepare("SELECT * FROM users WHERE id=:id");
		$stmt->execute(['id'=>$id]);
		$row = $stmt->fetch();

		if($password == $row['password']){
			$password = $row['password'];
		}
		else{
			$password = password_hash($password, PASSWORD_DEFAULT);
		}

		try{
			$stmt = $conn->prepare("UPDATE users SET email=:email, password=:password, firstname=:firstname, lastname=:lastname, address=:address, contact_info=:contact WHERE id=:id");
			$stmt->execute(['email'=>$email, 'password'=>$password, 'firstname'=>$firstname, 'lastname'=>$lastname, 'address'=>$address, 'contact'=>$contact, 'id'=>$id]);
			$_SESSION['success'] = 'Utilisateur mis à jour avec succès';

		}
		catch(PDOException $e){
			$_SESSION['error'] = $e->getMessage();
		}
		

		$pdo->close();
	}
	else{
		$_SESSION['error'] = "Remplir d'abord le formulaire d'utilisateur";
	}

	header('location: users.php');

?>