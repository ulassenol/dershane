<%@ Page Title="" Language="C#" MasterPageFile="~/ana.Master" AutoEventWireup="true" CodeBehind="ders_programlari.aspx.cs" Inherits="Dershane.yonetici.ders_programlari" %>

<asp:Content ID="Content1" ContentPlaceHolderID="baslik" runat="server">
    Ders Programları
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="sayfaIciStil" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="icerik" runat="server">
    <!-- BEGIN PORTLET-->
    <div class="portlet box green">
        <div class="portlet-title">
            <div class="caption">
                <i class="icon-user-follow"></i>
                Ders Programı Ekle
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
                    <label class="col-sm-3 control-label">Dersin Adı</label>
                    <div class="col-sm-4">
                        <asp:DropDownList ID="ddlDers" CssClass="form-control" runat="server">
                        </asp:DropDownList>
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-sm-3 control-label">Dersin Günü</label>
                    <div class="col-sm-4">
                        <asp:TextBox ID="txtGun" CssClass="form-control" runat="server" />
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-sm-3 control-label">Dersin Saati</label>
                    <div class="col-sm-4">
                        <asp:TextBox ID="txtSaat" CssClass="form-control" runat="server" />
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-sm-3 control-label">Kaçıncı Ders</label>
                    <div class="col-sm-4">
                        <asp:TextBox ID="txtKacinciDers" CssClass="form-control" runat="server" />
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-sm-3 control-label">Sınıfın Adı</label>
                    <div class="col-sm-4">
                        <asp:DropDownList ID="ddlSinif" CssClass="form-control" runat="server">
                        </asp:DropDownList>
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-sm-3 control-label">Grubun Adı</label>
                    <div class="col-sm-4">
                        <asp:DropDownList ID="ddlGrup" CssClass="form-control" runat="server">
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
                            <asp:LinkButton ID="btnIptal" OnClick="btnIptal_Click" CssClass="btn btn-danger" runat="server">
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
                <i class="fa fa-cogs"></i>Ders Programları
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
                            <th>Sınıf Adı
                            </th>
                            <th>Grup Adı
                            </th>
                            <th>Hangi Gün
                            </th>
                            <th>Ders Saati
                            </th>
                            <th>Kaçıncı Ders
                            </th>
                            <th>İşlemler
                            </th>
                        </tr>
                    </thead>
                    <tbody>
                        <asp:Repeater ID="rptDersProgrami" runat="server">
                            <ItemTemplate>
                                <tr>
                                    <td><%#Eval("#") %>
                                    </td>
                                    <td><%#Eval("sinifAdi") %>
                                    </td>
                                    <td><%#Eval("grupAdi") %>
                                    </td>
                                    <td><%#Eval("gun") %>
                                    </td>
                                    <td><%#Eval("saat") %>
                                    </td>
                                    <td><%#Eval("kacinciDers") %>
                                    </td>
                                    <td>
                                        <a href='ders_programi_sil.aspx?id=<%#Eval("dersProgramiID") %>' class="btn btn-danger"><i class="fa fa-remove"></i>
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
