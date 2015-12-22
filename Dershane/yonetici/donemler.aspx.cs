using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Dershane.yonetici
{
    public partial class donemler : System.Web.UI.Page
    {
        Baglan baglan = new Baglan();

        protected void Page_Load(object sender, EventArgs e)
        {
            rptDonem.DataSource = baglan.tablo_getir("spDonemleriGetir");
            rptDonem.DataBind();
        }

        protected void btnEkle_Click(object sender, EventArgs e)
        {
            object[,] icerik = { { "@donemAdi", txtDonemAdi.Text } };
            baglan.calistir(icerik, "spDonemEkle");
            Response.Redirect("donemler.aspx?ekle=basarili");
        }

        protected void btnIptal_Click(object sender, EventArgs e)
        {
            txtDonemAdi.Text = "";
        }
    }
}