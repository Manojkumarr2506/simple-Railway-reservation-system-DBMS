<?php 
session_start();
	if(empty($_SESSION['user_info'])){
		echo "<script type='text/javascript'>alert('Please login before proceeding further!');</script>";
		header('location:login.php');
	}
$conn = mysqli_connect("localhost","root","","railway1");
if(!$conn){  
	echo "<script type='text/javascript'>alert('Database failed');</script>";
  	die('Could not connect: '.mysqli_connect_error());  
}

$email1=$_SESSION['user_info'];
$sql="SELECT p_fname,p_age,p_gender,t_no FROM passengers WHERE email='$email1';";
$result=mysqli_query($conn,$sql);
$row=mysqli_fetch_array($result);

 $pname=$row['p_fname'];
 $page=$row['p_age'];
 $pgender=$row['p_gender'];
 $tnum=$row['t_no'];
 $sql1="SELECT t_source,t_destination,t_name,t_type,t_status FROM trains WHERE t_no='$tnum';";
 $result1=mysqli_query($conn,$sql1);
 $row1=mysqli_fetch_array($result1);
 $tn=$row1['t_name'];
 $ts=$row1['t_source'];
 $td=$row1['t_destination'];
 $tt=$row1['t_type'];
 $tsta=$row1['t_status'];

// $sql2 = "SELECT PNR,t_status FROM tickets ORDER BY rand() LIMIT 1";
// $result2 = mysqli_query($conn, $sql2);
// $row2 = mysqli_fetch_assoc($result2);
// $pnr=$row2['PNR'];
// $tstat=$row2['t_status'];
?>
<!DOCTYPE html>
<html>
<head>
	<title>Booking Details</title>
	<LINK REL="STYLESHEET" HREF="STYLE.CSS">
	<style type="text/css">
		html { 
		  background: url(img/bg7.jpg) no-repeat center center fixed; 
		  -webkit-background-size: cover;
		  -moz-background-size: cover;
		  -o-background-size: cover;
		  background-size: cover;
		}
        #journeytext	{
			color: white;
			font-size: 28px;
			font-family:"Comic Sans MS", cursive, sans-serif;
        }
        #	
	</style>
	</script>
</head>
<body>
	<?php
		include ('header.php');
	?>
	<div id="bookdetail">
	<h1 align="center" id="journeytext">Booking Details</h1><br/><br/>
    <div >
				<table  class="table">
				<col width="110">
				<col width="110">
				<col width="110">
				<col width="110">
				<col width="110">
				<col width="110">
				<col width="110">
				<col width="110">
				<tr>
					<th style="width:100px;border-top:0px;color: white;">Train no</th>
					<th style="width:100px;border-top:0px;color: white;">Train name</th>
					<th style="width:100px;border-top:0px;color: white;">Name</th>
					<th style="width:100px;border-top:0px;color: white;">Age</th>
					<th style="width:100px;border-top:0px;color: white;">Gender</th>
					<th style="width:100px;border-top:0px;color: white;">Type</th>
					<th style="width:100px;border-top:0px;color: white;">Train status</th>
					<th style="width:100px;border-top:0px;color: white;">From</th>
                    <th style="width:100px;border-top:0px;color: white;">To</th>
				</tr>
                <div >
                <br/>
                <tr class="text-error">
					<th style="width:100px;color: white;"> <?php echo $row['t_no']; ?> </th>
					<th style="width:100px;color: white;"> <?php echo $row1['t_name']; ?> </th>
					<th style="width:100px;color: white;"> <?php echo $row['p_fname']; ?> </th>
					<th style="width:100px;color: white;"> <?php echo $row['p_age']; ?> </th>
					<th style="width:100px;color: white;"> <?php echo $row['p_gender']; ?> </th>
                    <th style="width:100px;color: white;"> <?php echo $row1['t_type']; ?> </th>
                    <th style="width:100px;color: white;"> <?php echo $row1['t_status']; ?> </th>
					<th style="width:100px;color: white;"> <?php echo $row1['t_source']; ?> </th>
					<th style="width:100px;color: white;"> <?php echo $row1['t_destination']; ?> </th>
                    <br/>
				</tr>
	</div>
	</body>
	</html>