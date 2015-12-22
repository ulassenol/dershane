<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="giris.aspx.cs" Inherits="Dershane.giris" %>

<!DOCTYPE html>
<!-- 
Template Name: Metronic - Responsive Admin Dashboard Template build with Twitter Bootstrap 3.3.4
Version: 4.0
Author: KeenThemes
Website: http://www.keenthemes.com/
Contact: support@keenthemes.com
Follow: www.twitter.com/keenthemes
Like: www.facebook.com/keenthemes
Purchase: http://themeforest.net/item/metronic-responsive-admin-dashboard-template/4021469?ref=keenthemes
License: You must have a valid license purchased only from themeforest(the above link) in order to legally use the theme for your project.
-->
<!--[if IE 8]> <html lang="en" class="ie8 no-js"> <![endif]-->
<!--[if IE 9]> <html lang="en" class="ie9 no-js"> <![endif]-->
<!--[if !IE]><!-->
<html lang="en">
<!--<![endif]-->
<!-- BEGIN HEAD -->
<head>
    <meta charset="utf-8" />
    <title>Giriş</title>
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta content="width=device-width, initial-scale=1.0" name="viewport" />
    <meta http-equiv="Content-type" content="text/html; charset=utf-8">
    <meta content="" name="description" />
    <meta content="" name="author" />
    <!-- BEGIN GLOBAL MANDATORY STYLES -->
    <link href="http://fonts.googleapis.com/css?family=Open+Sans:400,300,600,700&subset=all" rel="stylesheet" type="text/css" />
    <link href="assets/global/plugins/icons/font-awesome/4.5.0/css/font-awesome.min.css" rel="stylesheet" />
    <link href="assets/global/plugins/icons/simple-line-icons/simple-line-icons.min.css" rel="stylesheet" />
    <link href="assets/global/plugins/bootstrap/3.3.6/css/bootstrap.min.css" rel="stylesheet" />
    <link href="assets/global/plugins/uniform/css/uniform.default.css" rel="stylesheet" />
    <!-- END GLOBAL MANDATORY STYLES -->
    <!-- BEGIN PAGE LEVEL STYLES -->
    <link href="assets/global/plugins/select2/select2.css" rel="stylesheet" />
    <link href="assets/admin/pages/css/login3.css" rel="stylesheet" />
    <!-- END PAGE LEVEL SCRIPTS -->
    <!-- BEGIN THEME STYLES -->
    <link href="assets/global/css/components.css" id="style_components" rel="stylesheet" />
    <link href="assets/global/css/plugins.css" rel="stylesheet" />
    <link href="assets/admin/layout/css/layout.css" rel="stylesheet" />
    <link href="assets/admin/layout/css/themes/darkblue.css" rel="stylesheet" id="style_color" />
    <link href="assets/admin/layout/css/custom.css" rel="stylesheet" />
    <!-- END THEME STYLES -->
    <link rel="shortcut icon" href="favicon.ico" />
