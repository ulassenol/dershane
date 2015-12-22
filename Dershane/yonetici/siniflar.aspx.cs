using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Dershane.yonetici
{
    public partial class siniflar : System.Web.UI.Page
    {
        Baglan baglan = new Baglan();

        protected void Page_Load(object sender, EventArgs e)
        {
            rptSinif.DataSource = baglan.tablo_getir("spSiniflariGetir");
            rptSinif.DataBind();
        }

        protected void btnEkle_Click(object sender, EventArgs e)
        {
            object[,] icerik = { { "@sinifAdi", txtSinifAdi.Text } };
            baglan.calistir(icerik, "spSinifEkle");
            Response.Redirect("siniflar.aspx?ekle=basarili");
        }

        protected void btnIptal_Click(object sender, EventArgs e)
        {
            txtSinifAdi.Text = "";
        }
    }
}