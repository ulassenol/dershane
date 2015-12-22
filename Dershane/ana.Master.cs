using System;
using System.Collections.Generic;
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
                    yetki = fonksiyon.yetkiVarMi(kullaniciID, sifre, yetki);

                    if (yetki == "yok")
                    {
                        Response.Redirect("~/giris.aspx?yetki=" + yetki, false);
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