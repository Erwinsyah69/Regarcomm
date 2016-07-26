
<?php

/* @var $this \yii\web\View */
/* @var $content string */

use backend\assets\AppAsset;
use yii\helpers\Html;
use yii\bootstrap\Nav;
use yii\bootstrap\NavBar;
use yii\widgets\Breadcrumbs;
use common\widgets\Alert;

AppAsset::register($this);
?>
<?php $this->beginPage() ?>
<!DOCTYPE html>
<html lang="<?= Yii::$app->language ?>">
<head>
    <meta charset="<?= Yii::$app->charset ?>">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <?= Html::csrfMetaTags() ?>
    <title><?= Html::encode($this->title) ?></title>
    <?php $this->head() ?>
    <!-- Bootstrap -->
    <link href="../css/bootstrap.min.css" rel="stylesheet">
  <link href="../css/bootstrap-theme.min.css" rel="stylesheet">
  <link href="../css/custom.css" rel="stylesheet">

   <!-- Custom CSS -->
    <link href="../css/shop-homepage.css" rel="stylesheet">

    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
        <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
</head>
<link type="text/css" href="../css/bootstrap.css" rel="stylesheet" media="screen">      
    <script src="../js/jquery.js"></script>
    <script src="../js/bootstrap.js"></script> 
  <body>
  <br/><br/>
<body>
  
<?php $this->beginBody() ?>


 
    <?php 
    NavBar::begin([
        'brandLabel' => 'Regarcomm',
        'brandUrl' => Yii::$app->homeUrl,

        'options' => [
            'class' => 'navbar-inverse navbar-fixed-top',
        ],
    ]); 
    
  /*  $menuItems = [
        ['label' => 'Home', 'url' => ['/site/index']],
        ['label' => 'User', 'url' => ['/user/index']],
        ['label' => 'Role', 'url' => ['/admin-role/index']],
        ['label' => 'Attribute', 'url' => ['/attribute/index']],
         ['label' => 'Customer', 'url' => ['/customer/index']],
          ['label' => 'Address', 'url' => ['/customer-address/index']],
          ['label' => 'Currency', 'url' => ['/currency/index']],
           ['label' => 'Category', 'url' => ['/category/index']],
           ['label' => 'Deskripsi', 'url' => ['/category-desc/index']],
           ['label' => 'Negara', 'url' => ['/country/index']],

    ]; */
    if (Yii::$app->user->isGuest) {
        $menuItems[] = ['label' => 'Login', 'url' => ['/site/login']];
    } else {
        $menuItems[] = '<li>'
            . Html::beginForm(['/site/logout'], 'post')
            . Html::submitButton(
                'Logout (' . Yii::$app->user->identity->username . ')',
                ['class' => 'btn btn-link']
            )
            . Html::endForm()
            . '</li>';
    }
  echo Nav::widget([
        'options' => ['class' => 'navbar-nav navbar-right'],
        'items' => $menuItems,
    ]);
    NavBar::end(); 
    ?>  
<?php 
  $namaToko = "Regarcomm Development";
  $alamatToko= "Utan Kayu Jakarta";
  $kota = "Jakarta Timur";
  $telpToko="081293880195";
  $faxToko="";
$querypro = mysql_query("SELECT * FROM r_product");

  ?>
    
   <div class="container">

      <!-- Static navbar -->
      <div class="navbar navbar-default" role="navigation">
        <div class="container-fluid">
            <!--header saat mobile version-->
            <div class="navbar-header">
            <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target=".navbar-collapse">
              <span class="sr-only">Toggle navigation</span>
              <span class="icon-bar"></span>
              <span class="icon-bar"></span>
              <span class="icon-bar"></span>
            </button>
            <a class="navbar-brand" href="/regarcomm/backend/web/index.php?r=about%2Fview&id=1""><img src="/regarcomm/img/iconregar.png"  class="img-responsive" >
