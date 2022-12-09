using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using MySql.Data.MySqlClient;

namespace Parcial_III
{
    public partial class Eliminar : System.Web.UI.Page
    {

        MySqlConnection con = new MySqlConnection(@"Data Source=localhost; Initial Catalog=registro_estudiantes; port=3306; User Id=root; password=''");


        protected void Page_Load(object sender, EventArgs e)
        {
            string valor = Convert.ToString(Request.QueryString["key"]);

            con.Open();
            string cadena = "DELETE FROM estudiantes WHERE Id =" + valor;
            MySqlCommand cmd = new MySqlCommand(cadena,con);
            cmd.ExecuteNonQuery();
            con.Close();

            Response.Redirect("Consultar.aspx");
        }
    }
}