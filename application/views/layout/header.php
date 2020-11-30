<!-- A grey horizontal navbar that becomes vertical on small screens -->
<nav class="navbar navbar-expand-sm bg-light">

  <!-- Links -->
  <ul class="navbar-nav">
    <li class="nav-item">
      <a class="nav-link" href="<?php echo base_url(); ?>Welcome\availablehotel">Home</a>
    </li>
    <li class="nav-item">
      <a class="nav-link" href="<?php echo base_url(); ?>welcome/viewprofile?I=<?php echo base64_encode($this->session->userdata('user_login_id')); ?>">Profile</a>
    </li>
    <li class="nav-item">
      <a class="nav-link" href="<?php echo base_url(); ?>Welcome\logout">Logout</a>
    </li>
  </ul>

  
  

</nav>
<!-- A grey horizontal navbar that becomes vertical on small screens -->
<nav class="navbar navbar-expand-sm bg-light ratings">
  <ul class="navbar-nav">
    <li class="nav-item">
      <a class="nav-link" href="#">Rating</a>
    </li>
    <li class="nav-item">
      <a class="nav-link btn btn-primary" href="<?php echo base_url(); ?>welcome\rateASC">ASC</a>
    </li>
    <li class="nav-item">
      <a class="nav-link btn btn-primary" href="<?php echo base_url(); ?>Welcome\rateDESC">DESC</a>
    </li>
  </ul>
  </nav>
  <!-- A grey horizontal navbar that becomes vertical on small screens -->
<nav class="navbar navbar-expand-sm bg-light prices">
  <ul class="navbar-nav">
    <li class="nav-item">
      <a class="nav-link" href="#">Price</a>
    </li>
    <li class="nav-item">
      <a class="nav-link btn btn-primary" href="<?php echo base_url(); ?>welcome\priceASC">ASC</a>
    </li>
    <li class="nav-item">
      <a class="nav-link btn btn-primary" href="<?php echo base_url(); ?>Welcome\priceDESC">DESC</a>
    </li>
  </ul>
  </nav>