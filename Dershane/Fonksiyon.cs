using System;
using System.Collections.Generic;
using System.Data;
using System.Data.OleDb;
using System.Data.SqlClient;
using System.Drawing;
using System.Drawing.Imaging;
using System.Globalization;
using System.IO;
using System.Linq;
using System.Net;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;

namespace Dershane
{
    public class Fonksiyon : System.Web.UI.Page
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

        public SqlDataReader yetkiliBilgisiGetir(int kullaniciID, string yetki)
        {
            object[,] icerik = { { "@kullaniciID", kullaniciID }, { "@yetki", yetki } };
            SqlDataReader dra = null;

            try
            {
                dra = baglan.calistir_dra(icerik, "spYetkiliBilgisiGetir");
            }
            catch (Exception)
            {
            }

            return dra;
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
                    sonResim.Save(Server.MapPath("~/resimler/ogretmen/") + resimAdi, ImageFormat.Jpeg);
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

        public void excelOlarakKaydet(string dosyaAdi, object[,] icerik, string prosedurAdi)
        {
            GridView gridview = new GridView();
            gridview.AllowPaging = false;
            gridview.DataSource = baglan.tablo_getir(icerik, prosedurAdi);
            gridview.DataBind();
            gridview.HeaderRow.Style.Add("background-color", "#FFFFFF");

            HttpContext.Current.Response.ContentEncoding = System.Text.Encoding.GetEncoding("windows-1254");
            HttpContext.Current.Response.Charset = "windows-1254";
            HttpContext.Current.Response.ClearContent();
            HttpContext.Current.Response.AddHeader("content-disposition", "attachment;filename=" + dosyaAdi + ".xls");
            HttpContext.Current.Response.ContentType = "application/excel";

            StringWriter stringwriter = new StringWriter();
            HtmlTextWriter htmltextwriter = new HtmlTextWriter(stringwriter);

            HtmlForm form = new HtmlForm();
            form.Controls.Add(gridview);
            this.Controls.Add(form);
            form.RenderControl(htmltextwriter);

            HttpContext.Current.Response.Write(stringwriter.ToString());
            HttpContext.Current.Response.End();
        }

        public void wordOlarakKaydet(string dosyaAdi, object[,] icerik, string prosedurAdi)
        {
            GridView gridview = new GridView();
            gridview.AllowPaging = false;
            gridview.DataSource = baglan.tablo_getir(icerik, prosedurAdi);
            gridview.DataBind();
            gridview.HeaderRow.Style.Add("background-color", "#FFFFFF");

            HttpContext.Current.Response.Clear();
            HttpContext.Current.Response.Buffer = true;
            HttpContext.Current.Response.ContentEncoding = System.Text.Encoding.GetEncoding("windows-1254");
            HttpContext.Current.Response.Charset = "windows-1254";
            HttpContext.Current.Response.AddHeader("content-disposition", "attachment;filename=" + dosyaAdi + ".doc");
            HttpContext.Current.Response.ContentType = "application/vnd.ms-word ";

            StringWriter stringwriter = new StringWriter();
            HtmlTextWriter htmltextwriter = new HtmlTextWriter(stringwriter);

            gridview.RenderControl(htmltextwriter);
            HttpContext.Current.Response.Output.Write(stringwriter.ToString());
            HttpContext.Current.Response.Flush();
            HttpContext.Current.Response.End();
        }

        public void excelOlarakKaydet(string dosyaAdi, string prosedurAdi)
        {
            GridView gridview = new GridView();
            gridview.AllowPaging = false;
            gridview.DataSource = baglan.tablo_getir(prosedurAdi);
            gridview.DataBind();
            gridview.HeaderRow.Style.Add("background-color", "#FFFFFF");

            HttpContext.Current.Response.ContentEncoding = System.Text.Encoding.GetEncoding("windows-1254");
            HttpContext.Current.Response.Charset = "windows-1254";
            HttpContext.Current.Response.ClearContent();
            HttpContext.Current.Response.AddHeader("content-disposition", "attachment;filename=" + dosyaAdi + ".xls");
            HttpContext.Current.Response.ContentType = "application/excel";

            StringWriter stringwriter = new StringWriter();
            HtmlTextWriter htmltextwriter = new HtmlTextWriter(stringwriter);

            HtmlForm form = new HtmlForm();
            form.Controls.Add(gridview);
            this.Controls.Add(form);
            form.RenderControl(htmltextwriter);

            HttpContext.Current.Response.Write(stringwriter.ToString());
            HttpContext.Current.Response.End();
        }

        public void wordOlarakKaydet(string dosyaAdi, string prosedurAdi)
        {
            GridView gridview = new GridView();
            gridview.AllowPaging = false;
            gridview.DataSource = baglan.tablo_getir(prosedurAdi);
            gridview.DataBind();
            gridview.HeaderRow.Style.Add("background-color", "#FFFFFF");

            HttpContext.Current.Response.Clear();
            HttpContext.Current.Response.Buffer = true;
            HttpContext.Current.Response.ContentEncoding = System.Text.Encoding.GetEncoding("windows-1254");
            HttpContext.Current.Response.Charset = "windows-1254";
            HttpContext.Current.Response.AddHeader("content-disposition", "attachment;filename=" + dosyaAdi + ".doc");
            HttpContext.Current.Response.ContentType = "application/vnd.ms-word ";

            StringWriter stringwriter = new StringWriter();
            HtmlTextWriter htmltextwriter = new HtmlTextWriter(stringwriter);

            gridview.RenderControl(htmltextwriter);
            HttpContext.Current.Response.Output.Write(stringwriter.ToString());
            HttpContext.Current.Response.Flush();
            HttpContext.Current.Response.End();
        }

        public DataTable excelVeriOku(FileUpload dosya, string sayfaAdi)
        {
            string excelSorgu = "SELECT * FROM [" + sayfaAdi + "$]";

            string dosyaAdi = dosya.PostedFile.FileName;
            string dosyaYolu = Server.MapPath("~/dosyalar/excel/" + dosyaAdi);
            dosya.SaveAs(dosyaYolu);

            string baglantiStr = "Provider=Microsoft.Jet.OLEDB.4.0;Data Source=" + dosyaYolu + ";Extended Properties=Excel 8.0";
            OleDbConnection baglanti = new OleDbConnection(baglantiStr);
            baglanti.Open();

            OleDbCommand objCmdSelect = new OleDbCommand(excelSorgu, baglanti);
            OleDbDataAdapter objAdapter = new OleDbDataAdapter();
            objAdapter.SelectCommand = objCmdSelect;

            DataSet objDataset = new DataSet();
            objAdapter.Fill(objDataset, "ExceldenOku");
            DataTable tablo = objDataset.Tables[0];

            baglanti.Close();

            return tablo;
        }

        public void tabloyuVeritabaninaKaydet(object[] tablo, DataTable datatable, string prosedur)
        {
            int sutunSayisi = tablo.Length;
            int satirSayisi = datatable.Rows.Count;
            object[,] icerik = new object[sutunSayisi, 2];

            for (int i = 0; i < satirSayisi; i++)
            {
                for (int j = 0; j < sutunSayisi; j++)
                {
                    icerik[j, 0] = tablo[j];
                    icerik[j, 1] = datatable.Rows[i][j + 1];
                }

                baglan.calistir(icerik, prosedur);
            }
        }

        public object[] ogretmenTablosu()
        {
            object[] ogretmenTablosu = { "@ad", "@soyad", "@tcNo", "@cinsiyet", "@adres", "@brans", "@telefon", "@eposta", "@durum" };

            return ogretmenTablosu;
        }

    }
}