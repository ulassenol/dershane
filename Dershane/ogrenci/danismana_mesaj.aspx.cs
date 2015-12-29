using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Dershane.ogrenci
{
    public partial class danismana_mesaj : System.Web.UI.Page
    {
        Baglan baglan = new Baglan();

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnGonder_Click(object sender, EventArgs e)
        {
            object[,] icerik = { { "@ogrenciID", Request.Cookies["giris"]["id"] }, {"@icerik", txtKonu.Text + " - " + txtIcerik.Text } };
            baglan.calistir(icerik, "spDanismanaMesajGonder");
        }
    }
}