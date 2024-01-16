<div class="breadcrumbs">
    <div class="container">
        <div class="row">
            <div class="col">
                <p class="bread"><span><a href="index.html">Home</a></span> / <span>Men</span></p>
            </div>
        </div>
    </div>
</div>

<div class="breadcrumbs-two">
    <div class="container">
        <div class="row">
            <div class="col">
                <div class="breadcrumbs-img" style="background-image: url(/php2/public/images/cover-img-1.jpg);">
                    <h2>Men's</h2>
                </div>
                <div class="menu text-center">
                    <p><a href="#">New Arrivals</a> <a href="#">Best Sellers</a> <a href="#">Extended Widths</a> <a href="#">Sale</a></p>
                </div>
            </div>
        </div>
    </div>
</div>

<div class="colorlib-featured">
    <div class="container">
        <div class="row">
            <div class="col-sm-4 text-center">
                <div class="featured">
                    <div class="featured-img featured-img-2" style="background-image: url(/php2/public/images/men.jpg);">
                        <h2>Casuals</h2>
                        <p><a href="#" class="btn btn-primary btn-lg">Shop now</a></p>
                    </div>
                </div>
            </div>
            <div class="col-sm-4 text-center">
                <div class="featured">
                    <div class="featured-img featured-img-2" style="background-image: url(/php2/public/images/women.jpg);">
                        <h2>Dress</h2>
                        <p><a href="#" class="btn btn-primary btn-lg">Shop now</a></p>
                    </div>
                </div>
            </div>
            <div class="col-sm-4 text-center">
                <div class="featured">
                    <div class="featured-img featured-img-2" style="background-image: url(/php2/public/images/item-11.jpg);">
                        <h2>Sports</h2>
                        <p><a href="#" class="btn btn-primary btn-lg">Shop now</a></p>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

<div class="colorlib-product">
    <div class="container">
        <div class="row">
            <div class="col-sm-8 offset-sm-2 text-center colorlib-heading colorlib-heading-sm">
                <h2>Tất cả sản phẩm</h2>
            </div>
        </div>
        <div class="row row-pb-md">
            <?php 
                foreach ($product as $i):
            ?>

            <div class="col-md-3 col-lg-3 mb-4 text-center">
                <div class="product-entry border">
                    <a href="?c=product&a=detail&id=<?php echo $i['mahh'];?>" class="prod-img">
                        <img src="/php2/public/images/<?php echo $i['hinh'];?>" class="img-fluid" alt="Free html5 bootstrap 4 template">
                    </a>
                    <div class="desc">
                        <h2><a href="?c=product&a=detail&id=<?php echo $i['mahh'];?>"><?php echo $i['tenhh'];?></a></h2>
                        <span class="price"><?php echo number_format($i['dongia']);?> VNĐ</span>
                    </div>
                </div>
            </div>
            <?php endforeach;?>
        </div>

        <div class="row">
            <div class="col-md-12 text-center">
                <div class="block-27">
                <ul>
                    <!-- <li><a href="#"><i class="ion-ios-arrow-back"></i></a></li> -->
                    <!--  -->
                    <?php 
                        for ($i = 1; $i <= $totalPage ; $i++):
                    ?>
                        <?php 
                            if($i == $cPage):
                        ?>
                            <li class="active"><span><?php echo $i;?></span></li>
                        <?php else:?>
                            <li><a href="?c=product&a=category&id=<?php echo $_GET['id'];?>&page=<?php echo $i;?>"><?php echo $i;?></a></li>
                        <?php endif;?>
                    <?php endfor;?>
                    <!-- <li><a href="#"><i class="ion-ios-arrow-forward"></i></a></li> -->
                </ul>
            </div>
            </div>
        </div>
    </div>
</div>

<div class="colorlib-partner">
    <div class="container">
        <div class="row">
            <div class="col-sm-8 offset-sm-2 text-center colorlib-heading colorlib-heading-sm">
                <h2>Trusted Partners</h2>
            </div>
        </div>
        <div class="row">
            <div class="col partner-col text-center">
                <img src="/php2/public/images/brand-1.jpg" class="img-fluid" alt="Free html4 bootstrap 4 template">
            </div>
            <div class="col partner-col text-center">
                <img src="/php2/public/images/brand-2.jpg" class="img-fluid" alt="Free html4 bootstrap 4 template">
            </div>
            <div class="col partner-col text-center">
                <img src="/php2/public/images/brand-3.jpg" class="img-fluid" alt="Free html4 bootstrap 4 template">
            </div>
            <div class="col partner-col text-center">
                <img src="/php2/public/images/brand-4.jpg" class="img-fluid" alt="Free html4 bootstrap 4 template">
            </div>
            <div class="col partner-col text-center">
                <img src="/php2/public/images/brand-5.jpg" class="img-fluid" alt="Free html4 bootstrap 4 template">
            </div>
        </div>
    </div>
</div>
