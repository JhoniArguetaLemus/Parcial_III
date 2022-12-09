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
    public partial class Modificar : System.Web.UI.Page
    {
        MySqlConnection con = new MySqlConnection(@"Data Source=localhost; Initial Catalog=registro_estudiantes; port=3306; User Id=root; password=''");
        protected void Page_Load(object sender, EventArgs e)
        {
            idOculto.Visible = false;
            string valor = Convert.ToString(Request.QueryString["key"]);
            con.Open();

            string cadena = "SELECT id, código, nombre usuario, contraseña, telefono, correo, facultad, carrera FROM estudiantes WHERE Id='" + valor + "'";

            MySqlCommand cmd = new MySqlCommand(cadena, con);
            cmd.ExecuteNonQuery();

            DataTable dt = new DataTable();
            MySqlDataAdapter da = new MySqlDataAdapter(cmd);
            da.Fill(dt);

            foreach(DataRow dr in dt.Rows)
            {
                idOculto.Text = dr["id"].ToString();
            }

            con.Close();
        }

        protected void btnModificar_Click(object sender, EventArgs e)
        {
            con.Open();
            
            string cadena = "UPDATE estudiantes SET código='" + txtCodigo.Text + "',nombre='" + txtNombre.Text + "',usuario='" + txtUsuario.Text + "',contraseña='" + txtContrasenna.Text + "',telefono='" + txtTelefono.Text + "',correo='" + txtCorreo.Text + "',facultad='" + ddFacultad.Text + "',carrera='" + ddCarrera.Text + "'WHERE Id=" + idOculto.Text;

            MySqlCommand cmd = new MySqlCommand(cadena, con);
            cmd.ExecuteNonQuery();
            con.Close();
            lbRegistro.Text = "Datos Guardados";
            LimpiarCampos();
        }

        protected void LimpiarCampos()
        {
            idOculto.Text = "";
            txtCodigo.Text = "";
            txtNombre.Text = "";
            txtUsuario.Text = "";
            txtContrasenna.Text = "";
            txtTelefono.Text = "";
            txtCorreo.Text = "";
            
        }
    }
}