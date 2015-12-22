using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Dershane.yonetici
{
    public partial class bolum_sil : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            object[,] icerik = { { "@bolumID", Request.QueryString["id"] } };
            Baglan baglan = new Baglan();
            baglan.calistir(icerik, "spBolumSil");
            Response.Redirect("bolumler.aspx?sil=basarili", false);
        }
    }
}