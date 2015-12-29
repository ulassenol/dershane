using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Dershane.yonetici
{
    public partial class ogretmenler : System.Web.UI.Page
    {
        Baglan baglan = new Baglan();
        Fonksiyon fonksiyon = new Fonksiyon();

        protected void Page_Load(object sender, EventArgs e)
        {
            if (IsPostBack)
            {
                return;
            }

            rptOgretmenler.DataSource = baglan.tablo_getir("spOgretmenleriGetir");
            rptOgretmenler.DataBind();
        }

        protected void btnExcelKaydet_Click(object sender, EventArgs e)
        {
            string zaman = DateTime.Now.GetDateTimeFormats('g')[2];
            string dosyaAdi = "Öğretmenler - " + zaman;
            fonksiyon.excelOlarakKaydet(dosyaAdi, "spOgretmenleriGetirRapor");
        }

        protected void btnWordKaydet_Click(object sender, EventArgs e)
        {
            string zaman = DateTime.Now.GetDateTimeFormats('g')[2];
            string dosyaAdi = "Öğretmenler - " + zaman;
            fonksiyon.wordOlarakKaydet(dosyaAdi, "spOgretmenleriGetirRapor");
        }
    }
}