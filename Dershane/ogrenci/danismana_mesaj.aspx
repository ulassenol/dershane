<%@ Page Title="" Language="C#" MasterPageFile="~/ogrenci/ogrenci.Master" AutoEventWireup="true" CodeBehind="danismana_mesaj.aspx.cs" Inherits="Dershane.ogrenci.danismana_mesaj" %>

<asp:Content ID="Content1" ContentPlaceHolderID="baslik" runat="server">
    Danışmana Mesaj Gönder
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="sayfaIciStil" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="icerik" runat="server">
    <!-- BEGIN PORTLET-->
    <div class="portlet box green">
        <div class="portlet-title">
            <div class="caption">
                <i class="icon-user-follow"></i>
                Danışmana Mesaj Gönder
            </div>
            <div class="tools">
                <a href="javascript:;" class="collapse"></a>
                <a href="#portlet-config" data-toggle="modal" class="config"></a>
                <a href="javascript:;" class="reload"></a>
                <a href="javascript:;" class="remove"></a>
            </div>
        </div>
        <div class="portlet-body form">
            <section id="form-username" class="form-horizontal form-bordered">
                <div class="form-group">
                    <label class="col-sm-3 control-label">Konu</label>
                    <div class="col-sm-6">
                        <asp:TextBox ID="txtKonu" Font-Bold="true" CssClass="form-control" runat="server" />
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-sm-3 control-label">Mesaj</label>
                    <div class="col-sm-6">
                        <asp:TextBox ID="txtIcerik" CssClass="form-control" TextMode="MultiLine" Rows="5" runat="server" />
                    </div>
                </div>
                <div class="form-actions">
                    <div class="row">
                        <div class="col-md-offset-3 col-md-9">
                            <asp:LinkButton ID="btnGonder" OnClick="btnGonder_Click" runat="server" CssClass="btn btn-success"><i class="fa fa-check"></i>
                                Ekle
                            </asp:LinkButton>
                            <asp:LinkButton ID="btnIptal" runat="server" CssClass="btn btn-danger"><i class="fa fa-remove"></i>
                                İptal
                            </asp:LinkButton>
                        </div>
                    </div>
                </div>
            </section>
        </div>
    </div>
    <!-- END PORTLET-->
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
