<%@ Page Title="" Language="C#" MasterPageFile="~/ogrenci/ogrenci.Master" AutoEventWireup="true" CodeBehind="yoklama.aspx.cs" Inherits="Dershane.ogrenci.yoklama" %>
<asp:Content ID="Content1" ContentPlaceHolderID="baslik" runat="server">
    Yoklama
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
                            <th>Ders Adı
                            </th>
                            <th>Kaçıncı Ders
                            </th>
                            <th>Yoklama Durumu
                            </th>
                        </tr>
                    </thead>
                    <tbody>
                        <asp:Repeater ID="rptYoklama" runat="server">
                            <ItemTemplate>
                                <tr>
                                    <td><%#Eval("#") %>
                                    </td>
                                    <td><%#Eval("tarih", "{0:dd.MM.yyyy}") %>
                                    </td>
                                    <td><%#Eval("dersAdi") %>
                                    </td>
                                    <td><%#Eval("yoklamaKacinciDers") %>
                                    </td>
                                    <td><%#Eval("yoklamaDurumu") %>
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