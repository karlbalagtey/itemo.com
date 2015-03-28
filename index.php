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
    </head>
    <body>
        <!--[if lt IE 8]>
            <p class="browserupgrade">You are using an <strong>outdated</strong> browser. Please <a href="http://browsehappy.com/">upgrade your browser</a> to improve your experience.</p>
        <![endif]-->

        <!-- Add your site or application content here -->
      <?php include'assets/header.php'; ?>
  		<div class="container">
        <section class="frontPageLogo">
    			<form action="#" class="form-signin" method="post">
    		    <img src="img/itemoLogo.png" alt="iteMo Logo">
    		    <label for="itemNameID" class="sr-only">Username</label>
    		    <input name="itemName" type="text" id="itemNameID" class="form-control" placeholder="Find anything in Baguio (items, food, location and more!)" required="" autofocus="">
    		    <button name="action" value="login" class="btn btn-lg btn-warning" type="submit">Find</button>
    		  </form>
        </section>
  		</div>
      <?php include'assets/footer.php'; ?>
    </body>
</html>
