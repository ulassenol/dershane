using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Dershane.ogrenci
{
    public partial class sinav_sonuclari : System.Web.UI.Page
    {
        Baglan baglan = new Baglan();

        protected void Page_Load(object sender, EventArgs e)
        {
            object[,] icerik = { { "@ogrenciID", Request.Cookies["giris"]["id"] } };
            rptSinavSonuclari.DataSource = baglan.tablo_getir(icerik, "spSinavSonuclariGetirOgrenci");
            rptSinavSonuclari.DataBind();
        }
    }
}