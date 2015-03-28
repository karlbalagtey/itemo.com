
<?PHP 
	include("assets/connect.php");

    $latitude = $_POST['latitude'];
    $longitude = $_POST['longitude'];
    
    echo $latitude;

	$sql1=mysqli_query("INSERT INTO tblitemcategory (category) 
	VALUES('".$_POST['category']."')");
	mysqli_query($sql1);
	$category_id= mysqli_insert_id();

	$sql2=mysqli_query("INSERT INTO tbllocation (locationName,mapx,mapy,mapz) 
	VALUES('".$_POST['locationName']."','".$_POST['mapx']."','".$_POST['mapy']."','".$_POST['mapz']."')");
	mysqli_query($sql2);
	$location_id= mysqli_insert_id();

	$sql3=mysqli_query("INSERT INTO tblitem (itemcategoryid,itemname,itemdescription,itemprice,locationID) 
	VALUES('$category_id','".$_POST['itemname']."','".$_POST['itemdescription']."',,'".$_POST['itemprice']."','$location_id')");
	mysqli_query($sql3);
	$item_id= mysqli_insert_id();

	echo"saved!";
?>