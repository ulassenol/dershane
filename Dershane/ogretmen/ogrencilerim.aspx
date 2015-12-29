<%@ Page Title="" Language="C#" MasterPageFile="~/ogretmen/ogretmen.Master" AutoEventWireup="true" CodeBehind="ogrencilerim.aspx.cs" Inherits="Dershane.ogretmen.ogrencilerim" %>

<asp:Content ID="Content3" ContentPlaceHolderID="baslik" runat="server">
    Öğrencilerim
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="sayfaIciStil" runat="server">
</asp:Content>
<asp:Content ID="Content5" ContentPlaceHolderID="icerik" runat="server">
    <!-- BEGIN SAMPLE TABLE PORTLET-->
    <div class="portlet box green-haze">
        <div class="portlet-title">
            <div class="caption">
                <i class="fa fa-cogs"></i>Öğrencilerim
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
                            <th>Numara
                            </th>
                            <th>Telefon
                            </th>
                            <th>E-Posta
                            </th>
                            <th>Grup
                            </th>
                            <th>Bölüm
                            </th>
                            <th>Dönem
                            </th>
                            <th>Sınıf
                            </th>
                            <th>Durum
                            </th>
                        </tr>
                    </thead>
                    <tbody>
                        <asp:Repeater ID="rptOgrencilerim" runat="server">
                            <ItemTemplate>
                                <tr>
                                    <td><%#Eval("#") %>
                                    </td>
                                    <td>
                                        <img src='../resimler/ogrenci/<%#Eval("resim") %>' height="40" />
                                    </td>
                                    <td><%#Eval("ogrenci") %>
                                    </td>
                                    <td><%#Eval("tcNo") %>
                                    </td>
                                    <td><%#Eval("cinsiyet") %>
                                    </td>
                                    <td><%#Eval("numara") %>
                                    </td>
                                    <td><%#Eval("telefon") %>
                                    </td>
                                    <td><%#Eval("eposta") %>
                                    </td>
                                    <td><%#Eval("grupAdi") %>
                                    </td>
                                    <td><%#Eval("bolumAdi") %>
                                    </td>
                                    <td><%#Eval("donemAdi") %>
                                    </td>
                                    <td><%#Eval("sinifAdi") %>
                                    </td>
                                    <td><%#Eval("durum") %>
                                    </td>
                                </tr>
                            </ItemTemplate>
                        </asp:Repeater>
                    </tbody>
                </table>
            </div>
        </div>
        <!-- END SAMPLE TABLE PORTLET-->
</asp:Content>
<asp:Content ID="Content6" ContentPlaceHolderID="sayfaIciEklenti" runat="server">
</asp:Content>
<asp:Content ID="Content7" ContentPlaceHolderID="sayfayaAitScript" runat="server">
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