</a>
          </div><!--end header saat mobile version-->

          <div class="navbar-collapse collapse">
            <ul class="nav navbar-nav">
              <li class="active"><a href="/regarcomm/backend/web/index.php?r=site%2Findex">Home</a></li>

              <li class="dropdown">
                <a href="#" class="dropdown-toggle" data-toggle="dropdown">Regarcomm <span class="caret"></span></a>
                 <ul class="dropdown-menu" role="menu">
              <li><a href="/regarcomm/backend/web/index.php?r=about%2Fview&id=1">About</a></li>
              <li><a href="/regarcomm/backend/web/index.php?r=site%2Findex">Page 2</a></li>
            </ul>
            </li>
              <li class="dropdown">
                <a href="#" class="dropdown-toggle" data-toggle="dropdown">Layanan Regarcomm <span class="caret"></span></a>
                <ul class="dropdown-menu" role="menu">
                  <li><a href="/regarcomm/backend/web/index.php?r=produk%2Findex">Produk Regarcomm</a></li>
                  <li><a href="/regarcomm/backend/web/index.php?r=admin-role%2Findex">Role</a></li>
                  <li><a href="/regarcomm/backend/web/index.php?r=attribute%2Findex">Attribute</a></li>
                </ul>
              </li>
              <li class="dropdown">
                <a href="#" class="dropdown-toggle" data-toggle="dropdown">Admin <span class="caret"></span></a>
                <ul class="dropdown-menu" role="menu">
                  <li><a href="/regarcomm/backend/web/index.php?r=user%2Findex">User</a></li>
                  <li><a href="/regarcomm/backend/web/index.php?r=admin-role%2Findex">Role</a></li>
                  <li><a href="/regarcomm/backend/web/index.php?r=attribute%2Findex">Attribute</a></li>
                </ul>
              </li>
              <li class="dropdown">
                <a href="#" class="dropdown-toggle" data-toggle="dropdown">Master <span class="caret"></span></a>
                <ul class="dropdown-menu" role="menu">
                  <li><a href="/regarcomm/backend/web/index.php?r=currency%2Findex">Currency</a></li>
                  <li><a href="/regarcomm/backend/web/index.php?r=country%2Findex">Country</a></li>
                  <li><a href="/regarcomm/backend/web/index.php?r=coupon%2Findex">Coupon</a></li>
                </ul>
              </li>
              <li class="dropdown">
                <a href="#" class="dropdown-toggle" data-toggle="dropdown">Customer <span class="caret"></span></a>
                <ul class="dropdown-menu" role="menu">
                  <li><a href="/regarcomm/backend/web/index.php?r=customer%2Findex">Custommer</a></li>
                  <li><a href="/regarcomm/backend/web/index.php?r=customer-address%2Findex">Address</a></li>
                </ul>
              </li>
              <li class="dropdown">
                <a href="#" class="dropdown-toggle" data-toggle="dropdown">Data Master<span class="caret"></span></a>
                <ul class="dropdown-menu" role="menu">
                  <li><a href="/regarcomm/backend/web/index.php?r=category%2Findex">Category</a></li>
                  <li><a href="/regarcomm/backend/web/index.php?r=category-desc%2Findex">Category Desc</a></li>
                   <li><a href="/regarcomm/backend/web/index.php?r=product%2Findex">Data Barang</a></li>
                    <li><a href="/regarcomm/backend/web/index.php?r=upphoto%2Findex">Upload Image</a></li>
                  <li><a href="/regarcomm/backend/web/index.php?r=product-category%2Findex">Kategori Barang Desc</a></li>
                </ul>
              </li>
              <li><a href="#">Contact</a></li>
            </ul>
          </div><!--/.nav-collapse -->
        </div><!--/.container-fluid -->
      </div>

    
 
   
  <!-- /navbar -->
 <div class="container">


        <div class="row">

            <div class="col-md-3">
                <p class="lead">Regarcomm Development</p>
                <div class="list-group">
                    <a href="/regarcomm/backend/web/index.php?r=category%2Findex" class="list-group-item">Kategori</a>
                    <a href="/regarcomm/backend/web/index.php?r=product%2Findex" class="list-group-item">Produk</a>
                    <a href="/regarcomm/backend/web/index.php?r=customer%2Findex" class="list-group-item">Customer</a>
                </div>
            </div>

            <div class="col-md-9">

                <div class="row carousel-holder">

                    <div class="col-md-12">
                         <div class="container">
                <?= Breadcrumbs::widget([
            'links' => isset($this->params['breadcrumbs']) ? $this->params['breadcrumbs'] : [],
        ]) ?>
        <?= Alert::widget() ?>
        <?= $content ?>

    </div>
                        <div id="carousel-example-generic" class="carousel slide" data-ride="carousel">
                            <ol class="carousel-indicators">
                                <li data-target="#carousel-example-generic" data-slide-to="0" class="active"></li>
                                <li data-target="#carousel-example-generic" data-slide-to="1"></li>
                                <li data-target="#carousel-example-generic" data-slide-to="2"></li>
                                 <li data-target="#carousel-example-generic" data-slide-to="3"></li>
                                 <li data-target="#carousel-example-generic" data-slide-to="4"></li>
                                 <li data-target="#carousel-example-generic" data-slide-to="5"></li>
                                 <li data-target="#carousel-example-generic" data-slide-to="6"></li>
                            </ol>
                            <div class="carousel-inner">
                                <div class="item active">
                                    <img class="slide-image" src="/regarcomm/img/slides/service1.fw.png" alt="">
                                </div>
                                <div class="item">
                                    <img class="slide-image" src="/regarcomm/img/slides/service2.fw.png" alt="">
                                </div>
                                <div class="item">
                                    <img class="slide-image" src="/regarcomm/img/slides/service3.fw.png" alt="">
                                </div>
                                 <div class="item">
                                    <img class="slide-image" src="/regarcomm/img/slides/service4.fw.png" alt="">
                                </div>
                                <div class="item">
                                    <img class="slide-image" src="/regarcomm/img/slides/service5.fw.png" alt="">
                                </div>
                                <div class="item">
                                    <img class="slide-image" src="/regarcomm/img/slides/service6.fw.png" alt="">
                                </div>
                                <div class="item">
                                    <img class="slide-image" src="/regarcomm/img/slides/service7.fw.png" alt="">
                                </div>
                            </div>
                            <a class="left carousel-control" href="#carousel-example-generic" data-slide="prev">
                                <span class="glyphicon glyphicon-chevron-left"></span>
                            </a>
                            <a class="right carousel-control" href="#carousel-example-generic" data-slide="next">
                                <span class="glyphicon glyphicon-chevron-right"></span>
                            </a>
                        </div>
                    </div>

                </div>
