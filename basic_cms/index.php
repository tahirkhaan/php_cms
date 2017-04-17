<!DOCTYPE html>
<html>
<head>
	<title>basic CMS</title>
	<style>
	a:link{
		color: white;
		text-decoration: none;
	}
	h2{color: blue; margin: 5px; padding: 5px;font-size: 28px; text-decoration: underline;}

	</style>
</head>
<body>
<table width="1000px" border="2" align="center">
	<!-- Header starts -->
	<tr>
		<td><?php include("include/header.php"); ?></td>
	</tr>
	<!--Navigation Bar starts -->
	<tr>
		<td>
			<table border="0px">
			<tr>
				<?php 
				include("include/db.php");
				$query = "select * from menus";

				$run = mysqli_query($con,$query);
				while ($row=mysqli_fetch_array($run)) {
					$m_title = $row[1];
					echo "<td bgcolor ='black' width='100px' align='center'><a href='pages.php?pages=$m_title'>$m_title</a></td>";
				}


				 ?>
			</tr>
			</table>
		</td>
	</tr>
	<!-- Main Content Starts -->
	<tr>
		<td bgcolor="pink" height="500px" valign="top">
		<h2>Welcome to my website</h2>
		<p>This website is for all users who want to learn php with advace level and wwe are teaam of developers designer and seo optimizer , who are actually working for last 3 years online and have hie experience and knowlege and these subjects.</p>
		<p>This website is for all users who want to learn php with advace level and wwe are teaam of developers designer and seo optimizer , who are actually working for last 3 years online and have hie experience and knowlege and these subjects</p>
		
		<img src="img/tahir.jpg" width="100%">
		<img src="img/fahad.jpg" width="100%;">
			
		</td>
	</tr>
	<!-- Footer starts -->
	<tr>
		<td bgcolor="black" height="60px" align="center">
		<h2 style="color: white;">Created by: www.onlineteaching.com</h2>
		</td>
	</tr>
</table>

</body>
</html>