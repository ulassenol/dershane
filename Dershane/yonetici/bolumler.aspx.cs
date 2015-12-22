using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Dershane.yonetici
{
    public partial class bolumler : System.Web.UI.Page
    {
        Baglan baglan = new Baglan();

        protected void Page_Load(object sender, EventArgs e)
        {
            rptBolum.DataSource = baglan.tablo_getir("spBolumleriGetir");
            rptBolum.DataBind();
        }

        protected void btnEkle_Click(object sender, EventArgs e)
        {
            object[,] icerik = { { "@bolumAdi", txtBolumAdi.Text } };
            baglan.calistir(icerik, "spBolumEkle");
            Response.Redirect("bolumler.aspx?ekle=basarili");
        }

        protected void btnIptal_Click(object sender, EventArgs e)
        {
            txtBolumAdi.Text = "";
        }
    }
}