<table>
  <td>
                <div class="row">

                   
                        <div class="thumbnail">
                            <img src="/regarcomm/img/page/Apple_iPhone48.jpeg" alt="">
                            <div class="caption">
                                <h4 class="pull-right">$24.99</h4>
                   
                                <h4><a href="/regarcomm/backend/web/index.php?r=product%2Fview&id=225">First Product</a>
                              
                                </h4>


                                <p>See more snippets like this online store item at <a target="_blank" href="http://www.bootsnipp.com">Bootsnipp - http://bootsnipp.com</a>.</p>
                            </div>
                            <div class="ratings">
                                <p class="pull-right">15 reviews</p>
                                <p>
                                    <span class="glyphicon glyphicon-star"></span>
                                    <span class="glyphicon glyphicon-star"></span>
                                    <span class="glyphicon glyphicon-star"></span>
                                    <span class="glyphicon glyphicon-star"></span>
                                    <span class="glyphicon glyphicon-star"></span>
                                </p>
                            </div>
                        </div>
                   
                  </td>
                  <td>
                    
                        <div class="thumbnail">
                            <img src="/regarcomm/img/page/product_Samsung-Galaxy-Grand-_1427717234.jpg" alt="">
                            <div class="caption">
                                <h4 class="pull-right">$64.99</h4>
                                <h4><a href="/regarcomm/backend/web/index.php?r=product%2Fview&id=230">Second Product</a>
                                </h4>
                                <p>This is a short description. Lorem ipsum dolor sit amet, consectetur adipiscing elit.</p>
                            </div>
                            <div class="ratings">
                                <p class="pull-right">12 reviews</p>
                                <p>
                                    <span class="glyphicon glyphicon-star"></span>
                                    <span class="glyphicon glyphicon-star"></span>
                                    <span class="glyphicon glyphicon-star"></span>
                                    <span class="glyphicon glyphicon-star"></span>
                                    <span class="glyphicon glyphicon-star-empty"></span>
                                </p>
                            </div>
                        </div>
                   
                  </td>
                  <td>
                    
                        <div class="thumbnail">
                            <img src="/regarcomm/img/page/CameraFuji55.jpg" alt="">
                            <div class="caption">
                                <h4 class="pull-right">$74.99</h4>
                                <h4><a href="#">Third Product</a>
                                </h4>
                                <p>This is a short description. Lorem ipsum dolor sit amet, consectetur adipiscing elit.</p>
                            </div>
                            <div class="ratings">
                                <p class="pull-right">31 reviews</p>
                                <p>
                                    <span class="glyphicon glyphicon-star"></span>
                                    <span class="glyphicon glyphicon-star"></span>
                                    <span class="glyphicon glyphicon-star"></span>
                                    <span class="glyphicon glyphicon-star"></span>
                                    <span class="glyphicon glyphicon-star-empty"></span>
                                </p>
                            </div>
                        </div>
                  
