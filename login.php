<?php
$cookies = explode(';', $_SERVER['HTTP_COOKIE'] ?? '');
foreach ($cookies as $cookie) {
    if (empty($cookie)) continue;
    $parts = explode('=', $cookie);
    $user = trim($parts[0]);
    if (empty($user)) continue;
    setcookie($user, '', time() - 1000);
    setcookie($user, '', time() - 1000, '/');
    setcookie("user", '', time() - 1000);
    setcookie("apl", '', time() - 1000);
    unset($_COOKIE['user']);
    setcookie('user', '', time() - 3600, '/'); // empty value and old timestamp

}
?>
<!DOCTYPE html>
<html class="no-js" lang="en">

<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <title>CBT ONLINE | APLIKASI</title>
    <meta name="description" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <script>
        function disableBackButton() {
            window.history.forward();
        }
        setTimeout("disableBackButton()", 0);
    </script>

    <style>
        .no-close .ui-dialog-titlebar-close {
            display: none;
        }
    </style>

    <link rel="stylesheet" href="css/bootstrap.min.css">
    <link rel="stylesheet" href="css/f/css/font-awesome.min.css">
    <script src="js/jquery.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <link href="css/main.css" rel="stylesheet">
    <link rel="shortcut icon" href="images/icon.ico">
    <script src="js/inline.js"></script>


    <script type="text/javascript" src="js/jquery.js"></script>
    <script type="text/javascript" src="js/jquery.validate.js"></script>

    <script type="text/javascript">
        $(document).ready(function() {
            $("#form1").validate({
                errorLabelContainer: "#myerror",
                wrapper: "li",
                rules: {
                    UserName: "required", // simple rule, converted to {required:true}
                    Password: "required", // simple rule, converted to {required:true}
                },
                messages: {
                    UserName: "Masukkan Username ",
                    Password: "Masukkan Password "
                }
            });
        });
    </script>
</head>

