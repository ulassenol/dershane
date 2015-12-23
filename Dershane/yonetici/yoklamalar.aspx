<%@ Page Title="" Language="C#" MasterPageFile="~/ana.Master" AutoEventWireup="true" CodeBehind="yoklamalar.aspx.cs" Inherits="Dershane.yonetici.yoklamalar" %>

<asp:Content ID="Content1" ContentPlaceHolderID="baslik" runat="server">
    Yoklamalar
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="sayfaIciStil" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="icerik" runat="server">
    <!-- BEGIN PORTLET-->
    <div class="portlet box green">
        <div class="portlet-title">
            <div class="caption">
                <i class="icon-user-follow"></i>
                Yoklama Ekle
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
                    <label class="col-sm-3 control-label">Öğrenci Adı</label>
                    <div class="col-sm-4">
                        <asp:DropDownList ID="ddlOgrenci" CssClass="form-control" runat="server">
                        </asp:DropDownList>
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-sm-3 control-label">Yoklama Durumu</label>
                    <div class="col-sm-4">
                        <asp:DropDownList ID="ddlYoklamaDurumu" CssClass="form-control" runat="server">
                            <asp:ListItem Text="Geldi" />
                            <asp:ListItem Text="Gelmedi" />
                            <asp:ListItem Text="Geç Geldi" />
                            <asp:ListItem Text="İzinli" />
                        </asp:DropDownList>
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-sm-3 control-label">Ders</label>
                    <div class="col-sm-4">
                        <asp:DropDownList ID="ddlDers" CssClass="form-control" runat="server">
                        </asp:DropDownList>
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-sm-3 control-label">Tarih</label>
                    <div class="col-sm-4">
                        <asp:TextBox ID="txtTarih" CssClass="form-control" runat="server" />
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
                <i class="fa fa-cogs"></i>Yoklamalar
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
                            <th>Öğrenci Adı
                            </th>
                            <th>Sınıf Adı
                            </th>
                            <th>Ders Adı
                            </th>
                            <th>Kaçıncı Ders
                            </th>
                            <th>Yoklama Durumu
                            </th>
                            <th>Tarih
                            </th>
                            <th>İşlemler
                            </th>
                        </tr>
                    </thead>
                    <tbody>
                        <asp:Repeater ID="rptYoklamalar" runat="server">
                            <ItemTemplate>
                                <tr>
                                    <td><%#Eval("#") %>
                                    </td>
                                    <td><%#Eval("ogrenciAdi") %>
                                    </td>
                                    <td><%#Eval("sinifAdi") %>
                                    </td>
                                    <td><%#Eval("dersAdi") %>
                                    </td>
                                    <td><%#Eval("yoklamaKacinciDers") %>
                                    </td>
                                    <td><%#Eval("yoklamaDurumu") %>
                                    </td>
                                    <td><%#Eval("tarih", "{0:dd.MM.yyyy}") %>
                                    </td>
                                    <td>
                                        <a href='yoklama_sil.aspx?id=<%#Eval("yoklamaID") %>' class="btn btn-danger"><i class="fa fa-remove"></i>
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
