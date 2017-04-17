<?php
	session_start();

?>
<!DOCTYPE html>
<html>
   <head>
      <title>Admin Login</title>
   </head>
   <body>
      <form action="login.php" method="post">
         <table width="400px" align="center" border="5">
            <tr>
               <td colspan="5" align="center" bgcolor="green">
                  <h2>Admin Login</h2>
               </td>
            </tr>
            <tr>
               <th align="right">User Name:</th>
               <td><input type="text" name="admin_name"></td>
            </tr>
            <tr>
               <th align="right">User Password</th>
               <td><input type="password" name="admin_pass"></td>
            </tr>
            <tr>
               <td colspan="6" align="center"><input type="submit" name="submit" value="login"></td>
            </tr>
         </table>
      </form>
	<h2 align="center">
<?php
		if (isset($_GET['logout'])) {
			
		echo $_GET['logout']; 
		}
		?>
		</h2>

<h2 align="center">
<?php 
	if (isset($_GET['error'])) {
	echo $_GET['error']; 
	 	}
	 ?>
	 </h2>
</body>
</html>
<?php
include("include/db.php");

if (isset($_POST['submit'])) {

	 $admin_name = mysqli_real_escape_string($con,$_POST['admin_name']);
     $admin_pass = mysqli_real_escape_string($con,$_POST['admin_pass']); 

	$admin_name = $_SESSION['admin_name'] = $_POST['admin_name'];
	$admin_pass = $_POST['admin_pass'];

	$query = "select * from admin_login where u_name='$admin_name' AND u_pass='$admin_pass'";
	$run = mysqli_query($con,$query);
	if(mysqli_num_rows($run)==1) {

		header("location: admin_panel.php?logged=You are logged in Succesfully");
		echo "<script>window.open('admin_panel.php?logged=You are logged in Succesfully!','_self')</script)";
	}
	else {
		echo "<script>alert('user name or password is incorrect')</script>";
	}
}
?>