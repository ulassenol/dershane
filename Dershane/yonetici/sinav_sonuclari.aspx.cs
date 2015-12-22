using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Dershane.yonetici
{
    public partial class sinav_sonuclari : System.Web.UI.Page
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

            ddlSinav.DataSource = baglan.tablo_getir("spSinavlariGetir");
            ddlSinav.DataTextField = "sinavAdi";
            ddlSinav.DataValueField = "sinavID";
            ddlSinav.DataBind();

            rptSinavSonucu.DataSource = baglan.tablo_getir("spSinavSonuclariGetir");
            rptSinavSonucu.DataBind();
        }

        protected void btnEkle_Click(object sender, EventArgs e)
        {
            object[,] icerik = { { "@ogrenciID", ddlOgrenci.SelectedItem.Value }, { "@sinavID", ddlSinav.SelectedItem.Value }, { "@dogru", txtDogru.Text }, { "@yanlis", txtYanlis.Text }, { "@bos", txtBos.Text } };
            baglan.calistir(icerik, "spSinavSonucuEkle");
            Response.Redirect("sinav_sonuclari.aspx?ekle=basarili");
        }

        protected void btnIptal_Click(object sender, EventArgs e)
        {

        }
    }
}