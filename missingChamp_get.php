<!doctype html>
<html>

<head>
<meta charset="utf-8"/>
<meta name="viewport" content="width=device-width, initial-scale=1.0"/>
<title>LOL Statistics</title>
<link rel="stylesheet" href="http://dhbhdrzi4tiry.cloudfront.net/cdn/sites/foundation.min.css">
<link href='http://cdnjs.cloudflare.com/ajax/libs/foundicons/3.0.0/foundation-icons.css' rel='stylesheet' type='text/css'>
<link href='ContentPage.css' rel='stylesheet' type='text/css'>

<script src="BannerCycle.js"></script>
<script src="RelatedBanCycle.js"></script>
 
</head>

<header>
  <!-- /Sub Navigation -->

  <!-- logo and ad break -->
  <div class="row">
    <div class="medium-4 columns">
      <img src="LeagueTitle.png" alt="company logo">
    </div>
    <div class="medium-8 columns">
      <img src="http://placehold.it/900x175&text=Responsive Ads - ZURB Playground/333" alt="advertisement for deep fried Twinkies">
    </div>
  </div>
  <!-- / logo and ad break -->
  
  <br>

  <div class="title-bar" data-responsive-toggle="main-menu" data-hide-for="medium">
    <button class="menu-icon" type="button" data-toggle></button>
    <div class="title-bar-title">Menu</div>
  </div>

  <div class="top-bar" id="main-menu">
    <ul class="menu vertical medium-horizontal expanded medium-text-center" data-responsive-menu="drilldown medium-dropdown">
      <li class="has-submenu"><a href="#">Guides</a>
        <ul class="submenu menu vertical" data-submenu>
          <li><a href="#">Newest</a></li>
          <li><a href="#">Popular</a></li>
          <li><a href="#">Highly Rated</a></li>
        </ul>
      </li>
      <li class="has-submenu"><a href="#">Statistics</a>
        <ul class="submenu menu vertical" data-submenu>
          <li><a href="#">Popular</a></li>
          <li><a href="#">Win Rate</a></li>
          <li><a href="#">Ban Rate</a></li>
        </ul>
      </li>
      <li class=""><a href="#">Champions</a>
      </li>
     <div class="top-bar-right">
      <ul class="menu">
		<form action = "missingChamp_get.php" method ="get">
        <li><input type="search" name = "name" placeholder="Champion Name"></li>
        <li><button type="submit" class="button">Search</button></li>
		</form>
      </ul>
    </div>
    </ul>
  </div>

</header>

<br>

<body>
<h1>Sorry but the term <?php echo $_GET["name"]; ?> was not found.</h1>
</body>

<footer>
  <div class="row expanded callout secondary">

    <div class="large-4 columns">
      <h5>Guides</h5>
        <ul style="list-style-type:none" >
            <li><a href="#link1">Newest</a></li>
            <li><a href="#link2">Popular</a></li>
			<li><a href="#link2">Highly Rated</a></li>
        </ul>      
    </div>

    <div class="large-4 columns">
      <h5>Statistics</h5>
      <ul style="list-style-type:none" >
            <li><a href="#link1">Popular</a></li>
            <li><a href="#link2">Win Rate</a></li>
			<li><a href="#link2">Ban Rate</a></li>
        </ul>     
    </div>

    <div class="large-4 columns">
      <h5>About Us</h5>
	  <ul style="list-style-type:none" >
            <li><a href="#link1">Information</a></li>
            <li><a href="#link2">Site Map</a></li>
			<li><a href="#link2">Feed Back</a></li>
			<li><a href="#link2">Reviews</a></li>
        </ul>     
    </div>

  </div>
  <div class="row expanded">

    <div class="medium-6 columns">
      <ul class="menu">
        <li><a href="#">Legal</a></li>
        <li><a href="#">Partner</a></li>
        <li><a href="#">Explore</a></li>
      </ul>
    </div>

    <div class="medium-6 columns">
      <ul class="menu align-right">
        <li class="menu-text">Copyright © 2099 Random Mag</li>
      </ul>
    </div>
  </div>
  <script src="https://code.jquery.com/jquery-2.1.4.min.js"></script>
  <script src="http://dhbhdrzi4tiry.cloudfront.net/cdn/sites/foundation.js"></script>
  <script>
        $(document).foundation();
      </script>
  <script type="text/javascript" src="https://intercom.zurb.com/scripts/zcom.js"></script>


</footer>
</html>