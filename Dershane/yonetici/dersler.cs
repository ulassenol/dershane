using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Dershane.yonetici
{
    public partial class dersler : System.Web.UI.Page
    {
        Baglan baglan = new Baglan();
        Fonksiyon fonksiyon = new Fonksiyon();

        protected void Page_Load(object sender, EventArgs e)
        {
            ddlGrup.DataSource = baglan.tablo_getir("spGruplariGetir");
            ddlGrup.DataTextField = "ad";
            ddlGrup.DataValueField = "grupID";
            ddlGrup.DataBind();

            ddlBolum.DataSource = baglan.tablo_getir("spBolumleriGetir");
            ddlBolum.DataTextField = "ad";
            ddlBolum.DataValueField = "bolumID";
            ddlBolum.DataBind();
			
            rptDers.DataSource = baglan.tablo_getir("spDersleriGetir");
            rptDers.DataBind();
        }

        protected void btnEkle_Click(object sender, EventArgs e)
        {
            object[,] icerik = { { "@dersAdi", txtDersAdi.Text }, { "@grupID", ddlGrup.SelectedItem.Value }, { "@bolumID", ddlBolum.SelectedItem.Value } };
            baglan.calistir(icerik, "spDersEkle");
        }
    }
}