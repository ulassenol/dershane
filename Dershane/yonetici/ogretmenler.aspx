<%@ Page Title="" Language="C#" MasterPageFile="~/ana.Master" AutoEventWireup="true" CodeBehind="ogretmenler.aspx.cs" Inherits="Dershane.yonetici.ogretmenler" %>

<asp:Content ID="Content1" ContentPlaceHolderID="baslik" runat="server">
    Öğretmenler
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="sayfaIciStil" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="icerik" runat="server">

    <!-- BEGIN SAMPLE TABLE PORTLET-->
    <div class="portlet box red">
        <div class="portlet-title">
            <div class="caption">
                <i class="fa fa-cogs"></i>
                Öğretmenler
                
                <a href="ogretmen_ekle.aspx" class="btn btn-sm btn-success">
                    <i class="icon-plus"></i>
                    Öğretmen Ekle
                </a>
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
                            <th>Fotoğraf
                            </th>
                            <th>Ad
                            </th>
                            <th>T.C. NO
                            </th>
                            <th>Cinsiyet
                            </th>
                            <th>Doğum Tarihi
                            </th>
                            <th>Adres
                            </th>
                            <th>Branş
                            </th>
                            <th>Telefon
                            </th>
                            <th>E-Posta
                            </th>
                            <th>Durum
                            </th>
                            <th>İşlemler
                            </th>
                        </tr>
                    </thead>
                    <tbody>
                        <asp:Repeater ID="rptOgretmenler" runat="server">
                            <ItemTemplate>
                                <tr>
                                    <td><%#Eval("#") %>
                                    </td>
                                    <td>
                                        <img src='../resimler/ogretmen/<%#Eval("resim") %>' height="40" />
                                    </td>
                                    <td><%#Eval("ogretmen") %>
                                    </td>
                                    <td><%#Eval("tcNo") %>
                                    </td>
                                    <td><%#Eval("cinsiyet") %>
                                    </td>
                                    <td><%#Eval("dogumTarih", "{0:dd.MM.yyyy}") %>
                                    </td>
                                    <td><%#Eval("adres") %>
                                    </td>
                                    <td><%#Eval("brans") %>
                                    </td>
                                    <td><%#Eval("telefon") %>
                                    </td>
                                    <td><%#Eval("eposta") %>
                                    </td>
                                    <td><%#Eval("durum") %>
                                    </td>
                                    <td>
                                        <a href='ogretmen_sil.aspx?id=<%#Eval("ogretmenID") %>' class="btn btn-danger"><i class="fa fa-remove"></i>
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
