using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Dershane.ogretmen
{
    public partial class ogrencilerim : System.Web.UI.Page
    {
        Baglan baglan = new Baglan();

        protected void Page_Load(object sender, EventArgs e)
        {
            object[,] icerik = { { "@ogretmenID", Request.Cookies["giris"]["id"] } };
            rptOgrencilerim.DataSource = baglan.tablo_getir(icerik, "spDanismanOgrencileriGetir");
            rptOgrencilerim.DataBind();
        }
    }
}