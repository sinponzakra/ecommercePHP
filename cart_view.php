<?php include 'includes/session.php'; ?>
<?php include 'includes/header.php'; ?>
<body class="hold-transition skin-blue layout-top-nav">
<style type="text/css">
	#paypal_btn{
display: inline-block;
font-family: inherit;
font-size: 14px;
font-weight: bold;
color: #fff;
text-align: center;
padding: 10px 14px;
margin: 0;
background: #ff6600;
float: right;
border: 0;
cursor: pointer;
outline: none;
}
#paypal_btn:hover{ background: #e05c04; }


.paypalbutton {
    display: inline-block;
    background-color: #2980B9;
    color: #fff;
    border-radius: 2%;
    box-shadow: none;
    cursor: pointer;
    font-family: inherit;
    margin-top: 10px;
    float: right;
    font-size: 16px;
    font-weight: bold;
    padding: 16px 24px;
    width: auto;
}

.paypalbutton:hover {
    background-color: #3498DB;
}

</style>
<div class="wrapper">

	<?php include 'includes/navbar.php'; ?>
	 
	  <div class="content-wrapper">
	    <div class="container">

	    	<!-- Modal -->
			<div class="modal fade" id="exampleModalCenter" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
			  <div class="modal-dialog modal-dialog-centered" role="document">
			    <div class="modal-content">
			      <div class="modal-header">
			        <img src="https://www.paypalobjects.com/webstatic/i/logo/rebrand/ppcom.svg"
						 width="126px" height="33px">
			        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
			          <span aria-hidden="true">&times;</span>
			        </button>
			      </div>
			      <div class="modal-body">
			        <form action="sales.php" method="GET">
			        	<label>Carte ID</label>
					  <input type="text" class="form-control" name="pay"></input>
					  <input type="submit" name="getPay" class="paypalbutton" />
					</form>
			      </div>
			      <div class="modal-footer">
			      </div>
			    </div>
			  </div>
			</div>

	      <!-- Main content -->
	      <section class="content">
	        <div class="row">
	        	<div class="col-sm-9">
	        		<h1 class="page-header">Ton Panier</h1>
	        		<div class="box box-solid">
	        			<div class="box-body">
		        		<table class="table table-bordered">
		        			<thead>
		        				<th></th>
		        				<th>Photo</th>
		        				<th>Nom</th>
		        				<th>Prix</th>
		        				<th width="20%">Quantité</th>
		        				<th>Sous-Total</th>
		        			</thead>
		        			<tbody id="tbody">
		        			</tbody>
		        		</table>
	        			</div>
	        		</div>
	        		<?php
	        			if(isset($_SESSION['user'])){
	        				echo "
	        					<button id='paypal_btn' type='button' data-toggle='modal' data-target='#exampleModalCenter'>Paypal</button>
	        				";
	        			}
	        			else{
	        				echo "
	        					<h4>vous devez vous <a href='login.php'>connecter</a> pour passer à la caisse.</h4>
	        				";
	        			}
	        		?>
	        	</div>	
	        	<div class="col-sm-3">
	        		<?php include 'includes/sidebar.php'; ?>
	        	</div>
	        </div>
	      </section>
	     
	    </div>
	  </div>
  	<?php $pdo->close(); ?>
  	<?php include 'includes/footer.php'; ?>
</div>

<?php include 'includes/scripts.php'; ?>
<script>
var total = 0;
$(function(){
	$(document).on('click', '.cart_delete', function(e){
		e.preventDefault();
		var id = $(this).data('id');
		$.ajax({
			type: 'POST',
			url: 'cart_delete.php',
			data: {id:id},
			dataType: 'json',
			success: function(response){
				if(!response.error){
					getDetails();
					getCart();
					getTotal();
				}
			}
		});
	});

	$(document).on('click', '.minus', function(e){
		e.preventDefault();
		var id = $(this).data('id');
		var qty = $('#qty_'+id).val();
		if(qty>1){
			qty--;
		}
		$('#qty_'+id).val(qty);
		$.ajax({
			type: 'POST',
			url: 'cart_update.php',
			data: {
				id: id,
				qty: qty,
			},
			dataType: 'json',
			success: function(response){
				if(!response.error){
					getDetails();
					getCart();
					getTotal();
				}
			}
		});
	});

	$(document).on('click', '.add', function(e){
		e.preventDefault();
		var id = $(this).data('id');
		var qty = $('#qty_'+id).val();
		qty++;
		$('#qty_'+id).val(qty);
		$.ajax({
			type: 'POST',
			url: 'cart_update.php',
			data: {
				id: id,
				qty: qty,
			},
			dataType: 'json',
			success: function(response){
				if(!response.error){
					getDetails();
					getCart();
					getTotal();
				}
			}
		});
	});

	getDetails();
	getTotal();

});

function getDetails(){
	$.ajax({
		type: 'POST',
		url: 'cart_details.php',
		dataType: 'json',
		success: function(response){
			$('#tbody').html(response);
			getCart();
		}
	});
}

function getTotal(){
	$.ajax({
		type: 'POST',
		url: 'cart_total.php',
		dataType: 'json',
		success:function(response){
			total = response;
		}
	});
}

</script>
</body>
</html>