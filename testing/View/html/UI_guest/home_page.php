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
    <link rel="stylesheet" type="text/css" href="View/css/UI_user/style_navbar_homepage.css">
    <link rel="stylesheet" type="text/css" href="View/bootstrap/css/bootstrap.min.css">
    <!-- ======= Scripts ====== -->
    <script src="View/bootstrap/js/bootstrap.min.js"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.bundle.min.js"></script>
    <script>
        function loadXMLDoc(link, id)
        {
            $.ajax({
                // The link we are accessing.
                url: link,
                    
                // The type of request.
                type: "get",
                    
                // The type of data that is getting returned.
                dataType: "html",
                success: function( strData ){
                    document.getElementById(id).innerHTML = strData;
                    // console.log("do")
                    const items = document.querySelectorAll(".carousel-menu");
                    items.forEach((el) => {
                        const minPerSlide = 4
                        let next = el.nextElementSibling
                        for (var i=1; i<minPerSlide; i++) {
                            if (!next) {
                                // wrap carousel by using first child
                                next = items[0]
                                console.log([el])
                            }
                            let cloneChild = next.cloneNode(true)
                            el.appendChild(cloneChild.children[0])
                            next = next.nextElementSibling
                        }
                    })
                }
            });
        }
    </script>

</head>
<body>
    <div class="container-fluid">
        <div class="row align-items-center py-3 pd_mobile">
            <div class="col-lg-3 d-none d-lg-block px-5">
                <a href="index.php?controller=guest&action=home_page">
                    <img src="View/images/logo.png" style="width: 50%;" alt="logo">
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
                    style="height: 60px; padding: 0 30px;">
                    <h6 class="m-0">Categories</h6>
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
                    <a href="index.php?controller=guest&action=home_page" class="d-block d-lg-none">
                        <img src="View/images/logo.png" style="width: 100px;" alt="logo">
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
                            <a href="index.php?controller=guest&action=home_page" class="nav-item nav-link active">Trang Chủ</a>
                            <a href="#" class="nav-item nav-link">Sản Phẩm</a>
                            <a href="#" class="nav-item nav-link">Tin Tức</a>
                            <a href="#" class="nav-item nav-link">Liên Hệ</a>
                            <a href="index.php?controller=manager&action=login" class="nav-item nav-link">Quản Trị Viên</a>
                        </div>
                        <div class="navbar-nav ml-auto nav_main">
                            <div>
                                <a href="index.php?controller=user&action=login" class="nav-item nav-link">
                                    <i class="bi bi-person text-dark"></i>
                                    Đăng Nhập
                                </a>
                            </div>
                            <div>
                                <a href="index.php?controller=user&action=signup" class="nav-item nav-link">
                                    <i class="bi bi-person-plus text-dark"></i>
                                    Đăng Ký
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
                                    <img class="img-fluid" src="View/images/carousel-1.jpg" alt="carousel-1">
                                    <div class="carousel-caption d-none d-md-block">
                                        <div class="p-3" style="font-family:Impact, Haettenschweiler, 'Arial Narrow Bold', sans-serif">
                                            <h4 class="text-uppercase font-weight-large mb-3">10% Off Your First Order</h4>
                                            <h3 class="display-2 font-weight-bold mb-4">Variety Of Models</h3>
                                            <a href="#" class="btn btn-light py-2 px-3">Shop Now</a>
                                        </div>
                                    </div>
                                </div>
                                <div class="carousel-item" style="height: 380px;">
                                    <img class="img-fluid" src="View/images/carousel-2.jpg" alt="carousel-2">
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
    <script src="View/script/user_navbar.js"></script>
</body>
</html>