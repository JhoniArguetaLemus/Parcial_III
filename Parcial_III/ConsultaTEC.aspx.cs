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
    public partial class Consulta2 : System.Web.UI.Page
    {
        MySqlConnection con = new MySqlConnection(@"Data Source=localhost; Initial Catalog=registro_estudiantes; port=3306; User Id=root; password='' ");
        protected void Page_Load(object sender, EventArgs e)
        {
           
        }

        protected void btnConsular_Click(object sender, EventArgs e)
        {
            DataTable registros = new DataTable();

            registros.Columns.AddRange(new DataColumn[]{
                new DataColumn("Código", typeof(string)),
                new DataColumn("Nombre", typeof(string)),
                new DataColumn("Carrera", typeof(string)),
                new DataColumn("Correo", typeof(string)),
                 new DataColumn("Teléfono", typeof(string))

            });

            con.Open();
            string facultad = "TEC";

            string cadena = "SELECT código, nombre, carrera,correo, telefono FROM  estudiantes WHERE facultad = '" + facultad +"'" ;
            MySqlCommand cmd = new MySqlCommand(cadena, con);
            MySqlDataReader dr = cmd.ExecuteReader();

            if (dr.HasRows)
            {
                while (dr.Read())
                {
                    registros.Rows.Add(
                        dr["código"].ToString(),
                        dr["nombre"].ToString(),
                        dr["carrera"].ToString(),
                        dr["correo"].ToString(),
                        dr["telefono"].ToString()
                        
                        );
                }
            }

            con.Close();

            GVConsultar.DataSource = registros;
            GVConsultar.DataBind();
        }
    }
}