<%@ Page Title="" Language="C#" MasterPageFile="~/ana.Master" AutoEventWireup="true" CodeBehind="veli_ekle.aspx.cs" Inherits="Dershane.yonetici.veli_ekle" %>

<asp:Content ID="Content1" ContentPlaceHolderID="baslik" runat="server">
    Veli Ekle
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="sayfaIciStil" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="icerik" runat="server">

    <!-- BEGIN PORTLET-->
    <div class="portlet box green">
        <div class="portlet-title">
            <div class="caption">
                <i class="icon-user-follow"></i>
                Veli Ekle
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
                    <label class="col-sm-3 control-label">Yakınlığı</label>
                    <div class="col-sm-4">
                        <asp:TextBox ID="txtYakinlik" CssClass="form-control" runat="server" />
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-sm-3 control-label">Mesleği</label>
                    <div class="col-sm-4">
                        <asp:TextBox ID="txtMeslek" CssClass="form-control" runat="server" />
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-sm-3 control-label">Öğrenci</label>
                    <div class="col-sm-4">
                        <asp:DropDownList ID="ddlOgrenci" CssClass="form-control" runat="server">
                        </asp:DropDownList>
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
                            <asp:LinkButton ID="btnIptal" OnClick="btnIptal_Click" runat="server" CssClass="btn btn-danger"><i class="fa fa-remove"></i>
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
</asp:Content>
<asp:Content ID="Content5" ContentPlaceHolderID="sayfayaAitScript" runat="server">
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
