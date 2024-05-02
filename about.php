<?php

@include 'config.php';

session_start();

$user_id = $_SESSION['user_id'];

if(!isset($user_id)){
   header('location:login.php');
}

?>

<!DOCTYPE html>
<html lang="en">
<head>
   <meta charset="UTF-8">
   <meta http-equiv="X-UA-Compatible" content="IE=edge">
   <meta name="viewport" content="width=device-width, initial-scale=1.0">
   <title>about</title>

   <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css">
   <link rel="stylesheet" href="css/style.css">

</head>
<body>
   
<?php include 'header.php'; ?>

<section class="about">

   <div class="row">

      <div class="box">
         <img src="images/about-img-1.png" alt="">
         <h3>why choose us?</h3>
         <p> GroceryGo allows you to shop for groceries from the comfort of your home, saving you time and effort. You can browse through a wide range of products and make purchases at any time that suits you, without the need to go to a physical store.
            GroceryGo offers a vast selection of products, including fresh produce, pantry essentials, beverages, snacks, household items, and more. You can find everything you need for your grocery shopping in one place, making it convenient and efficient.
         </p>
         <a href="contact.php" class="btn">contact us</a>
      </div>

      <div class="box">
         <img src="images/about-img-2.png" alt="">
         <h3>what we provide?</h3>
         <p>GroceryGo allows you to search for specific products or browse through different categories and departments. 
         Each product listing typically includes detailed information such as product descriptions, images, nutritional facts, ingredients, and customer reviews. This helps you make informed decisions while shopping.
         You can add products to your virtual shopping cart as you browse. The cart keeps track of your selected items and allows you to adjust quantities or remove products before proceeding to checkout.
         </p>
         <a href="shop.php" class="btn">our shop</a>
      </div>

   </div>

</section>

<?php include 'footer.php'; ?>

<script src="js/script.js"></script>

</body>
</html>