using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Dershane.yonetici
{
    public partial class ders_sil : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            object[,] icerik = { { "@dersID", Request.QueryString["id"] } };
            Baglan baglan = new Baglan();
            baglan.calistir(icerik, "spDersSil");
            Response.Redirect("dersler.aspx?sil=basarili", false);
        }
    }
}