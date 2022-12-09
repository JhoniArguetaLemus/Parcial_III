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
    public partial class Registro : System.Web.UI.Page
    {
        MySqlConnection con = new MySqlConnection(@"Data Source=localhost; port=3306; Initial Catalog=registro_estudiantes; User Id=root; password=''");



        protected void Page_Load(object sender, EventArgs e)
        {
           
            if (Session["usuario"] == null)
            {
                Response.Redirect("login.aspx");
            }

            lbBienvenida.Text = "¡Bienvenido/a!: " + Session["usuario"].ToString();


        }

        protected void txtRegistrar_Click(object sender, EventArgs e)
        {

            con.Open();

            MySqlCommand cmd = con.CreateCommand();
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = "INSERT INTO estudiantes ( código, nombre, usuario, contraseña, telefono , correo, facultad, carrera) VALUES ('" + txtCodigo.Text + "','" +txtNombre.Text + "','" +txtUsuario.Text + "','" + txtContrasenna.Text + "','" + txtTelefono.Text + "','" + txtCorreo.Text + "','" + ddFacultad.Text + "', '"+ddCarrera.Text+ "' )";

            cmd.ExecuteNonQuery();

            con.Close();

            lbRegistro.Text = "Datos guardados correctamente!";

            LimpiarCampos();

        }

        public void LimpiarCampos()
        {
            txtCodigo.Text = "";
            txtNombre.Text = "";
            txtUsuario.Text = "";
            txtContrasenna.Text = "";
            txtTelefono.Text = "";
            txtCorreo.Text = "";
        }

  
        protected void ddCarrera_SelectedIndexChanged(object sender, EventArgs e)
        {
           
        }

        protected void ddFacultad_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (ddFacultad.Text=="Ciencia y Tecnología"){
                ddCarrera.Items.FindByText("Lic. en Enfermería").Enabled = false;

            }
        }
    }
}