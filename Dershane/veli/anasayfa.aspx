<%@ Page Title="" Language="C#" MasterPageFile="~/veli/veli.Master" AutoEventWireup="true" CodeBehind="anasayfa.aspx.cs" Inherits="Dershane.veli.anasayfa" %>
<asp:Content ID="Content1" ContentPlaceHolderID="baslik" runat="server">
    Anasayfa
</asp:Content>
<asp:Content ID="Content5" ContentPlaceHolderID="sayfaIciStil" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="icerik" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="sayfaIciEklenti" runat="server">
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="sayfayaAitScript" runat="server">
    <script>
        jQuery(document).ready(function () {
            Metronic.init(); // init metronic core components
            Layout.init(); // init current layout
            QuickSidebar.init(); // init quick sidebar
            Demo.init(); // init demo features
        });
    </script>
</asp:Content>
