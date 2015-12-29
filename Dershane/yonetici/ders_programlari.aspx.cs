using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Dershane.yonetici
{
    public partial class ders_programlari : System.Web.UI.Page
    {
        Baglan baglan = new Baglan();

        protected void Page_Load(object sender, EventArgs e)
        {
            if (IsPostBack)
            {
                return;
            }

            ddlDers.DataSource = baglan.tablo_getir("spDersleriGetir");
            ddlDers.DataTextField = "grupDers";
            ddlDers.DataValueField = "dersID";
            ddlDers.DataBind();

            ddlSinif.DataSource = baglan.tablo_getir("spSiniflariGetir");
            ddlSinif.DataTextField = "ad";
            ddlSinif.DataValueField = "sinifID";
            ddlSinif.DataBind();

            ddlGrup.DataSource = baglan.tablo_getir("spGruplariGetir");
            ddlGrup.DataTextField = "ad";
            ddlGrup.DataValueField = "grupID";
            ddlGrup.DataBind();

            rptDersProgrami.DataSource = baglan.tablo_getir("spDersProgramiGetir");
            rptDersProgrami.DataBind();
        }

        protected void btnEkle_Click(object sender, EventArgs e)
        {
            object[,] icerik = { { "@dersID", ddlDers.SelectedItem.Value }, { "@gun", txtGun.Text }, { "@saat", txtSaat.Text }, { "@kacinciDers", txtKacinciDers.Text }, { "@sinifID", ddlSinif.SelectedItem.Value }, { "@grupID", ddlGrup.SelectedItem.Value } };
            baglan.calistir(icerik, "spDersProgramiEkle");
            Response.Redirect("ders_programlari.aspx?ekle=basarili");
        }

        protected void btnIptal_Click(object sender, EventArgs e)
        {

        }
    }
}