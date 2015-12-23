using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Dershane.yonetici
{
    public partial class yoklamalar : System.Web.UI.Page
    {
        Baglan baglan = new Baglan();
        Fonksiyon fonksiyon = new Fonksiyon();

        protected void Page_Load(object sender, EventArgs e)
        {
            if (IsPostBack)
            {
                return;
            }

            ddlOgrenci.DataSource = baglan.tablo_getir("spOgrencileriGetir");
            ddlOgrenci.DataTextField = "ogrenci";
            ddlOgrenci.DataValueField = "ogrenciID";
            ddlOgrenci.DataBind();

            ddlDers.DataSource = baglan.tablo_getir("spDersProgramiGetir");
            ddlDers.DataTextField = "yoklama";
            ddlDers.DataValueField = "dersProgramiID";
            ddlDers.DataBind();

            rptYoklamalar.DataSource = baglan.tablo_getir("spYoklamalariGetir");
            rptYoklamalar.DataBind();
        }

        protected void btnEkle_Click(object sender, EventArgs e)
        {
            object[,] icerik = { { "@ogrenciID", ddlOgrenci.SelectedItem.Value }, { "@durum", ddlYoklamaDurumu.SelectedItem.Text }, { "@tarih", Convert.ToDateTime(txtTarih.Text) }, { "@dersProgramiID", ddlDers.SelectedItem.Value } };
            baglan.calistir(icerik, "spYoklamaEkle");
            Response.Redirect("yoklamalar.aspx?ekle=basarili", false);
        }
    }
}