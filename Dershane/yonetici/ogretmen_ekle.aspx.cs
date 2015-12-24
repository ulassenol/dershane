using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Dershane.yonetici
{
    public partial class ogretmen_ekle : System.Web.UI.Page
    {
        Baglan baglan = new Baglan();
        Fonksiyon fonksiyon = new Fonksiyon();

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnEkle_Click(object sender, EventArgs e)
        {
            object[,] icerik = { { "@tcNo", txtTcNo.Text }, { "@ad", txtAdi.Text }, { "@soyad", txtSoyadi.Text }, { "@cinsiyet", rblCinsiyet.SelectedItem.Text }, { "@dogumTarih", Convert.ToDateTime(txtDogumTarihi.Text) }, { "@adres", txtAdresi.Text }, { "@brans", txtBrans.Text }, { "@resim", fonksiyon.fotografEkleOgretmen(fileFotograf, txtAdi.Text, txtSoyadi.Text) }, { "@telefon", txtTelefonNumarasi.Text }, { "@eposta", txtEPosta.Text }, { "@durum", rblDurum.SelectedItem.Text } };
            baglan.calistir(icerik, "spOgretmenEkle");
        }

        protected void btnExcelKaydet_Click(object sender, EventArgs e)
        {
            DataTable datatable = fonksiyon.excelVeriOku(fileExcel, "Sayfa1");
            object[] tablo = fonksiyon.ogretmenTablosu();
            string prosedur = "spOgretmenEkleTablo";

            fonksiyon.tabloyuVeritabaninaKaydet(tablo, datatable, prosedur);
        }
    }
}