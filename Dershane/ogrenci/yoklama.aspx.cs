using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Dershane.ogrenci
{
    public partial class yoklama : System.Web.UI.Page
    {
        Baglan baglan = new Baglan();

        protected void Page_Load(object sender, EventArgs e)
        {
            object[,] icerik = { { "@ogrenciID", Request.Cookies["giris"]["id"] } };
            rptYoklama.DataSource = baglan.tablo_getir(icerik, "spYoklamalariGetirOgrenci");
            rptYoklama.DataBind();
        }
    }
}