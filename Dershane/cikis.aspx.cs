using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Dershane
{
    public partial class cikis : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Fonksiyon fonksiyon = new Fonksiyon();
            fonksiyon.cerezSil();
            Response.Redirect("~/giris.aspx?cikis=basarili");
        }
    }
}