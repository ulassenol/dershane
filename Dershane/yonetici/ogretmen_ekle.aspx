﻿<%@ Page Title="" Language="C#" MasterPageFile="~/yonetici/ana.Master" AutoEventWireup="true" CodeBehind="ogretmen_ekle.aspx.cs" Inherits="Dershane.yonetici.ogretmen_ekle" %>

<asp:Content ID="Content1" ContentPlaceHolderID="baslik" runat="server">
    Öğretmen Ekle
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="sayfaIciStil" runat="server">
    <link href="../assets/global/plugins/bootstrap-fileinput/bootstrap-fileinput.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="icerik" runat="server">

    <!-- BEGIN PORTLET-->
    <div class="portlet box green">
        <div class="portlet-title">
            <div class="caption">
                <i class="icon-user-follow"></i>
                Öğretmen Ekle

                <div class="fileinput fileinput-new" data-provides="fileinput">
                    <span class="btn default btn-file btn-sm yellow-saffron-stripe">
                        <span class="fileinput-new">Excel Dosyası Seçin </span>
                        <span class="fileinput-exists">Değiştir </span>
                        <asp:FileUpload ID="fileExcel" runat="server" name="..." />
                    </span>
                    <span class="fileinput-filename"></span>
                    &nbsp; <a href="javascript:;" class="close fileinput-exists" data-dismiss="fileinput"></a>
                </div>
                <asp:Button ID="btnExcelKaydet" CssClass="btn btn-sm yellow-saffron" OnClick="btnExcelKaydet_Click" Text="Kaydet" runat="server" />
            </div>
            <div class="tools">
                <a href="javascript:;" class="collapse"></a>
                <a href="#portlet-config" data-toggle="modal" class="config"></a>
                <a href="javascript:;" class="reload"></a>
                <a href="javascript:;" class="remove"></a>
            </div>
        </div>
        <div class="portlet-body form">
            <section id="form-username" class="form-horizontal form-bordered">
                <div class="form-group ">
                    <label class="control-label col-md-3">Fotoğrafı</label>
                    <div class="col-md-9">
                        <div class="fileinput fileinput-new" data-provides="fileinput">
                            <div class="fileinput-preview thumbnail" data-trigger="fileinput" style="width: 360px; height: 480px;">
                            </div>
                            <div>
                                <span class="btn default btn-file">
                                    <span class="fileinput-new">Resim seç </span>
                                    <span class="fileinput-exists">Değiştir </span>
                                    <asp:FileUpload ID="fileFotograf" runat="server" />
                                </span>
                                <a href="javascript:;" class="btn red fileinput-exists" data-dismiss="fileinput">Sil </a>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-sm-3 control-label">T.C. Numarası</label>
                    <div class="col-sm-4">
                        <asp:TextBox ID="txtTcNo" CssClass="form-control" runat="server" />
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-sm-3 control-label">Adı</label>
                    <div class="col-sm-4">
                        <asp:TextBox ID="txtAdi" CssClass="form-control" runat="server" />
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-sm-3 control-label">Soyadı</label>
                    <div class="col-sm-4">
                        <asp:TextBox ID="txtSoyadi" CssClass="form-control" runat="server" />
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-sm-3 control-label">Cinsiyeti</label>
                    <div class="col-sm-4">
                        <asp:RadioButtonList ID="rblCinsiyet" CssClass="radio-list" RepeatDirection="Horizontal" runat="server">
                            <asp:ListItem Text="Erkek" />
                            <asp:ListItem Text="Kadın" />
                        </asp:RadioButtonList>
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-sm-3 control-label">Doğum Tarihi</label>
                    <div class="col-sm-4">
                        <asp:TextBox ID="txtDogumTarihi" CssClass="form-control" runat="server" />
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-sm-3 control-label">Adresi</label>
                    <div class="col-sm-4">
                        <asp:TextBox ID="txtAdresi" TextMode="MultiLine" Rows="3" CssClass="form-control" runat="server" />
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-sm-3 control-label">Branşı</label>
                    <div class="col-sm-4">
                        <asp:TextBox ID="txtBrans" CssClass="form-control" runat="server" />
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-sm-3 control-label">Telefon Numarası</label>
                    <div class="col-sm-4">
                        <asp:TextBox ID="txtTelefonNumarasi" CssClass="form-control" runat="server" />
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-sm-3 control-label">E-Posta Adresi</label>
                    <div class="col-sm-4">
                        <asp:TextBox ID="txtEPosta" CssClass="form-control" runat="server" />
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-sm-3 control-label">Durumu</label>
                    <div class="col-sm-4">
                        <asp:RadioButtonList ID="rblDurum" CssClass="radio-list" RepeatDirection="Horizontal" runat="server">
                            <asp:ListItem Text="Aktif" />
                            <asp:ListItem Text="Pasif" />
                        </asp:RadioButtonList>
                    </div>
                </div>
                <div class="form-actions">
                    <div class="row">
                        <div class="col-md-offset-3 col-md-9">
                            <asp:LinkButton ID="btnEkle" OnClick="btnEkle_Click" runat="server" CssClass="btn btn-success"><i class="fa fa-check"></i>
                                Ekle
                            </asp:LinkButton>
                            <asp:LinkButton ID="btnIptal" runat="server" CssClass="btn btn-danger"><i class="fa fa-remove"></i>
                                İptal
                            </asp:LinkButton>
                        </div>
                    </div>
                </div>
            </section>
        </div>
    </div>
    <!-- END PORTLET-->
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="sayfaIciEklenti" runat="server">
    <script src="../assets/global/plugins/bootstrap-fileinput/bootstrap-fileinput.js"></script>
</asp:Content>
<asp:Content ID="Content5" ContentPlaceHolderID="sayfayaAitScript" runat="server">
    <script src="../assets/admin/pages/scripts/components-form-tools.js"></script>
    <script>
        jQuery(document).ready(function () {
            // initiate layout and plugins
            Metronic.init(); // init metronic core components
            Layout.init(); // init current layout
            QuickSidebar.init(); // init quick sidebar
            Demo.init(); // init demo features
        });
    </script>
</asp:Content>
