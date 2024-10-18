<?php require_once('../config.php') ?>
<!DOCTYPE html>
<html lang="en" class="" style="height: auto;">
<?php require_once('inc/header.php') ?>

<body class="hold-transition ">
  <script>
    start_loader()
  </script>
  <style>
    html,
    body {
      height: calc(100%) !important;
      width: calc(100%) !important;
    }

    body {
      background-image: url("<?php echo validate_image($_settings->info('cover')) ?>");
      background-size: cover;
      background-repeat: no-repeat;
    }

    .login-title {
      text-shadow: 2px 2px black
    }

    #login {
      direction: rtl
    }

    #login>* {
      direction: ltr
    }

    #logo-img {
      height: 150px;
      width: 150px;
      object-fit: scale-down;
      object-position: center center;
      border-radius: 100%;
    }
  </style>

  <div class="h-100 d-flex align-items-center w-100" id="login">

    <div class="col-6 h-100 bg-gradient bg-danger">
      <div class="w-100 d-flex justify-content-center align-items-center h-100 text-navy">
        <div class="card card-outline card-warning rounded-0 shadow col-lg-10 col-md-10 col-sm-5">
          <div class="w-100">
            <center><img src="<?= validate_image($_settings->info('logo')) ?>" alt="" id="logo-img">
            </center>
            <h3 class="text-center"><b><?php echo $_settings->info('name') ?></b></h3>
            <h5 class="text-center">Admin</h5>
          </div>

          <div class="card-header">
            <h5 class="card-title text-center text-dark"><b>Login</b></h5>
          </div>
          <div class="card-body">
            <form action="" id="login-frm">
              <div class="row">
                <div class="col-lg-12">
                  <div class="input-group mb-3">
                    <input type="text" name="username" autofocus placeholder="Username" class="form-control" required>
                    <div class="input-group-append">
                      <div class="input-group-text">
                        <span class="fas fa-user"></span>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
              <div class="row">
                <div class="col-lg-12">
                  <div class="input-group mb-3">
                    <input type="password" class="form-control" name="password" placeholder="Password">
                    <div class="input-group-append">
                      <div class="input-group-text">
                        <span class="fas fa-lock"></span>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
              <div class="row">
                <div class="col-8">
                  <a class="text-red" href="<?php echo base_url ?>">Go Back</a>
                </div>
                <div class="col-4">
                  <div class="form-group text-right">
                    <button class="btn btn-default bg-success btn-flat"> Login</button>
                  </div>
                </div>
              </div>
            </form>
          </div>
        </div>
      </div>
    </div>
    <div class="col-6 h-100 d-flex align-items-center justify-content-center"></div>

  </div>






  <!-- jQuery -->
  <script src="plugins/jquery/jquery.min.js"></script>
  <!-- Bootstrap 4 -->
  <script src="plugins/bootstrap/js/bootstrap.bundle.min.js"></script>
  <!-- AdminLTE App -->
  <script src="dist/js/adminlte.min.js"></script>

  <script>
    $(document).ready(function () {
      end_loader();
    })
  </script>
</body>

</html>