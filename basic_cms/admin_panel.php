<?php
session_start();

if (!$_SESSION['admin_name'])
{
	header('location:login.php?error=you are not Administrator');
}

?>
<!DOCTYPE html>
<html>
<head>
	<title>Admin pannel</title>
</head>
<body>
<div style="width: 100%; height: 100px; background: blue; text-align: center;padding-top: 10px; font-size: 45px; color: white;">
Wellcome to Admin pannel
	</div>
	wellcome Admin:<font size='50px' color="red">
	<?php
echo $_SESSION['admin_name']; ?></font>
	 <h2 style="margin-bottom: 50px;"><a href="logout.php">Logout</a></h2>
	 
	<h2 align="center"><?php
echo @$_GET['deleted']; ?></h2>
	<h2 align="center"><?php
echo @$_GET['inserted']; ?></h2>
	<h2 align="center"><?php
echo @$_GET['logged']; ?></h2>
	

	<h2><a href="admin_panel.php?view_page=View page">View Pages</a></h2>
	<h2><a href="insert_page.php">Insert New Pages</a></h2>
	<h2><a href="admin_panel.php?view_menu=View menu">View menus</a></h2>
	<h2><a href="insert_menu.php">Insert New Menu</a></h2>
	<?php
include ("include/db.php");

if (isset($_GET['view_page']))
{
?>
	<table width="1000px" border="2px" align="center">
		<tr>
			<td align="center" bgcolor="yellow" colspan="6"><h2>All pages here</h2></td>
		</tr>

		<tr align="center">
			<th>Page NO:</th>
			<th>Page Title</th>
			<th>Page content</th>
			<th>Delete</th>
		</tr>

		<tr>
		<?php
	$query = "select * from pages";
	$run = mysqli_query($con, $query);
	while ($row = mysqli_fetch_array($run))
	{
		$p_id = $row['p_id'];
		$p_title = $row[1];
		$p_desc = substr($row[2], 0, 200);
?>
			<td><?php
		echo $p_id; ?></td>
			<td><?php
		echo $p_title; ?></td>
			<td><?php
		echo $p_desc; ?></td>
			<td><a href="delete.php?del_page=<?php
		echo $p_id; ?>">Delete Page</a></td>
		</tr>

<?php
	}
} ?>

	</table>
	<?php

if (isset($_GET['view_menu']))
{
?>
	<table width="400px" border="3px" align="center">
		<tr>
			<td align="center" bgcolor="aqua" colspan="5"><h2>All pages here</h2></td>
		</tr>

		<tr align="center">
			<th>Page NO:</th>
			<th>Menu Title</th>
			<th>delete</th>
			
		</tr>

			<tr>
		<?php
	$query = "select * from menus";
	$run = mysqli_query($con, $query);
	while ($row = mysqli_fetch_array($run))
	{
		$m_id = $row['m_id'];
		$m_title = $row[1];
?>
			<td><?php
		echo $m_id; ?></td>
			<td><?php
		echo $m_title; ?></td>
			<td><a href="delete.php?del_menu=<?php
		echo $m_id; ?>">Delete Menu</a></td>
		</tr>
		<?php
	}
} ?>
		</table>
</body>
</html>