<?php
	include 'includes/session.php';

	if(isset($_POST['signup'])){
		$firstname = $_POST['firstname'];
		$lastname = $_POST['lastname'];
		$email = $_POST['email'];
		$password = $_POST['password'];
		$repassword = $_POST['repassword'];

		$_SESSION['firstname'] = $firstname;
		$_SESSION['lastname'] = $lastname;
		$_SESSION['email'] = $email;


		if($password != $repassword){
			$_SESSION['error'] = 'Les mots de passe ne correspondent pas';
			header('location: signup.php');
		}
		else{
			$conn = $pdo->open();

			$stmt = $conn->prepare("SELECT COUNT(*) AS numrows FROM users WHERE email=:email");
			$stmt->execute(['email'=>$email]);
			$row = $stmt->fetch();
			if($row['numrows'] > 0){
				$_SESSION['error'] = 'Adresse e-mail déjà prise';
				header('location: signup.php');
			}
			else{
				$now = date('Y-m-d');
				$password = password_hash($password, PASSWORD_DEFAULT);

				//generate code
				$set='123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ';
				$code=substr(str_shuffle($set), 0, 12);
					$stmt = $conn->prepare("INSERT INTO users (email, type, password, firstname, lastname, activate_code, created_on, status) VALUES (:email, :type,:password, :firstname, :lastname, :code, :now, :status)");
					$stmt->execute(['email'=>$email, 'type'=> 0, 'password'=>$password, 'firstname'=>$firstname, 'lastname'=>$lastname, 'code'=>$code, 'now'=>$now, 'status'=>1]);	

					$_SESSION['success'] = 'le compte a été créé avec succès.';
				        header('location: signup.php');			

				$pdo->close();

			}

		}

	}
	

?>