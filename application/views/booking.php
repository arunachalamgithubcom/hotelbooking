<html>
    <head>
	   <title>Hotel management system</title>
	   <meta charset="utf-8">
	   <meta name="viewport" content="width=device-width, initial-scale=1">
	   <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
	   <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
	    <link href="<?php echo base_url(); ?>assets/booking.css" rel="stylesheet" />
    </head>
	<body>
	    <div class="logo">
			<img src="<?php echo base_url(); ?>assets/image/logo.png" class="logo" alt="logo.png"/>
		</div>
		<?php $this->load->view('layout/header'); ?> 
	    <div class="container">
			 <div class="row">
			 	<?php
					  foreach($hotels as $value)
					  {
						  ?>
				 <div class="col-md-4">
					 <div class="card">
						 <div> <img src="https://res.cloudinary.com/dxfq3iotg/image/upload/v1562332741/Untitled_design_11.png" class="img-responsive image"> </div>
						 <p class="rating"><?php echo $value->stars ?></p>
						 <div class="card-body">
							 <h5 class="card-title"><?php echo $value->hotel_name ?></h5>
							 <p class="card-text"><i class="fa fa-map-marker marker"></i><?php echo $value->address ?></p>
							 <p class="card-text">
							    <?php
								 for($i=0;$i<round($value->stars);$i++)
								 {
								?>
							     <i class="fa fa-star star-rating"></i>
								 <?php
					             }
								?>
							</p>
							 <p class="card-text"><?php echo $value->hotel_currency_code ?>  <?php echo $value->price ?></p>
							  <a href="<?php echo base_url(); ?>booking/gethotel?I=<?php echo base64_encode($value->hotel_id); ?>" >Book Now</a>
						 </div>
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
</html>