﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Dershane.yonetici
{
    public partial class ogrenciler : System.Web.UI.Page
    {
        Baglan baglan = new Baglan();
        Fonksiyon fonksiyon = new Fonksiyon();

        protected void Page_Load(object sender, EventArgs e)
        {
            if (IsPostBack)
            {
                return;
            }

            rptOgrenciler.DataSource = baglan.tablo_getir("spOgrencileriGetir");
            rptOgrenciler.DataBind();
        }

        protected void btnExcelKaydet_Click(object sender, EventArgs e)
        {
            string zaman = DateTime.Now.GetDateTimeFormats('g')[2];
            fonksiyon.excelOlarakKaydet("Öğrenciler - " + zaman, "spOgrencileriGetirRapor");
        }

        protected void btnWordKaydet_Click(object sender, EventArgs e)
        {
            string zaman = DateTime.Now.GetDateTimeFormats('g')[2];
            fonksiyon.wordOlarakKaydet("Öğrenciler - " + zaman, "spOgrencileriGetirRapor");
        }
    }
}