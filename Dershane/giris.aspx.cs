using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Dershane
{
    public partial class giris : System.Web.UI.Page
    {
        Baglan baglan = new Baglan();
        Fonksiyon fonksiyon = new Fonksiyon();

        protected void Page_Load(object sender, EventArgs e)
        {
            if (IsPostBack)
            {
                return;
            }

            if (Request.Browser.Cookies)
            {
                if (Request.Cookies["giris"] != null)
                {
                    int kullaniciID = int.Parse(Request.Cookies["giris"]["id"]);
                    string sifre = Request.Cookies["giris"]["sifre"];
                    string yetki = Request.Cookies["giris"]["yetki"];

                    yetki = fonksiyon.yetkiVarMi(kullaniciID, sifre, yetki);

                    if (yetki == "var")
                    {
                        Response.Redirect("anasayfa.aspx?yetki=" + yetki, false);
                    }
                    else
                    {
                        Response.Redirect("giris.aspx?yetki=" + yetki, false);
                    }
                }
            }
            else
            {
                Response.Redirect("giris.aspx?cerez=yok", false);
            }
        }

        protected void btnGiris_Click(object sender, EventArgs e)
        {
            string kullaniciAdi = txtKullaniciAdi.Text;
            string sifre = txtSifre.Text;
            string yetki = ddlYetki.SelectedItem.Value;
            int kullaniciID = fonksiyon.kullaniciIDGetir(kullaniciAdi, yetki);
            string yetkiVarMi = "yok";

            try
            {
                yetkiVarMi = fonksiyon.yetkiVarMi(kullaniciID, sifre, yetki);
            }
            catch (Exception)
            {
                yetkiVarMi = "yok";
            }

            if (yetkiVarMi == "var")
            {
                fonksiyon.cerezOlustur(kullaniciID, sifre, yetki);
                Response.Redirect(yetki + "/anasayfa.aspx?yetki=" + yetkiVarMi, false);
            }
            else
            {
                Response.Redirect("giris.aspx?yetki=" + yetkiVarMi, false);
            }
        }
    }
}