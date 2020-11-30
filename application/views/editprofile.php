<html>
    <head>
	   <title>Hotel management system</title>
	   <meta charset="utf-8">
	   <meta name="viewport" content="width=device-width, initial-scale=1">
	   <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
	   <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
	    <link href="<?php echo base_url(); ?>assets/bookingdetail.css" rel="stylesheet" />
			   <link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
		<link rel="stylesheet" href="/resources/demos/style.css">
    </head>
	<body>
	    <div class="logo">
			<img src="<?php echo base_url(); ?>assets/image/logo.png" class="logo" alt="logo.png"/>
		</div>
		<?php $this->load->view('layout/header'); ?> 
		<?php
			  if($this->session->flashdata('response'))
			  {
			?>
			<div class="alert alert-success" role="alert">
			  <?php echo $this->session->flashdata('response'); ?>
			</div>
			<?php
			}
			?>
        <div class="container rounded bg-white mt-5">
			<div class="row">
				<?php
					  foreach($user as $value)
					  {
						  ?>
				<div class="col-md-4 border-right">
					<div class="d-flex flex-column align-items-center text-center p-3 py-5"><img class="rounded-circle mt-5" src="<?php echo base_url(); ?>\assets\profileimg\<?php echo $value->Profileimg ?>" width="90"><span class="font-weight-bold"><?php echo $value->Firstname?></span><span class="text-black-50"><?php echo $value->Lastname?></span><span><?php echo $value->Designation ?></span></div>
				</div>
				<div class="col-md-8">
					<div class="p-3 py-5">
						<div class="d-flex justify-content-between align-items-center mb-3">
							
							<h6 class="text-right">Edit Profile</h6>
						</div>
							<form  method="post" id="updateprofile" action="updateprofile" enctype="multipart/form-data">
						<div class="row mt-2">
						    <input type="text" name="id" value="<?php echo $value->id?>" hidden>
							<div class="col-md-6"><input type="text" class="form-control" name="firstname" placeholder="first name" value="<?php echo $value->Firstname?>"></div>
							<div class="col-md-6"><input type="text" class="form-control" name="lastname" value="<?php echo $value->Lastname ?>" placeholder="last name"></div>
						</div>
						<div class="row mt-3">
							<div class="col-md-6"><input type="text" class="form-control" name="email" name placeholder="email" value="<?php echo $value->Email ?>"></div>
							<div class="col-md-6"><input type="text" class="form-control" name="mobile" value="<?php echo $value->Mobile ?>" placeholder="Phone number"></div>
						</div>
						<div class="row mt-3">
							<div class="col-md-6"><input type="text" name="designation" class="form-control"   value="<?php echo $value->Designation ?>" placeholder="Designation"/></div>
							<div class="col-md-6"><input type="text" name="dob"  id="datepicker" class="form-control"  value="<?php echo $value->DOB ?>" id="datepicker" placeholder="Date of Birth"/></div>
						</div>
						
						
						<div class="mt-5 text-right"><input type="submit"  class="btn btn-primary" name="Save" value="Save"/></div>
					    </form>
					</div>
				</div>
				 <?php
					  }
					  ?>
			</div>
		</div>
	   
	</body>
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
	
	<script src="<?php echo base_url(); ?>assets/validation/dist/jquery.validate.js"></script>
	
		<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
		<script src="https://cdn.jsdelivr.net/jquery.validation/1.16.0/jquery.validate.min.js"></script>
		<script src="https://cdn.jsdelivr.net/jquery.validation/1.16.0/additional-methods.min.js"></script>
	<script>
  $( function() {
   $( "#datepicker" ).datepicker({  maxDate: new Date() });
  } );
  </script>
	<script>
	     $(document).ready(function(){
	
		jQuery.validator.addMethod("lettersonly", function(value, element) {
		  return this.optional(element) || /^[a-z]+$/i.test(value);
		}, "Letters only please"); 
		jQuery.validator.addMethod("alphanumeric", function(value, element) {
			return this.optional(element) || /^\w+$/i.test(value);
		}, "Letters, numbers, and underscores only please");

		$("#updateprofile").validate({
			rules: {
				firstname: {
					required: true,
					lettersonly: true,
					alphanumeric: true
					

				},
				lastname: {
				    required: true,
					lettersonly: true,
					alphanumeric: true

				},
				designation: {
					required: true,
					lettersonly: true,
					alphanumeric: true
					

				},
				email: {
					required: true,
					email: true
				},
				mobile:{
					required: true,
					digits: true,
					minlength: 10
				},
				
				
			},
			
		});
		
		 });
	</script>
</html>