</head>
<!-- END HEAD -->
<!-- BEGIN BODY -->
<body class="login">
    <!-- BEGIN LOGO -->
    <div class="logo">
        <a href="index.html">
            <img src="../../assets/admin/layout/img/logo-big.png" alt="" />
        </a>
    </div>
    <!-- END LOGO -->
    <!-- BEGIN SIDEBAR TOGGLER BUTTON -->
    <div class="menu-toggler sidebar-toggler">
    </div>
    <!-- END SIDEBAR TOGGLER BUTTON -->
    <!-- BEGIN LOGIN -->
    <div class="content">
        <!-- BEGIN LOGIN FORM -->
        <form id="form1" runat="server" class="login-form" method="post">
            <h3 class="form-title">Hesabın ile giriş yap</h3>
            <div class="alert alert-danger display-hide">
                <button class="close" data-close="alert"></button>
                <span>Kullanıcı adı ve şifre girilmesi zorunlu !</span>
            </div>
            <div class="form-group">
                <!--ie8, ie9 does not support html5 placeholder, so we just show field title for that-->
                <label class="control-label visible-ie8 visible-ie9">Username</label>
                <div class="input-icon">
                    <i class="fa fa-user"></i>
                    <asp:TextBox ID="txtKullaniciAdi" runat="server" CssClass="form-control placeholder-no-fix" type="text" placeholder="Kullanıcı Adı" name="username" required="required" />
                </div>
            </div>
            <div class="form-group">
                <label class="control-label visible-ie8 visible-ie9">Password</label>
                <div class="input-icon">
                    <i class="fa fa-lock"></i>
                    <asp:TextBox ID="txtSifre" runat="server" CssClass="form-control placeholder-no-fix" type="password" autocomplete="off" placeholder="Şifre" name="password" required="required" />
                </div>
            </div>
            <div class="row">
                <div class="col-md-6 pull-left">
                    <asp:DropDownList ID="ddlYetki" CssClass="form-control" runat="server">
                        <asp:ListItem Text="Öğrenci" Value="ogrenci" />
                        <asp:ListItem Text="Öğretmen" Value="ogretmen" />
                        <asp:ListItem Text="Veli" Value="veli" />
                        <asp:ListItem Text="Yönetici" Value="yonetici" />
                    </asp:DropDownList>
                </div>
                <div class="col-md-3 col-md-push-2">
                    <asp:LinkButton ID="btnGiris" OnClick="btnGiris_Click" CssClass="btn green-haze" runat="server">Giriş</asp:LinkButton>
                </div>
            </div>
            <div class="forget-password">
                <h4>Şifreni mi unuttun ?</h4>
                <p>
                    endişelenme, şifreni sıfırlamak için <a href="javascript:;" id="forget-password">buraya</a> tıkla
                </p>
            </div>
        </form>
        <!-- END LOGIN FORM -->
        <!-- BEGIN FORGOT PASSWORD FORM -->
        <form class="forget-form" method="post">
            <h3>Şifre Sıfırla</h3>
            <p>
                Şifrenizi sıfırlamak için aşağıdaki alana e-posta adresinizi girin.
            </p>
            <div class="form-group">
                <div class="input-icon">
                    <i class="fa fa-envelope"></i>
                    <input class="form-control placeholder-no-fix" type="text" autocomplete="off" placeholder="Email" name="email" />
                </div>
            </div>
            <div class="form-actions">
                <button type="button" id="back-btn" class="btn">
                    <i class="m-icon-swapleft"></i>Back
                </button>
                <button type="submit" class="btn green-haze pull-right">
                    Submit <i class="m-icon-swapright m-icon-white"></i>
                </button>
            </div>
        </form>
        <!-- END FORGOT PASSWORD FORM -->
    </div>
    <!-- END LOGIN -->
    <!-- BEGIN COPYRIGHT -->
    <div class="copyright">
        2014 &copy; Metronic. Admin Dashboard Template.
    </div>
    <!-- END COPYRIGHT -->
    <!-- BEGIN JAVASCRIPTS(Load javascripts at bottom, this will reduce page load time) -->
    <!-- BEGIN CORE PLUGINS -->
    <!--[if lt IE 9]>
<script src="../../assets/global/plugins/respond.min.js"></script>
<script src="../../assets/global/plugins/excanvas.min.js"></script> 
<![endif]-->
    <script src="assets/global/plugins/jquery.min.js"></script>
    <script src="assets/global/plugins/jquery-migrate.min.js"></script>
    <script src="assets/global/plugins/bootstrap/3.3.6/js/bootstrap.min.js"></script>
    <script src="assets/global/plugins/jquery.blockui.min.js"></script>
    <script src="assets/global/plugins/uniform/jquery.uniform.min.js"></script>
    <script src="assets/global/plugins/jquery.cokie.min.js"></script>
    <!-- END CORE PLUGINS -->
    <!-- BEGIN PAGE LEVEL PLUGINS -->
    <script src="assets/global/plugins/jquery-validation/js/jquery.validate.js"></script>
    <script src="assets/global/plugins/select2/select2.min.js"></script>
    <!-- END PAGE LEVEL PLUGINS -->
    <!-- BEGIN PAGE LEVEL SCRIPTS -->
    <script src="assets/global/scripts/metronic.js"></script>
    <script src="assets/admin/layout/scripts/layout.js"></script>
    <script src="assets/admin/layout/scripts/demo.js"></script>
    <script src="assets/admin/pages/scripts/login.js"></script>
    <!-- END PAGE LEVEL SCRIPTS -->
    <script>
        jQuery(document).ready(function () {
            Metronic.init(); // init metronic core components
            Layout.init(); // init current layout
            Login.init();
            Demo.init();
        });
    </script>
    <!-- END JAVASCRIPTS -->
</body>
<!-- END BODY -->
</html>
