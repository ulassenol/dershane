<%@ Page Title="" Language="C#" MasterPageFile="~/ana.Master" AutoEventWireup="true" CodeBehind="sinav_sonuclari.aspx.cs" Inherits="Dershane.yonetici.sinav_sonuclari" %>

<asp:Content ID="Content1" ContentPlaceHolderID="baslik" runat="server">
    Sınav Sonuçları
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="sayfaIciStil" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="icerik" runat="server">
    <!-- BEGIN PORTLET-->
    <div class="portlet box green">
        <div class="portlet-title">
            <div class="caption">
                <i class="icon-user-follow"></i>
                Sınav Sonucu Ekle
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
                    <label class="col-sm-3 control-label">Öğrenci Adi</label>
                    <div class="col-sm-4">
                        <asp:DropDownList ID="ddlOgrenci" CssClass="form-control" runat="server">
                        </asp:DropDownList>
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-sm-3 control-label">Sinav Adi</label>
                    <div class="col-sm-4">
                        <asp:DropDownList ID="ddlSinav" CssClass="form-control" runat="server">
                        </asp:DropDownList>
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-sm-3 control-label">Doğru Cevap Sayısı</label>
                    <div class="col-sm-4">
                        <asp:TextBox ID="txtDogru" CssClass="form-control" runat="server" />
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-sm-3 control-label">Yanlış Cevap Sayısı</label>
                    <div class="col-sm-4">
                        <asp:TextBox ID="txtYanlis" CssClass="form-control" runat="server" />
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-sm-3 control-label">Boş Bırakılan Soru Sayısı</label>
                    <div class="col-sm-4">
                        <asp:TextBox ID="txtBos" CssClass="form-control" runat="server" />
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
                <i class="fa fa-cogs"></i>Sınavlar
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
                            <th>Sınavın Türü
                            </th>
                            <th>Sınav Adı
                            </th>
                            <th>Öğrenci Adı
                            </th>
                            <th>Doğru Sayısı
                            </th>
                            <th>Yanlış Sayısı
                            </th>
                            <th>Boş Sayısı
                            </th>
                            <th>Sınav Tarihi
                            </th>
                            <th>İşlemler
                            </th>
                        </tr>
                    </thead>
                    <tbody>
                        <asp:Repeater ID="rptSinavSonucu" runat="server">
                            <ItemTemplate>
                                <tr>
                                    <td><%#Eval("#") %>
                                    </td>
                                    <td><%#Eval("tur") %>
                                    </td>
                                    <td><%#Eval("sinavAdi") %>
                                    </td>
                                    <td><%#Eval("ogrenciAdi") %>
                                    </td>
                                    <td><%#Eval("dogru") %>
                                    </td>
                                    <td><%#Eval("yanlis") %>
                                    </td>
                                    <td><%#Eval("bos") %>
                                    </td>
                                    <td>
                                        <%#Eval("tarih", "{0:dd.MM.yyyy}") %>
                                    </td>
                                    <td>
                                        <a href='sinav_sonucu_sil.aspx?id=<%#Eval("sinavSonucID") %>' class="btn btn-danger"><i class="fa fa-remove"></i>
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
