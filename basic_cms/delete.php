<?php

include("include/db.php");


if (isset($_GET['del_page'])) 
{
 $delete_page = $_GET['del_page'];
 $query = "DELETE FROM pages where p_id='$delete_page'";
}
if (isset($_GET['del_menu'])) 
{
 $delete_menu = $_GET['del_menu'];
 $query = "DELETE FROM menus where m_id='$delete_menu'";
}

if (mysqli_query($con, $query))
{
 echo "<script>window.open('admin_panel.php?deleted = data has been deleted...','_self')</script>";
}

?>