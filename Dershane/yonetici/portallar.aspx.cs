using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Dershane.yonetici
{
    public partial class portallar : System.Web.UI.Page
    {
        Baglan baglan = new Baglan();
        Fonksiyon fonksiyon = new Fonksiyon();

        protected void Page_Load(object sender, EventArgs e)
        {
            if (IsPostBack)
            {
                return;
            }

            ddlKisi.DataSource = baglan.tablo_getir("spPortalGetirYetkisizOgrenci");
            ddlKisi.DataTextField = "kisi";
            ddlKisi.DataValueField = "ogrenciID";
            ddlKisi.DataBind();

            rptPortal.DataSource = baglan.tablo_getir("spPortallariGetir");
            rptPortal.DataBind();
        }

        protected void btnEkle_Click(object sender, EventArgs e)
        {
            object[,] icerik = { { "@kullaniciID", ddlKisi.SelectedItem.Value }, { "@kullaniciAdi", txtKullaniciAdi.Text }, { "@sifre", FormsAuthentication.HashPasswordForStoringInConfigFile(txtSifre.Text, "md5") }, { "@yetki", ddlYetki.SelectedItem.Value } };
            baglan.calistir(icerik, "spPortalaEkle");
            Response.Redirect("portallar.aspx?ekle=basarili", false);
        }
    }
}