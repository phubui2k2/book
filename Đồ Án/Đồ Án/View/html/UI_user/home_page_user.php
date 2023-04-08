<!DOCTYPE html>
<html lang="vi">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Home page</title>
    <!-- ======= Styles ====== -->
      <!--  icon -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.2/css/all.min.css" />
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.4.1/font/bootstrap-icons.css" />
     <!--  style -->
    <link rel="stylesheet" type="text/css" href="../../css/UI_user/style_navbar_homepage.css">
    <link rel="stylesheet" type="text/css" href="../../bootstrap/css/bootstrap.min.css">
    <!-- ======= Scripts ====== -->
    <script src="../../bootstrap/js/bootstrap.min.js"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.bundle.min.js"></script>
    <script>
</head>
<body>
    <?php
    //decode json
        $userObj = json_decode($userObj);
    ?>
    <div class="container-fluid">
        <div class="row align-items-center py-3 pd_mobile">
            <div class="col-lg-3 d-none d-lg-block px-5">
                <a href="../UI_user/home_page_user.html">
                    <img src="../../images/logo.png" style="width: 50%;" alt="logo">
                </a>
            </div>
            <div class="col-lg-9">
                <div class="row">
                    <div class="col-tablet-7 col-mobile-5">
                      <form class="form-inline" style="margin-right: 1%;">
                        <div class="input-group">
                          <input type="text" class="form-control" placeholder="Search for products" style="border-radius: 0;">
                          <div class="input-group-append">
                            <button class="btn border btn-outline-secondary" type="button">
                              <i class="fa fa-search"></i>
                            </button>
                          </div>
                        </div>
                      </form>
                    </div>
                    <div class="col-tablet-3 col-mobile-5 navbar_ic d-flex justify-content-end">
                      <a href="#" class="btn border btn-outline-secondary" style="margin-right: 1%; border-radius: 0;">
                        <i class="fas fa-heart"></i>
                        <span class="badge">0</span>
                      </a>
                      <a href="" class="btn border btn-outline-secondary" style="margin-right: 1%; border-radius: 0;">
                        <i class="fas fa-shopping-cart"></i>
                        <span class="badge">0</span>
                      </a>
                    </div>
                </div>
            </div>
        </div>
    </div>
    
    <div class="container-fluid">
        <div class="row border-top px-3">
            <div class="col-lg-3 d-none d-lg-block navbar_left">
                <a class="btn d-flex align-items-center justify-content-between" 
                    data-toggle="collapse" href="#navbar-vertical" 
                    style="height: 65px; padding: 0 30px;">
                    <h6 class="m-0">Thể Loại Sách</h6>
                    <i class="fa fa-angle-down text-dark"></i>
                </a>
                <nav class="collapse show navbar" id="navbar-vertical" style="margin-top: -9px;">
                    <div class="list-group w-100">
                        <a class="list-group-item list-group-item-action" data-toggle="list" href="#tab1">Truyện, Tiểu Thuyết</a>
                        <a class="list-group-item list-group-item-action" data-toggle="list" href="#tab2">Sách Giáo Trình</a>
                        <a class="list-group-item list-group-item-action" data-toggle="list" href="#tab3">Tạp Chí</a>
                        <a class="list-group-item list-group-item-action" data-toggle="list" href="#tab4">Truyện Tranh</a>
                        <a class="list-group-item list-group-item-action" data-toggle="list" href="#tab5">Từ Điển</a>
                    </div>
                </nav>
            </div>
            <div class="col-lg-9">
                <!-- Navbar Start -->
                <nav class="navbar navbar-expand-lg bg-light navbar-light p-2">
                    <a href="../UI_user/home_page_user.html" class="d-block d-lg-none">
                        <img src="../../images/logo.png" style="width: 100px;" alt="logo">
                    </a>
                    <button type="button" 
                            class="navbar-toggler" 
                            data-toggle="collapse" 
                            data-target="#navbarCollapse"
                            style="border-radius: 0;">
                        <span class="navbar-toggler-icon"></span>
                    </button>
                    <div class="collapse navbar-collapse justify-content-between" id="navbarCollapse">
                        <div class="navbar-nav">
                            <a href="../UI_user/home_page_user.html" class="nav-item nav-link active">Trang Chủ</a>
                            <a href="#" class="nav-item nav-link">Sản Phẩm</a>
                            <a href="#" class="nav-item nav-link">Tin Tức</a>
                            <a href="#" class="nav-item nav-link">Liên Hệ</a>
                        </div>
                        <div class="navbar-nav ml-auto nav_main">
                            <div>
                                <a href="../UI_user/profile_user.html" class="nav-item nav-link">
                                    <div style="display: inline-block;">
                                        <div style="display: inline-block; margin-right: 10px;">
                                            <img src="<?php echo $userObj->avatar?>"" 
                                                style="width: 30px; height: 30px; border-radius: 50%; 
                                                        object-fit: cover; margin-bottom: 3px;" 
                                                alt="avatar">
                                        </div>
                                        <div style="display: inline-block; font-weight: 500; margin-top: 7px;">
                                            Chào, <?php echo $userObj->name;?>
                                        </div>
                                    </div>
                                </a>
                            </div>
                            <div>
                                <a href="../UI_user/home_page.html" class="nav-item nav-link">
                                    <i class="bi bi-box-arrow-right text-dark"></i>
                                    Đăng xuất
                                </a>
                            </div>
                        </div>
                    </div>
                </nav>
                <!-- Navbar End -->

                <!-- Sidebar None Large Start -->
                <div class="d-block d-lg-none navbar_left">
                    <a class="btn d-flex align-items-center justify-content-between" 
                        data-toggle="collapse" href="#navbar-vertical1" 
                        style="height: 60px; padding: 0 30px;">
                        <h6 class="m-0">Thể Loại Sách</h6>
                        <i class="fa fa-angle-down text-dark"></i>
                    </a>
                    <nav class="collapse show navbar" id="navbar-vertical1" style="margin-top: -9px;">
                        <div class="list-group w-100">
                            <a class="list-group-item list-group-item-action" data-toggle="list" href="#tab1">Truyện, Tiểu Thuyết</a>
                            <a class="list-group-item list-group-item-action" data-toggle="list" href="#tab2">Sách Giáo Trình</a>
                            <a class="list-group-item list-group-item-action" data-toggle="list" href="#tab3">Tạp Chí</a>
                            <a class="list-group-item list-group-item-action" data-toggle="list" href="#tab4">Truyện Tranh</a>
                            <a class="list-group-item list-group-item-action" data-toggle="list" href="#tab5">Từ Điển</a>
                        </div>
                    </nav>
                </div>
                <!-- Sidebar None End Start -->

                <div class="tab-content">
                    <!-- Tab HomePage -->
                    <div class="tab-pane active">
                        <div id="header-carousel" class="carousel slide" data-ride="carousel">
                            <div class="carousel-inner">
                                <div class="carousel-item active" style="height: 380px;">
                                    <img class="img-fluid" src="../../images/carousel-1.jpg" alt="carousel-1">
                                    <div class="carousel-caption d-none d-md-block">
                                        <div class="p-3" style="font-family:Impact, Haettenschweiler, 'Arial Narrow Bold', sans-serif">
                                            <h4 class="text-uppercase font-weight-large mb-3">10% Off Your First Order</h4>
                                            <h3 class="display-2 font-weight-bold mb-4">Variety Of Models</h3>
                                            <a href="#" class="btn btn-light py-2 px-3">Shop Now</a>
                                        </div>
                                    </div>
                                </div>
                                <div class="carousel-item" style="height: 380px;">
                                    <img class="img-fluid" src="../../images/carousel-2.jpg" alt="carousel-2">
                                    <div class="carousel-caption d-none d-md-block">
                                        <div class="p-3" style="font-family:Impact, Haettenschweiler, 'Arial Narrow Bold', sans-serif">
                                            <h4 class="text-uppercase font-weight-large mb-3">10% Off Your First Order</h4>
                                            <h3 class="display-2 font-weight-bold mb-4">Resonable Price</h3>
                                            <a href="#" class="btn btn-light py-2 px-3">Shop Now</a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <button class="carousel-control-prev" type="button" data-bs-target="#header-carousel" data-bs-slide="prev">
                                <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                                <span class="visually-hidden">Previous</span>
                            </button>
                            <button class="carousel-control-next" type="button" data-bs-target="#header-carousel" data-bs-slide="next">
                                <span class="carousel-control-next-icon" aria-hidden="true"></span>
                                <span class="visually-hidden">Next</span>
                            </button>
                        </div>
                    </div>
                    <!-- Tab Truyen, Tieu Thuyet -->
                    <div class="tab-pane" id="tab1">
                        123
                    </div>
                    <!-- Tab Giao Trinh -->
                    <div class="tab-pane" id="tab2">456</div>
                    <!-- Tab Tap Chi -->
                    <div class="tab-pane" id="tab3">789</div>
                    <!-- Tab Truyen Tranh -->
                    <div class="tab-pane" id="tab4">123</div>
                    <!-- Tab Tu Dien -->
                    <div class="tab-pane" id="tab5">456</div>
            </div>
        </div>
    </div>
    <!-- ======= Scripts ====== -->
    <script src="../../script/user_navbar.js"></script>
</body>
</html>