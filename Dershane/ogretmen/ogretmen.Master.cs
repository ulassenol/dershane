using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Dershane.ogretmen
{
    public partial class ogretmen : System.Web.UI.MasterPage
    {
        Fonksiyon fonksiyon = new Fonksiyon();

        protected void Page_Load(object sender, EventArgs e)
        {
            string aktifSayfa = Page.AppRelativeVirtualPath.ToString();
            if (aktifSayfa == "~/ogretmen/anasayfa.aspx")
            {
                menuAnasayfa.Attributes.Add("class", "active");
            }
            else if (aktifSayfa == "~/ogretmen/ogrencilerim.aspx")
            {
                menuOgrencilerim.Attributes.Add("class", "active open");
            }

            if (IsPostBack)
            {
                return;
            }

            if (Request.Cookies["giris"] != null)
            {
                int kullaniciID = int.Parse(Request.Cookies["giris"]["id"]);
                string sifre = Request.Cookies["giris"]["sifre"];
                string yetki = Request.Cookies["giris"]["yetki"];

                if (yetki != "ogretmen")
                {
                    fonksiyon.cerezSil();
                    Response.Redirect("~/giris.aspx?yetki=yok", false);
                }
                else
                {
                    string yetkiVarMi = fonksiyon.yetkiVarMi(kullaniciID, sifre, yetki);

                    if (yetkiVarMi == "yok")
                    {
                        Response.Redirect("~/giris.aspx?yetki=" + yetkiVarMi, false);
                    }
                    else if (yetkiVarMi == "var")
                    {
                        SqlDataReader dra = fonksiyon.yetkiliBilgisiGetir(kullaniciID, yetki);
                        while (dra.Read())
                        {
                            lblYetkiliAdi.Text = dra["ad"] + " " + dra["soyad"];
                            imgYetkiliFoto.ImageUrl = "../resimler/ogretmen/" + dra["resim"];
                        }
                    }
                }
            }
            else
            {
                Response.Redirect("~/giris.aspx?yetki=yok", false);
            }
        }

        protected void btnCikis_Click(object sender, EventArgs e)
        {
            fonksiyon.cerezSil();
            Response.Redirect("~/giris.aspx?cikis=basarili");
        }
    }
}