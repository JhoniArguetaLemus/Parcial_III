using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MySql.Data.MySqlClient;
using System.Data;


namespace Parcial_III
{
    public partial class login : System.Web.UI.Page
    {

        MySqlConnection con = new MySqlConnection(@"Data Source=localhost; port=3306; Initial Catalog=registro_estudiantes; User Id=root; password=''");


        protected void Page_Load(object sender, EventArgs e)
        {
           

        }

        protected void txtIngresar_Click(object sender, EventArgs e)
        {
            con.Open();
            MySqlCommand cmd = con.CreateCommand();
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = "select * from estudiantes where usuario ='" + usuario.Text + "' and contraseña = '" + txtPassword.Text + "'";
            cmd.ExecuteNonQuery();

            DataTable dt = new DataTable();

            MySqlDataAdapter adaptador = new MySqlDataAdapter(cmd);

            adaptador.Fill(dt);

            foreach (DataRow dr in dt.Rows)
            {
                Session["usuario"] = dr["usuario"].ToString();
                

                string facultad = dr["facultad"].ToString();

                if (facultad== "ADM")
                {
                    Response.Redirect("Administracion.aspx");
                }else if (facultad == "TEC")
                {
                    Response.Redirect("MenúTEC.aspx");
                }else if (facultad == "Salud")
                {
                    Response.Redirect("MenúSalud.aspx");
                }
               

            }

            con.Close();
            lbError.Text = "Usuario o contraseña inválidos";
        }
    }
}