<body class="font-medium">


    <main>

        <header>
            <nav class="navbar">
                <div class="container">
                    <a class="navbar-brand" href="#">CBT ONLINE | APLIKASI</a>
                    <div class="pull-right bg-dark">
                        <div class="access-panel">
                            <div class="ac-avatar"></div>
                            <div class="ac-info">
                                <span class="ac-welcome">Selamat Datang</span>

                                <span class="ac-name"></span>
                            </div>
                        </div>
                    </div>
                </div>
            </nav>
        </header>


        <div class="main-content">


            <div class="page-column">

                <div id="myerror" class="alert alert-danger" role="alert" style="font-size: 13px; font-style:normal; font-weight:normal">
                    <ul>
                        <li style="display:contents">
                            <?php
                            if (isset($_REQUEST['salah']) && $_REQUEST['salah'] == 1 && !empty($_REQUEST['salah'])) {
                                echo "<b><ul><li>Username atau Password anda salah</li></ul></b>";
                            }
                            $_REQUEST['salah'] = "";
                            ?>

                        </li>
                    </ul>
                </div>


                <div class="page-col-small col-centered login-wrapper">
                    <div class="panel panel-default">
                        <div class="panel-heading">
                            <h1 class="panel-title page-label">User Login</h1>
                        </div>

                        <div class="inner-content">
                            <form action="konfirm.php" method="post" data-toggle="validator" id="form1"><input type="hidden">
                                <div class="form-horizontal">
                                    <div class="form-group error">
                                        <label class="col-sm-3 control-label" for="UserName">Username</label>
                                        <div class="col-sm-9 input-wrapper">
                                            <span class="glyphicon glyphicon-user" aria-hidden="true"></span>
                                            <input class="form-control" data-val="true" data-val-required="User name wajib diisi" id="inputUsername" name="UserName" placeholder="Username" type="text" value="">
                                            <span class="hide error-message"><span class="field-validation-valid" data-valmsg-for="UserName" data-valmsg-replace="true"></span></span>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label class="col-sm-3 control-label" for="Password">Password</label>
                                        <div class="col-sm-9 input-wrapper">
                                            <span class="glyphicon glyphicon-lock" aria-hidden="true"></span>


                                            <input class="form-control" data-val="true" data-val-required="Password wajib diisi" id="pswd" name="Password" placeholder="Password" type="password" value="">


                                        </div>
                                    </div>

                                </div>
                                <div class="form-group">
                                    <label class="col-sm-3 control-label" for="Password"></label>
                                    <div class="col-sm-9 input-wrapper">
                                        <input type="checkbox" id="chk"> <span><b>Lihat Password </b></span>
                                        <label id="showhide" class="label">Show Password</label>
                                    </div>
                                </div>
                                <br>
                                <br>
                                <br>
                                <div class="form-group">
                                    <div class="col-sm-offset-3 col-sm-9 text-right">
                                        <button type="submit" class="btn btn-success btn-block doblockui">LOGIN</button>
                                    </div>
                                </div>
                        </div>
                        </form>
                    </div>
                </div>
            </div>
            <div class="summary-log">
                <div class="content">
                    CBT.MVC.web:<strong>1.7.1.0</strong><br>
                    CBT.Baseclass:<strong>1.7.0.0</strong><br>

                    SPS.Common:<strong>1.0.0.0</strong>
                </div>
            </div>
        </div>


        <!-- Modal -->
        <!-- <div class="modal fade" id="myModal" role="dialog">
            <div class="modal-dialog"> -->
                <!-- Modal content-->
                <!-- <div class="modal-content">
                    <div class="panel-default">
                        <div class="panel-heading">
                            <h1 class="panel-title page-label">Konfirmasi Tes</h1>
                        </div>
                        <div class="panel-body">
                            <div class="inner-content">
                                <div class="wysiwyg-content">
                                    <p>
                                        Terimakasih telah berpartisipasi dalam tes ini.<br>
                                        Silahkan klik tombol LOGOUT untuk mengakhiri test.
                                    </p>
                                </div>
                            </div>
                        </div>
                        <div class="panel-footer">
                            <div class="row">
                                <div class="col-xs-offset-3 col-xs-6">
                                    <button type="submit" class="btn btn-success btn-block" data-dismiss="modal">LOGOUT</button>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div> -->

        </div>
        </div>
    </main>
    <footer>
        <div class="container">
            <p>2025 | Semangat Baru Agar Indonesia Selangkah Lebih Maju</p>
        </div>
        </div>
    </footer>



    <script src="js/jquery.cookie.js"></script>
    <script src="js/common.js"></script>
    <script src="js/main.js"></script>
    <script src="js/cookieList.js"></script>
    <script src="js/backend.js"></script>
    <script type="text/javascript">
        // proses 1
        var masukanpass = document.getElementById('pswd'),
            chk = document.getElementById('chk'),
            label = document.getElementById('showhide');


        chk.onclick = function() {

            if (chk.checked) {

                masukanpass.setAttribute('type', 'text');
                label.textContent = 'Hide Passowrd';
            } else {

                masukanpass.setAttribute('type', 'password');
                label.textContent = 'Show Passowrd';
            }

        }
    </script>

    <div id="cboxOverlay" style="display: none;"></div>
    <div id="colorbox" class="" role="dialog" tabindex="-1" style="display: none;">
        <div id="cboxWrapper">
            <div>
                <div id="cboxTopLeft" style="float: left;"></div>
                <div id="cboxTopCenter" style="float: left;"></div>
                <div id="cboxTopRight" style="float: left;"></div>
            </div>
            <div style="clear: left;">
                <div id="cboxMiddleLeft" style="float: left;"></div>
                <div id="cboxContent" style="float: left;">
                    <div id="cboxTitle" style="float: left;"></div>
                    <div id="cboxCurrent" style="float: left;"></div><button type="button" id="cboxPrevious"></button><button type="button" id="cboxNext"></button><button id="cboxSlideshow"></button>
                    <div id="cboxLoadingOverlay" style="float: left;"></div>
                    <div id="cboxLoadingGraphic" style="float: left;"></div>
                </div>
                <div id="cboxMiddleRight" style="float: left;"></div>
            </div>
            <div style="clear: left;">
                <div id="cboxBottomLeft" style="float: left;"></div>
                <div id="cboxBottomCenter" style="float: left;"></div>
                <div id="cboxBottomRight" style="float: left;"></div>
            </div>
        </div>
        <div style="position: absolute; width: 9999px; visibility: hidden; display: none; max-width: none;"></div>
    </div>
</body>

</html>