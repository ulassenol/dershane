using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Dershane.yonetici
{
    public partial class gruplar : System.Web.UI.Page
    {
        Baglan baglan = new Baglan();

        protected void Page_Load(object sender, EventArgs e)
        {
            rptGrup.DataSource = baglan.tablo_getir("spGruplariGetir");
            rptGrup.DataBind();
        }

        protected void btnEkle_Click(object sender, EventArgs e)
        {
            object[,] icerik = { { "@grupAdi", txtGrupAdi.Text } };
            baglan.calistir(icerik, "spGrupEkle");
            Response.Redirect("gruplar.aspx?ekle=basarili");
        }

        protected void btnIptal_Click(object sender, EventArgs e)
        {
            txtGrupAdi.Text = "";
        }
    }
}