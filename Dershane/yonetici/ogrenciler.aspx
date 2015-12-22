<%@ Page Title="" Language="C#" MasterPageFile="~/ana.Master" AutoEventWireup="true" CodeBehind="ogrenciler.aspx.cs" Inherits="Dershane.yonetici.ogrenciler" %>

<asp:Content ID="Content1" ContentPlaceHolderID="baslik" runat="server">
    Öğrenciler
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="sayfaIciStil" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="icerik" runat="server">

    <!-- BEGIN SAMPLE TABLE PORTLET-->
    <div class="portlet box red">
        <div class="portlet-title">
            <div class="caption">
                <i class="fa fa-cogs"></i>
                Öğrenciler
                
                <a href="ogrenci_ekle.aspx" class="btn btn-sm btn-success">
                    <i class="icon-plus"></i>
                    Öğrenci Ekle
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
                            <th>Adres
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
                            <th>Danışman
                            </th>
                            <th>Durum
                            </th>
                            <th>İşlemler
                            </th>
                        </tr>
                    </thead>
                    <tbody>
                        <asp:Repeater ID="rptOgrenciler" runat="server">
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
                                    <td><%#Eval("adres") %>
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
                                    <td><%#Eval("danisman") %>
                                    </td>
                                    <td><%#Eval("durum") %>
                                    </td>
                                    <td>
                                        <a href='ogrenci_sil.aspx?id=<%#Eval("ogrenciID") %>' class="btn btn-danger"><i class="fa fa-remove"></i>
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
