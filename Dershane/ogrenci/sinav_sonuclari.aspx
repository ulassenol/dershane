<%@ Page Title="" Language="C#" MasterPageFile="~/ogrenci/ogrenci.Master" AutoEventWireup="true" CodeBehind="sinav_sonuclari.aspx.cs" Inherits="Dershane.ogrenci.sinav_sonuclari" %>
<asp:Content ID="Content1" ContentPlaceHolderID="baslik" runat="server">
    Sınav Sonuçları
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="sayfaIciStil" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="icerik" runat="server">
    <!-- BEGIN SAMPLE TABLE PORTLET-->
    <div class="portlet box green-haze">
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
                            <th>Tarih
                            </th>
                            <th>Tür
                            </th>
                            <th>Sınav Adı
                            </th>
                            <th>Doğru
                            </th>
                            <th>Yanlış
                            </th>
                            <th>Boş
                            </th>
                        </tr>
                    </thead>
                    <tbody>
                        <asp:Repeater ID="rptSinavSonuclari" runat="server">
                            <ItemTemplate>
                                <tr>
                                    <td><%#Eval("#") %>
                                    </td>
                                    <td><%#Eval("tarih", "{0:dd.MM.yyyy}") %>
                                    </td>
                                    <td><%#Eval("tur") %>
                                    </td>
                                    <td><%#Eval("sinavAdi") %>
                                    </td>
                                    <td><%#Eval("dogru") %>
                                    </td>
                                    <td><%#Eval("yanlis") %>
                                    </td>
                                    <td><%#Eval("bos") %>
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