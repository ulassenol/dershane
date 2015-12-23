<%@ Page Title="" Language="C#" MasterPageFile="~/ana.Master" AutoEventWireup="true" CodeBehind="veliler.aspx.cs" Inherits="Dershane.yonetici.veliler" %>
<asp:Content ID="Content1" ContentPlaceHolderID="baslik" runat="server">
    Veliler
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="sayfaIciStil" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="icerik" runat="server">

    <!-- BEGIN SAMPLE TABLE PORTLET-->
    <div class="portlet box red">
        <div class="portlet-title">
            <div class="caption">
                <i class="fa fa-cogs"></i>
                Veliler
                
                <a href="veli_ekle.aspx" class="btn btn-sm btn-success">
                    <i class="icon-plus"></i>
                    Veli Ekle
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
                            <th>Ad
                            </th>
                            <th>T.C. NO
                            </th>
                            <th>Cinsiyet
                            </th>
                            <th>Telefon
                            </th>
                            <th>E-Posta
                            </th>
                            <th>Yakınlık
                            </th>
                            <th>Meslek
                            </th>
                            <th>Öğrenci
                            </th>
                            <th>Durum
                            </th>
                            <th>İşlemler
                            </th>
                        </tr>
                    </thead>
                    <tbody>
                        <asp:Repeater ID="rptVeliler" runat="server">
                            <ItemTemplate>
                                <tr>
                                    <td><%#Eval("#") %>
                                    </td>
                                    <td><%#Eval("veliAdi") %>
                                    </td>
                                    <td><%#Eval("tcNo") %>
                                    </td>
                                    <td><%#Eval("cinsiyet") %>
                                    </td>
                                    <td><%#Eval("telefon") %>
                                    </td>
                                    <td><%#Eval("eposta") %>
                                    </td>
                                    <td><%#Eval("yakinlik") %>
                                    </td>
                                    <td><%#Eval("meslek") %>
                                    </td>
                                    <td><%#Eval("ogrenciAdi") %>
                                    </td>
                                    <td><%#Eval("durum") %>
                                    </td>
                                    <td>
                                        <a href='veli_sil.aspx?id=<%#Eval("veliID") %>' class="btn btn-danger"><i class="fa fa-remove"></i>
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
