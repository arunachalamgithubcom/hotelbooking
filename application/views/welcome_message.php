<html>
    <head>
	   <title>Hotel management system</title>
	   <meta charset="utf-8">
	   <meta name="viewport" content="width=device-width, initial-scale=1">
	   <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css"> 
	   <link href="<?php echo base_url(); ?>assets/response.css" rel="stylesheet" />
	   <link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
		<link rel="stylesheet" href="/resources/demos/style.css">
	
	
    </head>
	<body>
	
	    <div class="container" style="margin:auto">
		    <div class="logo">
			    <img src="<?php echo base_url(); ?>assets/image/logo.png" alt="logo.png"/>
			</div>
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
		    <div class="card">
			    <div class="card-body">
					<div class="row">
						<div class="col-md-8">
							<h1>Register</h1>
							<form  method="post" id="register" action="welcome\register" enctype="multipart/form-data">
								<div class="row">
									<div class="col-md-4">
										<label>Firstname</label>
										<input type="text" name="firstname" class="form-control" placeholder="Firstname"/>
									</div>
									 <div class="col-md-4">
										<label>Lastname</label>
										<input type="text" name="lastname" class="form-control" placeholder="Lastname"/>
									</div>
								</div>
								<div class="row">
									<div class="col-md-4">
										<label>Designation</label>
										<input type="text" name="designation" class="form-control" placeholder="Designation"/>
									</div>
									 <div class="col-md-4">
										<label>Date of Birth</label>
										<input type="text" name="dob" class="form-control" id="datepicker" placeholder="Date of Birth"/>
									</div>
								</div>
								<div class="row">
									<div class="col-md-4">
										<label>EmailID</label>
										<input type="text" name="email" class="form-control" placeholder="EmailID"/>
									</div>
									 <div class="col-md-4">
										 <label>Mobile</label>
										 <input type="text" name="mobile" class="form-control" placeholder="Mobile"/>
									</div>
								</div>
								<div class="row">
									<div class="col-md-4">
										<label>Password</label>
										<input type="password" name="password" id="password" class="form-control" placeholder="Password"/>
									</div>
									 <div class="col-md-4">
										 <label>Confirm Password</label>
										 <input type="password" name="confirmpassword" id="confirmpassword" class="form-control" placeholder="Confirm Password"/>
									</div>
								</div>
								<div class="row">
									<div class="col-md-8">
										<label>Profile Image</label>
										 <input type="file" name="profileimg" class="form-control" />
										 <span style="color:green"></span>
									</div>
								</div>
								<div class="row">
									<div class="col-md-8">
										<input type="submit"  class="btn btn-primary" name="Register" value="Register"/>
									</div>
								</div>
							</form>
						</div>
						<div class="col-md-4">
							<h1>Login</h1>
							<form method="post" id="login" action="welcome\login">
								<div>
									<label>EmailID</label>
									<input type="text" name="email" class="form-control" placeholder="EmailID"/>
								</div>
								 <div>
									<label>Password</label>
									<input type="password" name="password" class="form-control" placeholder="Password"/>
								</div>
								<div>
									<input type="submit"   class="btn btn-primary" name="Login" value="Login"/>
								</div>
							</form>
						</div> 
					</div>
				</div>
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
		jQuery.validator.addMethod('filesize', function (value, element, arg) {
        if(element.files[0].size<=arg){
            return true;
        }else{
            return false;
        }
        },"file size must be less than 200 KB.");
			 // validate signup form on keyup and submit
		$("#register").validate({
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
				password: {
					required: true,
					minlength: 5
				},
				confirmpassword: {
					required: true,
					minlength: 5,
					equalTo: "#password"
				},
				profileimg:
				{
					required: true,
					extension: "jpg|jpeg|gif|png",
					filesize: 200000
				}
			},
			
		});
		$("#login").validate({
			rules: {
				email: {
					required: true,
					email: true
				},
				password: {
					required: true,
					minlength: 5
				},
			},
		});
		 });
	</script>
</html>

