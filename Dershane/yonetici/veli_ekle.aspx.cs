using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Dershane.yonetici
{
    public partial class veli_ekle : System.Web.UI.Page
    {
        Baglan baglan = new Baglan();

        protected void Page_Load(object sender, EventArgs e)
        {
            if (IsPostBack)
            {
                return;
            }

            ddlOgrenci.DataSource = baglan.tablo_getir("spOgrencileriGetir");
            ddlOgrenci.DataTextField = "ogrenci";
            ddlOgrenci.DataValueField = "ogrenciID";
            ddlOgrenci.DataBind();
        }

        protected void btnEkle_Click(object sender, EventArgs e)
        {
            object[,] icerik = { { "@tcNo", txtTcNo.Text }, { "@ad", txtAdi.Text }, { "@soyad", txtSoyadi.Text }, { "@cinsiyet", rblCinsiyet.SelectedItem.Text }, { "@telefon", txtTelefonNumarasi.Text }, { "@eposta", txtEPosta.Text }, { "@yakinlik", txtYakinlik.Text }, { "@meslek", txtMeslek.Text }, { "@ogrenciID", ddlOgrenci.SelectedItem.Value }, { "@durum", rblDurum.SelectedItem.Text } };
            baglan.calistir(icerik, "spVeliEkle");
        }

        protected void btnIptal_Click(object sender, EventArgs e)
        {

        }
    }
}