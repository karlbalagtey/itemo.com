<!doctype html>
<html class="no-js" lang="">
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <title>Item Mo - Kahit saan sa Baguio</title>
        <meta name="description" content="">
        <meta name="viewport" content="width=device-width, initial-scale=1">

        <link rel="apple-touch-icon" href="apple-touch-icon.png">
        <!-- Place favicon.ico in the root directory -->

        <link rel="stylesheet" href="css/normalize.css">
        <link rel="stylesheet" href="css/main.css">
        <link rel="stylesheet" href="css/bootstrap.min.css">
        <script src="js/vendor/modernizr-2.8.3.min.js"></script>
        <script type="text/javascript" src="http://maps.googleapis.com/maps/api/js?v=3&amp;sensor=true&amp;key=AIzaSyAUQHXuw8OR1CzCPpo7bLMt_H_nauUHXKw"></script>
    </head>
    <body>
      <!--[if lt IE 8]>
        <p class="browserupgrade">You are using an <strong>outdated</strong> browser. Please <a href="http://browsehappy.com/">upgrade your browser</a> to improve your experience.</p>
      <![endif]-->
      <!-- Add your site or application content here -->
      <?php include'assets/header.php'; ?>
      <section class="container">
        <div class="jumbotron">
          <h2 class="text-center">Suggest item location</h2>
        </div>
        <div class="row">
          <div class="col-md-6">
            <form method="POST" action="additemProcess.php" class="form-group" name="AddItem">
              <label for="categoryID">Item Category: </label>
              <select class="form-control" name="category">
                 <option value="1">Appliances</option>
                 <option value="2">Electronics and Gadgets</option>
                 <option value="3">Books</option>
                 <option value="4">Vehicles</option>
                 <option value="5">Computers</option>
                 <option value="6">Furnitures</option>
                 <option value="7">Medicine</option>
                 <option value="8">Jewelry</option>
                 <option value="9">Musical Instruments</option>
                 <option value="10">Toys and Hobbies</option>
                 <option value="11">Souvenir</option>
                 <option value="12">Location</option>
              </select>
              <br>
              <label for="itemName">Item Name: </label>
              <input class="form-control" type="text" name ="itemname" id="itemName">
              <br>
              <label for="itemPrice">Item Price: </label>
              <input class="form-control" type ="text" name="itemprice" id="itemPrice">
              <br>
              <label for="itemDesc">Item Description: </label>
              <input class="form-control" type ="text" name ="	itemdescription" id="itemDesc">
              <br>
              <label for="itemLocation">Location: </label>
              <input class="form-control" type ="text" name ="locationName" id="itemLocation">
              <br>
              <input type ="submit" class="btn btn-primary">
            </form>
          </div>
        
          <div class="col-md-6">
            <div id="mapdiv" style="height: 400px; width:100%"></div>
            <div id="mapoutput" style="width:100%;background-color: #FFDD22; font-weight:nbold;">Latitude:<br>Longitude:</div>
          </div>
        </div>
      </section>
      <?php include'assets/footer.php'; ?>
    </body>
</html>


