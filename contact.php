<?php include 'includes/session.php'; ?>
<?php include 'includes/header.php'; ?>
<body class="hold-transition skin-blue layout-top-nav">
<div class="wrapper">

	<?php include 'includes/navbar.php'; ?>
	 
	  <div class="content-wrapper">
	    <div class="container">

	      <!-- Main content -->
	      <section class="content">
	        <div class="row">
	        	<div class="col-sm-9">
	        		<?php	if(isset($_SESSION['success'])){
				        echo "
				          <div class='callout callout-success text-center'>
				            <p>".$_SESSION['success']."</p> 
				          </div>
				        ";
				        unset($_SESSION['success']);
				      }
				    ?>
	        		<form method="POST" action="contactUs.php">
					  <div class="form-group">
					    <label for="exampleInputEmail1">Adresse email *</label>
					    <input type="email" class="form-control" id="exampleInputEmail1" name="email" required aria-describedby="emailHelp" placeholder= "email">
					    <small id="emailHelp" class="form-text text-muted">inserer votre email pour qu'on puisse vous contacter.</small>
					  </div>
					  <div class="form-group">
					    <label for="exampleInputNom1">Nom et prenom *</label>
					    <input type="text" required class="form-control" name="nom" id="exampleInputNom1"  placeholder= "nom et prenom"/>
					  </div>

					  <div class="form-group">
					    <label for="exampleFormControlTextarea1">Message *</label>
					    <textarea class="form-control" placeholder="message..." required name="message" id="exampleFormControlTextarea1" rows="3"></textarea>
					  </div>
					  <button type="submit" name="contact" class="btn btn-primary">Submit</button>
					</form>
	        	</div>
	        	<div class="col-sm-3">
	        		<?php include 'includes/sidebar.php'; ?>
	        	</div>
	        </div>
	      </section>
	     
	    </div>
	  </div>
  
  	<?php include 'includes/footer.php'; ?>
</div>

<?php include 'includes/scripts.php'; ?>
</body>
</html>	