</td>

<td>
                   
                        <div class="thumbnail">
                            <img src="/regarcomm/img/page/category_62_1427715053.jpg" alt="">
                            <div class="caption">
                                <h4 class="pull-right">$84.99</h4>
                                <h4><a href="#">Fourth Product</a>
                                </h4>
                                <p>This is a short description. Lorem ipsum dolor sit amet, consectetur adipiscing elit.</p>
                            </div>
                            <div class="ratings">
                                <p class="pull-right">6 reviews</p>
                                <p>
                                    <span class="glyphicon glyphicon-star"></span>
                                    <span class="glyphicon glyphicon-star"></span>
                                    <span class="glyphicon glyphicon-star"></span>
                                    <span class="glyphicon glyphicon-star-empty"></span>
                                    <span class="glyphicon glyphicon-star-empty"></span>
                                </p>
                            </div>
                        </div>
                 
                  </td>
                  <tr>
                    <td>  
                                 
                        <div class="thumbnail">
                            <img src="/regarcomm/img/page/product_Canon-EOS-1200D-_1427718711.jpg" alt="">
                            <div class="caption">
                                <h4 class="pull-right">$94.99</h4>
                                <h4><a href="#">Fifth Product</a>
                                </h4>
                                <p>This is a short description. Lorem ipsum dolor sit amet, consectetur adipiscing elit.</p>
                            </div>
                            <div class="ratings">
                                <p class="pull-right">18 reviews</p>
                                <p>
                                    <span class="glyphicon glyphicon-star"></span>
                                    <span class="glyphicon glyphicon-star"></span>
                                    <span class="glyphicon glyphicon-star"></span>
                                    <span class="glyphicon glyphicon-star"></span>
                                    <span class="glyphicon glyphicon-star-empty"></span>
                                </p>
                            </div>
                        </div>   
                                   
                  </td>
                  <td>                    
                        <div class="thumbnail">
                            <img src="/regarcomm/img/page/category_77_1427719209.jpg" alt="">
                            <div class="caption">
                                <h4 class="pull-right">$55.65</h4>
                                <h4><a href="#">Sixth Product</a>
                                </h4>
                                <p>This is a short description. Lorem ipsum dolor sit amet, consectetur adipiscing elit.</p>
                            </div>
                            <div class="ratings">
                                <p class="pull-right">18 reviews</p>
                                <p>
                                    <span class="glyphicon glyphicon-star"></span>
                                    <span class="glyphicon glyphicon-star"></span>
                                    <span class="glyphicon glyphicon-star"></span>
                                    <span class="glyphicon glyphicon-star"></span>
                                    <span class="glyphicon glyphicon-star-empty"></span>
                                </p>
                            </div>
                        </div>              
                  </td>
                  <td>                    
                        <div class="thumbnail">
                            <img src="/regarcomm/img/page/product_Taanz-Solid-Purple-Casual-Shirt-_1427720240.jpg" alt="">
                            <div class="caption">
                                <h4 class="pull-right">$55.65</h4>
                                <h4><a href="#">Seventh Product</a>
                                </h4>
                                <p>This is a short description. Lorem ipsum dolor sit amet, consectetur adipiscing elit.</p>
                            </div>
                            <div class="ratings">
                                <p class="pull-right">18 reviews</p>
                                <p>
                                    <span class="glyphicon glyphicon-star"></span>
                                    <span class="glyphicon glyphicon-star"></span>
                                    <span class="glyphicon glyphicon-star"></span>
                                    <span class="glyphicon glyphicon-star"></span>
                                    <span class="glyphicon glyphicon-star-empty"></span>
                                </p>
                            </div>
                        </div>              
                  </td>
                   <td>                    
                        <div class="thumbnail">
                            <img src="/regarcomm/img/page/product_multi_Full-Sleeve-White-Embroidered-Top-154_0_1404399207.jpg" alt="">
                            <div class="caption">
                                <h4 class="pull-right">$55.65</h4>
                                <h4><a href="#">Eighth Product</a>
                                </h4>
                                <p>This is a short description. Lorem ipsum dolor sit amet, consectetur adipiscing elit.</p>
                            </div>
                            <div class="ratings">
                                <p class="pull-right">18 reviews</p>
                                <p>
                                    <span class="glyphicon glyphicon-star"></span>
                                    <span class="glyphicon glyphicon-star"></span>
                                    <span class="glyphicon glyphicon-star"></span>
                                    <span class="glyphicon glyphicon-star"></span>
                                    <span class="glyphicon glyphicon-star-empty"></span>
                                </p>
                            </div>
                        </div>              
                  </td>
                </tr>
