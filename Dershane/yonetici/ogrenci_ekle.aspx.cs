using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Dershane.yonetici
{
    public partial class ogrenci_ekle : System.Web.UI.Page
    {
        Baglan baglan = new Baglan();
        Fonksiyon fonksiyon = new Fonksiyon();

        protected void Page_Load(object sender, EventArgs e)
        {
            ddlGrup.DataSource = baglan.tablo_getir("spGruplariGetir");
            ddlGrup.DataTextField = "ad";
            ddlGrup.DataValueField = "grupID";
            ddlGrup.DataBind();

            ddlDonem.DataSource = baglan.tablo_getir("spDonemleriGetir");
            ddlDonem.DataTextField = "ad";
            ddlDonem.DataValueField = "donemID";
            ddlDonem.DataBind();

            ddlBolum.DataSource = baglan.tablo_getir("spBolumleriGetir");
            ddlBolum.DataTextField = "ad";
            ddlBolum.DataValueField = "bolumID";
            ddlBolum.DataBind();

            ddlSinif.DataSource = baglan.tablo_getir("spSiniflariGetir");
            ddlSinif.DataTextField = "ad";
            ddlSinif.DataValueField = "sinifID";
            ddlSinif.DataBind();

            ddlDanisman.DataSource = baglan.tablo_getir("spOgretmenleriGetir");
            ddlDanisman.DataTextField = "danisman";
            ddlDanisman.DataValueField = "ogretmenID";
            ddlDanisman.DataBind();
        }

        protected void btnEkle_Click(object sender, EventArgs e)
        {
            object[,] icerik = { { "@tcNo", txtTcNo.Text }, { "@ad", txtAdi.Text }, { "@soyad", txtSoyadi.Text }, { "@cinsiyet", rblCinsiyet.SelectedItem.Text }, { "@adres", txtAdresi.Text }, { "@numara", txtNumara.Text }, { "@resim", fonksiyon.fotografEkleOgrenci(fileFotograf, txtAdi.Text, txtSoyadi.Text) }, { "@telefon", txtTelefonNumarasi.Text }, { "@eposta", txtEPosta.Text }, { "@grupID", ddlGrup.SelectedItem.Value }, { "@bolumID", ddlBolum.SelectedItem.Value }, { "@donemID", ddlDonem.SelectedItem.Value }, { "@sinifID", ddlSinif.SelectedItem.Value }, { "@danismanID", ddlDanisman.SelectedItem.Value }, { "@durum", rblDurum.SelectedItem.Text } };
            baglan.calistir(icerik, "spOgrenciEkle");
        }

        protected void btnIptal_Click(object sender, EventArgs e)
        {

        }
    }
}