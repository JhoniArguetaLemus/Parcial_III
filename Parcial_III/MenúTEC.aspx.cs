using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Parcial_III
{
    public partial class Menú2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            lbBienvenida.Text = "¡Bienvenido /a:! " + "  " + Session["usuario"].ToString();
        }
    }
}