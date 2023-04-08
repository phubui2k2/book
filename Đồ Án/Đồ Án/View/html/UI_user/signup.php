<!DOCTYPE html>
<html lang="vi">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Signup</title>
    <!-- ======= Styles ====== -->
      <!--  icon -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.2/css/all.min.css" />
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.4.1/font/bootstrap-icons.css" />
     <!--  style -->
    <link rel="stylesheet" type="text/css" href="../../css/UI_user/style_navbar_homepage.css">
    <link rel="stylesheet" type="text/css" href="../../css/UI_user/style_login.css">
    <link rel="stylesheet" type="text/css" href="../../bootstrap/css/bootstrap.min.css">
    <!-- ======= Scripts ====== -->
    

</head>
<body>
    <?php
        if (!isset($firstNameErr)) $firstNameErr='first';
        if (!isset($lastNameErr )) $lastNameErr ='first';
        if (!isset($phoneErr )) $phoneErr ='first';
        if (!isset($emailErr )) $emailErr ='first';
        if (!isset($passwordErr )) $passwordErr ='first';
        if (!isset($password2Err )) $password2Err ='first';
    ?>
    <div class="container-fluid">
        <div class="row align-items-center py-3 pd_mobile">
            <div class="col-lg-3 d-none d-lg-block px-5">
                <a href="home_page.html">
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
                      <a href="" class="btn border btn-outline-secondary" style="margin-right: 1%; border-radius: 0;">
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
            <div class="col-lg-12">
                <nav class="navbar navbar-expand-lg bg-light navbar-light p-2" style="height: 62px;">
                    <a href="" class="d-block d-lg-none">
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
                            <a href="home_page.html" class="nav-item nav-link">Trang Chủ</a>
                            <a href="#" class="nav-item nav-link">Sản Phẩm</a>
                            <a href="#" class="nav-item nav-link">Tin Tức</a>
                            <a href="#" class="nav-item nav-link">Liên Hệ</a>
                            <a href="login_manager.html" class="nav-item nav-link">Quản Trị Viên</a>
                        </div>
                        <div class="navbar-nav ml-auto nav_main">
                            <div>
                                <a href="login.html" class="nav-item nav-link">
                                    <i class="bi bi-person text-dark"></i>
                                    Đăng Nhập
                                </a>
                            </div>
                            <div>
                                <a href="signup.html" class="nav-item nav-link active">
                                    <i class="bi bi-person-plus text-dark"></i>
                                    Đăng Ký
                                </a>
                            </div>
                        </div>
                    </div>
                </nav>
                <div class="row mt-3 px-3">
                    <nav aria-label="breadcrumb">
                        <ol class="breadcrumb">
                          <li class="breadcrumb-item"><a href="home_page.html">Trang chủ</a></li>
                          <li class="breadcrumb-item active" aria-current="page">Đăng Ký</li>
                        </ol>
                    </nav>
                </div>
                <div class="row bg_login1">
                    <div class="col-sm-12">
                        <div class="frame_login">
                                <h4 style="font-weight: 700;">REGISTER TO YOUR ACCOUNT</h4>
                                <h6 class="mt-3 text-muted text-white" style="font-weight: 500;">Enter your details to register</h6>
                                <form>
                                    <div class="row">
                                        <div class="col-sm-6">
                                            <div class="form-group mt-5">
                                                <label for="firstname" style="font-weight: 700;">HỌ</label>
                                                <div class="input-group">
                                                    <input type="text" class="form-control mt-3" 
                                                            id="firstname" style="border-radius: 0; padding-left: 40px;" 
                                                            placeholder="Enter your first name"
                                                            name="firstname">
                                                    <span class="input-group-addon" 
                                                            style="position: absolute; left: 15px; top: 23px;">
                                                            <i class="fa fa-user text-success"></i>
                                                    </span>
                                                </div>
                                                <?php
                                                    switch ($firstNameErr) {
                                                        case "length": echo "Họ và tên phải có độ dài từ 2-30 ký tự";
                                                            break;
                                                        default: break;
                                                    }
                                                ?>
                                            </div>
                                            <div class="form-group mt-3">
                                                <label for="phonenumber" style="font-weight: 700;">SỐ ĐIỆN THOẠI</label>
                                                <div class="input-group">
                                                    <input type="tel" class="form-control mt-3" 
                                                            id="phonenumber" style="border-radius: 0; padding-left: 40px;" 
                                                            placeholder="Enter your phone number"
                                                            name="phonenumber">
                                                    <span class="input-group-addon" 
                                                            style="position: absolute; left: 15px; top: 23px;">
                                                            <i class="fa fa-phone text-success"></i>
                                                    </span>
                                                </div>
                                                <?php
                                                    switch ($phoneErr) {
                                                        case "missing": echo "Xin hãy nhập số điện thoại!";
                                                            break;
                                                        case 'hasUsed':
                                                            echo "Số điện thoại đã được sử dụng";
                                                            break;
                                                        default: break;
                                                    }
                                                ?>
                                            </div> 
                                            <div class="form-group mt-3">
                                                <label for="password" style="font-weight: 700;">MẬT KHẨU</label>
                                                <div class="input-group">
                                                    <input type="password" class="form-control mt-3" 
                                                            id="password" style="border-radius: 0; padding-left: 40px;"
                                                            placeholder="Enter your password"
                                                            name="password">
                                                    <span class="input-group-addon" 
                                                            style="position: absolute; left: 15px; top: 23px;">
                                                            <i class="fa fa-lock text-success"></i>
                                                    </span>
                                                </div>
                                                <?php
                                                    switch ($passwordErr) {
                                                        case "length": echo "Mật khẩu phải có 8-16 ký tự";
                                                            break;
                                                        default: break;
                                                    }
                                                ?>
                                            </div>
                                        </div>
                                        <div class="col-sm-6">
                                            <div class="form-group mt-5">
                                                <label for="lastname" style="font-weight: 700;">TÊN</label>
                                                <div class="input-group">
                                                    <input type="text" class="form-control mt-3" 
                                                            id="lastname" style="border-radius: 0; padding-left: 40px;" 
                                                            placeholder="Enter your last name"
                                                            name="lastname">
                                                    <span class="input-group-addon" 
                                                            style="position: absolute; left: 15px; top: 23px;">
                                                            <i class="fa fa-user text-success"></i>
                                                    </span>
                                                </div>
                                                <?php
                                                    switch ($lastNameErr) {
                                                        case "length": echo "Họ và tên phải có độ dài từ 2-30 ký tự";
                                                            break;
                                                        default: break;
                                                    }
                                                ?>
                                            </div>
                                            <div class="form-group mt-3">
                                                <label for="email" style="font-weight: 700;">EMAIL</label>
                                                <div class="input-group">
                                                    <input type="email" class="form-control mt-3" 
                                                            id="email" style="border-radius: 0; padding-left: 40px;"
                                                            placeholder="Enter your email"
                                                            name="email">
                                                    <span class="input-group-addon" 
                                                            style="position: absolute; left: 15px; top: 23px;">
                                                            <i class="fa fa-envelope text-success"></i>
                                                    </span>
                                                </div>
                                                <?php
                                                    switch ($emailErr) {
                                                        case "missing": echo "Xin hãy nhập số email!";
                                                            break;
                                                        case 'hasUsed':
                                                            echo "Email đã được sử dụng";
                                                            break;
                                                        default: break;
                                                    }
                                                ?>
                                            </div>
                                            <div class="form-group mt-3">
                                                <label for="password" style="font-weight: 700;">XÁC NHẬN MẬT KHẨU</label>
                                                <div class="input-group">
                                                    <input type="password" class="form-control mt-3" 
                                                            id="password" style="border-radius: 0; padding-left: 40px;"
                                                            placeholder="Enter your password"
                                                            name="password">
                                                    <span class="input-group-addon" 
                                                            style="position: absolute; left: 15px; top: 23px;">
                                                            <i class="fa fa-lock text-success"></i>
                                                    </span>
                                                </div>
                                                <?php
                                                    switch ($password2Err) {
                                                        case "matching": echo "Mật khẩu không khớp nhau!";
                                                            break;
                                                        default: break;
                                                    }
                                                ?>
                                            </div>
                                        </div>
                                    </div>
                                    <button type="submit" class="btn btn-danger mt-4" 
                                            style="min-width: 120px; border-radius: 0;">
                                            Đăng ký
                                    </button>
                                </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <footer>
        
    </footer>
    <!-- ======= Scripts ====== -->
    <script src="../../script/user_navbar.js"></script>
    <script src="../../script/login_form.js"></script>
</body>
</html>