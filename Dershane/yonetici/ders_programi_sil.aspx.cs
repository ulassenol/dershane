using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Dershane.yonetici
{
    public partial class ders_programi_sil : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            object[,] icerik = { { "@dersProgramiID", Request.QueryString["id"] } };
            Baglan baglan = new Baglan();
            baglan.calistir(icerik, "spDersProgramiSil");
            Response.Redirect("ders_programlari.aspx?sil=basarili", false);
        }
    }
}