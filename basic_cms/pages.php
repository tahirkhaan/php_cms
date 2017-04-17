<!DOCTYPE html>
<html>
<head>
	<title>basic CMS</title>
	<style>
	a:link{
		color: white;
		text-decoration: none;
	}
	a:visited{
		color: white;
	}
	h2{color: blue; margin: 5px; padding: 5px;font-size: 28px; text-decoration: underline;
	}
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
		<td>
		<table border="0" width="800px" align="center"></table>
		<tr>
		<?php

		$page = $_GET['pages'];

		$query = "select * from pages where p_title='$page'";
		$run = mysqli_query($con,$query);

		while ($row=mysqli_fetch_assoc($run)) {
		echo "<td bgcolor='aqua'>"."<h2>".$row['p_title']."</h2>"."<br>".$row['p_desc']."</td>";
		}
		?>
			
		</tr>
		</table>
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