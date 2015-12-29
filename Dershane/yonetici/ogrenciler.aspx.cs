using System;
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
            LinkButton btnExcel = (LinkButton)sender;
            string gelenDegisken = btnExcel.CommandName;
            string gelenDeger = btnExcel.CommandArgument;
            string durum = "bos", cinsiyet = "bos", grupAdi = "bos";
            string zaman = DateTime.Now.GetDateTimeFormats('g')[2];
            string dosyaAdi = "Öğrenciler - " + zaman;

            if (gelenDegisken == "@durum")
            {
                durum = gelenDeger;
            }
            else if (gelenDegisken == "@cinsiyet")
            {
                cinsiyet = gelenDeger;
            }
            else if (gelenDegisken == "@grupAdi")
            {
                grupAdi = gelenDeger;
            }
            else if (gelenDegisken == "@durum, @cinsiyet")
            {
                durum = "Aktif";
                cinsiyet = "Erkek";
            }

            object[,] icerik = { { "@durum", durum }, { "@cinsiyet", cinsiyet }, { "@grupAdi", grupAdi } };

            fonksiyon.excelOlarakKaydet(dosyaAdi, icerik, "spOgrencileriGetirRapor");
        }

        protected void btnWordKaydet_Click(object sender, EventArgs e)
        {
            LinkButton btnWord = (LinkButton)sender;
            string gelenDegisken = btnWord.CommandName;
            string gelenDeger = btnWord.CommandArgument;
            string durum = "bos", cinsiyet = "bos", grupAdi = "bos";
            string zaman = DateTime.Now.GetDateTimeFormats('g')[2];
            string dosyaAdi = "Öğrenciler - " + zaman;

            if (gelenDegisken == "@durum")
            {
                durum = gelenDeger;
            }
            else if (gelenDegisken == "@cinsiyet")
            {
                cinsiyet = gelenDeger;
            }
            else if (gelenDegisken == "@grupAdi")
            {
                grupAdi = gelenDeger;
            }
            else if (gelenDegisken == "@durum, @cinsiyet")
            {
                durum = "Aktif";
                cinsiyet = "Erkek";
            }

            object[,] icerik = { { "@durum", durum }, { "@cinsiyet", cinsiyet }, { "@grupAdi", grupAdi } };

            fonksiyon.wordOlarakKaydet(dosyaAdi, icerik, "spOgrencileriGetirRapor");
        }
    }
}