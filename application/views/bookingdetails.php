<html>
    <head>
	   <title>Hotel management system</title>
	   <meta charset="utf-8">
	   <meta name="viewport" content="width=device-width, initial-scale=1">
	   <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
	   <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
	    <link href="<?php echo base_url(); ?>assets/bookingdetail.css" rel="stylesheet" />
		<style>
		  .ratings
		  {
			  display:none;
		  }
		  .prices
		  {
			  display:none;
		  }
		</style>
    </head>
	<body>
	    <div class="logo">
			    <img src="<?php echo base_url(); ?>assets/image/logo.png" class="logo" alt="logo.png"/>
		</div>
			<?php $this->load->view('layout/header'); ?> 
			<div class="container-fluid px-4 py-5 mx-auto">
				<div class="row d-flex justify-content-center">
					<div class="card border-0">
						<div class="row set-p justify-content-center">
							<div class="col-sm-4 px-0"> <img class="image" src="https://i.imgur.com/QNqiaSz.jpg"> </div>
							<div class="col-sm-8">
								<?php
					  foreach($hotels as $value)
					  {
						  ?>
								<div class="row px-3 mt-4 mb-3">
									<p class="rating mb-0 px-2 mr-3"><strong><?php echo $value->stars ?></strong></p>
									
								</div>
								<div class="row px-3">
									<h3 class="font-weight-bold"><?php echo $value->hotel_name ?><br><?php echo $value->address ?></h3>
								</div>
								<div class="row px-3 mb-2 mt-2"> 
								    <?php
								 for($i=0;$i<round($value->stars);$i++)
								 {
								?>
								    <span class="fa fa-star text-warning mr-1"></span>
                               <?php
					             }
								?>									
								</div>
								<div class="row px-3">
									<h5 class="mb-1" style="
    font-size: 8pt;
">
									<?php echo $value->hotel_amenities1." - ".$value->hotel_amenities2." - ".$value->hotel_amenities3." - ".$value->hotel_amenities4." - ".$value->hotel_amenities5." - ".$value->hotel_amenities6." - ".$value->hotel_amenities7." - ".$value->hotel_amenities8." - ".$value->hotel_amenities9." - ".$value->hotel_amenities10." - ".$value->hotel_amenities11." - ".$value->hotel_amenities12." - ".$value->hotel_amenities13." - ".$value->hotel_amenities14." - ".$value->hotel_amenities15." - ".$value->hotel_amenities16." - ".$value->hotel_amenities17." - ".$value->hotel_amenities18." - ".$value->hotel_amenities19." - ".$value->hotel_amenities20." - ".$value->hotel_amenities21." - ".$value->hotel_amenities22." - ".$value->hotel_amenities23." - ".$value->hotel_amenities24." - ".$value->hotel_amenities25." - ".$value->hotel_amenities26." - ".$value->hotel_amenities27." - ".$value->hotel_amenities28." - ".$value->hotel_amenities29." - ".$value->hotel_amenities30." - ".$value->hotel_amenities31." - ".$value->hotel_amenities32." - ".$value->hotel_amenities33." - ".$value->hotel_amenities34." - ".$value->hotel_amenities35." - ".$value->hotel_amenities36." - ".$value->hotel_amenities37;?>
			                       </h5>
								</div>
								
								<div class="row px-3">
									<h2 class="text-success mb-1 font-weight-bold"><?php echo $value->hotel_currency_code ?>  <?php echo $value->price ?></h2>
								</div>
								
							</div>
							 <?php
					  }
					  ?>
						</div>
					</div>
				</div>
			</div>
	   
	</body>
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</html>