using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Dershane
{
    public partial class ana : System.Web.UI.MasterPage
    {
        Fonksiyon fonksiyon = new Fonksiyon();

        protected void Page_Load(object sender, EventArgs e)
        {
            string aktifSayfa = Page.AppRelativeVirtualPath.ToString();
            if (aktifSayfa == "~/yonetici/anasayfa.aspx")
            {
                menuAnasayfa.Attributes.Add("class", "active");
            }
            else if (aktifSayfa == "~/yonetici/ogrenciler.aspx" || aktifSayfa == "~/yonetici/ogrenci_ekle.aspx" || aktifSayfa == "~/yonetici/ogrenciler_silinen.aspx")
            {
                menuOgrenci.Attributes.Add("class", "active open");
            }
            else if (aktifSayfa == "~/yonetici/veliler.aspx" || aktifSayfa == "~/yonetici/veli_ekle.aspx")
            {
                menuVeli.Attributes.Add("class", "active open");
            }
            else if (aktifSayfa == "~/yonetici/ogretmenler.aspx" || aktifSayfa == "~/yonetici/ogretmen_ekle.aspx")
            {
                menuOgretmen.Attributes.Add("class", "active open");
            }
            else if (aktifSayfa == "~/yonetici/menuYoklama.aspx")
            {
                menuYoklama.Attributes.Add("class", "active");
            }
            else if (aktifSayfa == "~/yonetici/ders_programlari.aspx")
            {
                menuDersProgrami.Attributes.Add("class", "active");
            }
            else if (aktifSayfa == "~/yonetici/portallar.aspx")
            {
                menuPortal.Attributes.Add("class", "active");
            }
            else if (aktifSayfa == "~/yonetici/sinavlar.aspx")
            {
                menuSinav.Attributes.Add("class", "active");
            }
            else if (aktifSayfa == "~/yonetici/sinav_sonuclari.aspx")
            {
                menuSinavSonucu.Attributes.Add("class", "active");
            }
            else if (aktifSayfa == "~/yonetici/siniflar.aspx")
            {
                menuSinif.Attributes.Add("class", "active");
            }
            else if (aktifSayfa == "~/yonetici/bolumler.aspx")
            {
                menuBolum.Attributes.Add("class", "active");
            }
            else if (aktifSayfa == "~/yonetici/dersler.aspx")
            {
                menuDers.Attributes.Add("class", "active");
            }
            else if (aktifSayfa == "~/yonetici/donemler.aspx")
            {
                menuDonem.Attributes.Add("class", "active");
            }
            else if (aktifSayfa == "~/yonetici/gruplar.aspx")
            {
                menuGrup.Attributes.Add("class", "active");
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

                if (yetki != "yonetici")
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
                            imgYetkiliFoto.ImageUrl = "../resimler/yonetici/" + dra["resim"];
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