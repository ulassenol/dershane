<%@ Page Title="" Language="C#" MasterPageFile="~/yonetici/ana.Master" AutoEventWireup="true" CodeBehind="portallar.aspx.cs" Inherits="Dershane.yonetici.portallar" %>

<asp:Content ID="Content1" ContentPlaceHolderID="baslik" runat="server">
    Portallar
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="sayfaIciStil" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="icerik" runat="server">
    <!-- BEGIN PORTLET-->
    <div class="portlet box green">
        <div class="portlet-title">
            <div class="caption">
                <i class="icon-user-follow"></i>
                Portal Ekle
            </div>
            <div class="tools">
                <a href="javascript:;" class="collapse"></a>
                <a href="#portlet-config" data-toggle="modal" class="config"></a>
                <a href="javascript:;" class="reload"></a>
                <a href="javascript:;" class="remove"></a>
            </div>
        </div>
        <div class="portlet-body form form-horizontal form-bordered">
            <section id="form-username" class="form-horizontal form-bordered">
                <div class="form-group">
                    <label class="col-sm-3 control-label">Kullanıcı Adı</label>
                    <div class="col-sm-4">
                        <asp:TextBox ID="txtKullaniciAdi" CssClass="form-control" runat="server" />
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-sm-3 control-label">Şifre</label>
                    <div class="col-sm-4">
                        <asp:TextBox ID="txtSifre" CssClass="form-control" runat="server" />
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-sm-3 control-label">Yetki</label>
                    <div class="col-sm-4">
                        <asp:DropDownList ID="ddlYetki" CssClass="form-control" runat="server">
                            <asp:ListItem Text="Öğrenci" Value="ogrenci" />
                            <asp:ListItem Text="Öğretmen" Value="ogretmen" />
                            <asp:ListItem Text="Veli" Value="veli" />
                        </asp:DropDownList>
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-sm-3 control-label">Kişi</label>
                    <div class="col-sm-4">
                        <asp:DropDownList ID="ddlKisi" CssClass="form-control" runat="server">
                        </asp:DropDownList>
                    </div>
                </div>
                <div class="form-actions">
                    <div class="row">
                        <div class="col-md-offset-3 col-md-9">
                            <asp:LinkButton ID="btnEkle" OnClick="btnEkle_Click" CssClass="btn btn-success" runat="server">
                                    <i class="fa fa-check"></i>
                                        Ekle
                            </asp:LinkButton>
                            <asp:LinkButton ID="btnIptal" CssClass="btn btn-danger" runat="server">
                                    <i class="fa fa-remove"></i>
                                        İptal
                            </asp:LinkButton>
                        </div>
                    </div>
                </div>
            </section>
        </div>
    </div>
    <!-- END PORTLET-->

    <!-- BEGIN SAMPLE TABLE PORTLET-->
    <div class="portlet box red">
        <div class="portlet-title">
            <div class="caption">
                <i class="fa fa-cogs"></i>Portallar
            </div>
            <div class="tools">
                <a href="javascript:;" class="collapse"></a>
                <a href="#portlet-config" data-toggle="modal" class="config"></a>
                <a href="javascript:;" class="reload"></a>
                <a href="javascript:;" class="remove"></a>
            </div>
        </div>
        <div class="portlet-body">
            <div class="table-scrollable">
                <table class="table table-hover">
                    <thead>
                        <tr>
                            <th>#
                            </th>
                            <th>Ad
                            </th>
                            <th>Kullanıcı Adı
                            </th>
                            <th>Yetki
                            </th>
                            <th>İşlemler
                            </th>
                        </tr>
                    </thead>
                    <tbody>
                        <asp:Repeater ID="rptPortal" runat="server">
                            <ItemTemplate>
                                <tr>
                                    <td><%#Eval("#") %>
                                    </td>
                                    <td><%#Eval("yetkiliAdi") %>
                                    </td>
                                    <td><%#Eval("kullaniciAdi") %>
                                    </td>
                                    <td><%#Eval("yetki") %>
                                    </td>
                                    <td>
                                        <a href='portal_sil.aspx?id=<%#Eval("portalID") %>' class="btn btn-danger"><i class="fa fa-remove"></i>
                                            Sil
                                        </a>
                                    </td>
                                </tr>
                            </ItemTemplate>
                        </asp:Repeater>
                    </tbody>
                </table>
            </div>
        </div>
    </div>
    <!-- END SAMPLE TABLE PORTLET-->
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