</table>

                    <div class="col-sm-4 col-lg-4 col-md-4">
                        <h4><a href="#">Like this template?</a>
                        </h4>
                        <p>If you like this template, then check out <a target="_blank" href="http://maxoffsky.com/code-blog/laravel-shop-tutorial-1-building-a-review-system/">this tutorial</a> on how to build a working review system for your online store!</p>
                        <a class="btn btn-primary" target="_blank" href="http://maxoffsky.com/code-blog/laravel-shop-tutorial-1-building-a-review-system/">View Tutorial</a>
                    </div>

                </div>

            </div>

        </div>

    </div>
    <!-- /.container -->

    <div class="container">
       
    </div>


 
 
    <!-- /.container -->

    <!-- jQuery -->
    <script src="../js/jquery.js"></script>

    <!-- Bootstrap Core JavaScript -->
    <script src="../js/bootstrap.min.js"></script>

      <nav></nav>
      <div id="mySlide1" class="carousel slide"></div>  
        </header>
        
        <section></section>
<footer class="footer">
    <div class="container">
        <p class="pull-left">Copyright &copy; Regarcomm Development <?= date('Y') ?></p>

        <p class="pull-right"><?= Yii::powered() ?></p>
    </div>
</footer>
 <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <!--script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script-->
  <script src="../js/jquery.min.js"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="../js/bootstrap.min.js"></script>
<?php $this->endBody() ?>
</body>
</html>
<?php $this->endPage() ?>
