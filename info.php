<?php
include_once('infop.php');
if(isset($_POST['jaflong'])) {
	$que="SELECT * FROM `information` WHERE pname='Jaflong'";
	$result = mysqli_query($db, $que);
}
if(isset($_POST['ratargul'])) {
	$que="SELECT * FROM `information` WHERE pname='Ratargul'";
	$result = mysqli_query($db, $que);
}
if(isset($_POST['sada Pathor'])) {
	$que="SELECT * FROM `information` WHERE pname='SadaPathor'";
	$result = mysqli_query($db, $que);
}
if(isset($_POST['lalakhal'])) {
	$que="SELECT * FROM `information` WHERE pname='Lalakhal'";
	$result = mysqli_query($db, $que);
}
if(isset($_POST['The Shah Jalal Dargah'])) {
	$que="SELECT * FROM `information` WHERE pname='The Shah Jalal Dargah'";
	$result = mysqli_query($db, $que);
}
if(isset($_POST['bichnakandi'])) {
	$que="SELECT * FROM `information` WHERE pname='Bichnakandi'";
	$result = mysqli_query($db, $que);
}
if(isset($_POST['sreemangal'])) {
	$que="SELECT * FROM `information` WHERE pname='Sreemangal'";
	$result = mysqli_query($db, $que);
}
if(isset($_POST['SUST'])) {
	$que="SELECT * FROM `information` WHERE pname='SUST'";
	$result = mysqli_query($db, $que);
}
if(isset($_POST['lakkatura'])) {
	$que="SELECT * FROM `information` WHERE pname='Lakkatura'";
	$result = mysqli_query($db, $que);
}
if(isset($_POST['srinagar'])) {
	$que="SELECT * FROM `information` WHERE pname='Srinagar'";
	$result = mysqli_query($db, $que);
}
if(isset($_POST['amritsar'])) {
	$que="SELECT * FROM `information` WHERE pname='Amritsar'";
	$result = mysqli_query($db, $que);
}
if(isset($_POST['jogfalls'])) {
	$que="SELECT * FROM `information` WHERE pname='Jog Falls'";
	$result = mysqli_query($db, $que);
}
if(isset($_POST['search_p'])) {
	$search = $_POST['search_p'];
	$que="SELECT * FROM `information` WHERE pname='$search'";
	$result = mysqli_query($db, $que);
}
?>

<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width initial-scale=1.0">
	<link rel="stylesheet" type="text/css" href="css/info.css">
	<title>Information</title>
</head>
<body>
	<div class="main">
	    <ul>
	      <ul class="list">
	        <li ><a href="mainPage.html"><img src="" alt="" style="width:0px;height:10px"></a></li>
	        <div class="search">
                <form method="POST" action="info.php">
                  <input type="text" name="search_p" placeholder="Search.." size="50">
              
                  <input type="image" name="submit_p" src="search_icon.png" alt="Search image" style="width:22;height:22; margin-left: 35px;">
                </form>
            </div>
	      </ul>
	      <ul class="list2">
	        <li><a href="mainPage.html">Home</a></li>
	        <li><a id="long" href="destination.html">Destination</a></li>
	        <li><a href="gallery.html">Gallery</a></li>
			<li><a href="feedback.html">Feedback</a></li>
		
			<li><a href="index.html">Logout</a></li>
	      </ul>
	    </ul>
	</div>
	<div class="hedder">
		<h1>Place Information</h1>
	</div>
	<div class="container">
		<div class="description-container" style="border: 1px solid black;">
			<div class="box1">
				<?php
					while($rows = mysqli_fetch_assoc($result))
					{
				?>
				<img src="<?php echo $rows['pi_main']; ?>" alt="Taj Mahal Image" style="width: auto;height: 302px;">
			</div>
			<div class="description">
				<h1><?php echo $rows['pname']; ?><h1>
				<p style="text-align: justify;"><?php echo $rows['pdescription']; ?></p>
				<p style="color:red; top: -10px;" >Package: <?php echo $rows['package']; ?> Rs</p>
			</div>
			<a href="booking.html" style="top: -20px; float: right; margin-right: 27%;">Book Tour</a>
		</div>
		<div class="image-container" style="border: 1px solid black">
			<div class="box">
		        <div class="imgBox">
		          <img src="<?php echo $rows['pi1']; ?>" alt="Taj Mahal Image" style="width: auto;height: 270px;">
		        </div>
	        </div>
	      <div class="box">
	        <div class="imgBox">
	          <img src="<?php echo $rows['pi2']; ?>" alt="Taj Mahal Image" style="width: auto;height: 270px;">
	        </div>
	      </div>
	      <div class="box">
	        <div class="imgBox">
	          <img src="<?php echo $rows['pi3']; ?>" alt="Taj Mahal Image" style="width: auto;height: 270px;">
	        </div>
	        	<?php
					}
				?>
	      </div>
		</div>
	</div>
</body>
</html>