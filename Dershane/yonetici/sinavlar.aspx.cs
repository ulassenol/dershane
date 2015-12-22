using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Dershane.yonetici
{
    public partial class sinavlar : System.Web.UI.Page
    {
        Baglan baglan = new Baglan();
        Fonksiyon fonksiyon = new Fonksiyon();

        protected void Page_Load(object sender, EventArgs e)
        {
            if (IsPostBack)
            {
                return;
            }

            ddlGrup.DataSource = baglan.tablo_getir("spGruplariGetir");
            ddlGrup.DataTextField = "ad";
            ddlGrup.DataValueField = "grupID";
            ddlGrup.DataBind();

            rptSinav.DataSource = baglan.tablo_getir("spSinavlariGetir");
            rptSinav.DataBind();
        }

        protected void btnEkle_Click(object sender, EventArgs e)
        {
            object[,] icerik = { { "@grupID", ddlGrup.SelectedItem.Value }, { "ad", txtSinavAdi.Text }, { "@tur", txtSinavTuru.Text }, { "@tarih", Convert.ToDateTime(txtSinavinTarihi.Text) } };
            baglan.calistir(icerik, "spSinavEkle");
            Response.Redirect("sinavlar.aspx?ekle=basarili", false);
        }
    }
}