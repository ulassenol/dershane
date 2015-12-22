using System;
using System.Collections.Generic;
using System.Drawing;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI.WebControls;

namespace Dershane
{
    public class Fonksiyon
    {
        Baglan baglan = new Baglan();

        public int kullaniciIDGetir(string kullaniciAdi, string yetki)
        {
            int kullaniciID = 0;
            object[,] icerik = { { "@kullaniciAdi", kullaniciAdi }, { "@yetki", yetki } };

            try
            {
                kullaniciID = (int)baglan.tek_veri_getir(icerik, "spKullaniciIDGetir");
            }
            catch (Exception)
            {
                kullaniciID = 0;
            }

            return kullaniciID;
        }

        public string yetkiVarMi(int kullaniciID, string sifre, string yetki)
        {
            object[,] icerik = { { "@kullaniciID", kullaniciID }, { "@sifre", sifre }, { "@yetki", yetki } };

            try
            {
                yetki = baglan.tek_veri_getir(icerik, "spYetkiVarMi").ToString();
            }
            catch (Exception)
            {
                yetki = "yok";
            }

            return yetki;
        }

        public void cerezOlustur(int kullaniciID, string sifre, string yetki)
        {
            HttpCookie cookie = new HttpCookie("giris");
            cookie["yetki"] = yetki;
            cookie["id"] = kullaniciID.ToString();
            cookie["sifre"] = sifre;
            cookie.Expires = DateTime.Now.AddHours(24d);
            HttpContext.Current.Response.Cookies.Add(cookie);
        }

        public void cerezSil()
        {
            HttpContext.Current.Response.Cookies["giris"].Expires = DateTime.Now.AddDays(-1);
        }

        public string fotografEkleOgretmen(FileUpload resim, string ad, string soyad)
        {
            string sonuc = "hata";

            try
            {
                string uzanti = Path.GetExtension(resim.FileName).ToLower();

                if (uzanti == ".jpg" || uzanti == ".png" || uzanti == ".jpeg")
                {
                    string resimAdi = (ad + "_" + soyad + uzanti).ToLower();

                    System.Drawing.Image orjResim = System.Drawing.Image.FromStream(resim.PostedFile.InputStream);

                    double genislik = orjResim.Width;
                    double yukseklik = orjResim.Height;

                    if (genislik > 360)
                    {
                        yukseklik = 360.0 * (yukseklik / genislik);
                        genislik = 360;
                    }

                    if (yukseklik > 480)
                    {
                        genislik = 480.0 * (genislik / yukseklik);
                        yukseklik = 480;
                    }

                    Bitmap sonResim = new Bitmap(orjResim, (int)genislik, (int)yukseklik);
                    sonResim.Save(HttpContext.Current.Server.MapPath("~/resimler/ogretmen/") + resimAdi);
                    return sonuc = resimAdi;
                }
                else
                {
                    return sonuc = "format";
                }
            }
            catch (Exception)
            {
                return sonuc = "hata";
            }
        }


        public string fotografEkleOgrenci(FileUpload resim, string ad, string soyad)
        {
            string sonuc = "hata";

            try
            {
                string uzanti = Path.GetExtension(resim.FileName).ToLower();

                if (uzanti == ".jpg" || uzanti == ".png" || uzanti == ".jpeg")
                {
                    string resimAdi = (ad + "_" + soyad + uzanti).ToLower();

                    System.Drawing.Image orjResim = System.Drawing.Image.FromStream(resim.PostedFile.InputStream);

                    double genislik = orjResim.Width;
                    double yukseklik = orjResim.Height;

                    if (genislik > 360)
                    {
                        yukseklik = 360.0 * (yukseklik / genislik);
                        genislik = 360;
                    }

                    if (yukseklik > 480)
                    {
                        genislik = 480.0 * (genislik / yukseklik);
                        yukseklik = 480;
                    }

                    Bitmap sonResim = new Bitmap(orjResim, (int)genislik, (int)yukseklik);
                    sonResim.Save(HttpContext.Current.Server.MapPath("~/resimler/ogrenci/") + resimAdi);
                    return sonuc = resimAdi;
                }
                else
                {
                    return sonuc = "format";
                }
            }
            catch (Exception)
            {
                return sonuc = "hata";
            }
        }


    }
}