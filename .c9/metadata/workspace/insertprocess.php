{"filter":false,"title":"insertprocess.php","tooltip":"/insertprocess.php","undoManager":{"mark":0,"position":0,"stack":[[{"group":"doc","deltas":[{"start":{"row":0,"column":0},"end":{"row":25,"column":2},"action":"insert","lines":["","<?PHP ","\tinclude(\"assets/connect.php\");","","    $latitude = $_POST['latitude'];","    $longitude = $_POST['longitude'];","    ","    echo $latitude;","","\t$sql1=mysqli_query(\"INSERT INTO tblitemcategory (category) ","\tVALUES('\".$_POST['category'].\"')\");","\tmysqli_query($sql1);","\t$category_id= mysqli_insert_id();","","\t$sql2=mysqli_query(\"INSERT INTO tbllocation (locationName,mapx,mapy,mapz) ","\tVALUES('\".$_POST['locationName'].\"','\".$_POST['mapx'].\"','\".$_POST['mapy'].\"','\".$_POST['mapz'].\"')\");","\tmysqli_query($sql2);","\t$location_id= mysqli_insert_id();","","\t$sql3=mysqli_query(\"INSERT INTO tblitem (itemcategoryid,itemname,itemdescription,itemprice,locationID) ","\tVALUES('$category_id','\".$_POST['itemname'].\"','\".$_POST['itemdescription'].\"',,'\".$_POST['itemprice'].\"','$location_id')\");","\tmysqli_query($sql3);","\t$item_id= mysqli_insert_id();","","\techo\"saved!\";","?>"]}]}]]},"ace":{"folds":[],"scrolltop":0,"scrollleft":0,"selection":{"start":{"row":25,"column":2},"end":{"row":25,"column":2},"isBackwards":false},"options":{"guessTabSize":true,"useWrapMode":false,"wrapToView":true},"firstLineState":0},"timestamp":1427433162475,"hash":"d5b0d969632ec393f02526f3c16d4816907a9cd8"}