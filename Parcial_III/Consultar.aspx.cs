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
    public partial class Administracion : System.Web.UI.Page
    {

        MySqlConnection con = new MySqlConnection(@"Data Source=localhost; Initial Catalog=registro_estudiantes; port=3306; User Id=root; password=''");
        protected void Page_Load(object sender, EventArgs e)
        {

           
        }

        protected void btnConsular_Click(object sender, EventArgs e)
        {
            DataTable registros = new DataTable();

            registros.Columns.AddRange(new DataColumn[]{
                new DataColumn("Id", typeof(string)),
                new DataColumn("Código", typeof(string)),
                new DataColumn("Nombre", typeof(string)),
                new DataColumn("Usuario", typeof(string)),
                new DataColumn("Contraseña", typeof(string)),
                new DataColumn("Teléfono", typeof(string)),
                new DataColumn("Correo", typeof(string)),
                new DataColumn("Facultad", typeof(string)),
                new DataColumn("Carrera", typeof(string))

            });

            con.Open();

            string cadena = "SELECT id, código, nombre, usuario, contraseña, telefono, correo, facultad, carrera FROM  estudiantes";
            MySqlCommand cmd = new MySqlCommand(cadena, con);
            MySqlDataReader dr = cmd.ExecuteReader();

            if (dr.HasRows)
            {
                while (dr.Read())
                {
                    registros.Rows.Add(
                        dr["id"].ToString(),
                        dr["código"].ToString(),
                        dr["nombre"].ToString(),
                        dr["usuario"].ToString(),
                        dr["contraseña"].ToString(),
                        dr["telefono"].ToString(),
                        dr["correo"].ToString(),
                        dr["facultad"].ToString(),
                        dr["carrera"].ToString()
                        );
                }
            }

            con.Close();

            GVConsultar.DataSource = registros;
            GVConsultar.DataBind();
        }


        protected void gv_Lista_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName == "Eliminar")
            {
                int index = Convert.ToInt32(e.CommandArgument);
                int valor = Convert.ToInt32(GVConsultar.DataKeys[index].Value);
                Response.Redirect("Eliminar.aspx?key=" + valor);
            }

            if (e.CommandName == "Modificar")
            {
                int index = Convert.ToInt32(e.CommandArgument);
                int valor = Convert.ToInt32(GVConsultar.DataKeys[index].Value);
                Response.Redirect("Modificar.aspx?key=" + valor);
            }

             
        }
        protected void GVConsultar_SelectedIndexChanged(object sender, EventArgs e)
        {

        }


    }
}