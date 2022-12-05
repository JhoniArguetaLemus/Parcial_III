using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Parcial_III
{
    public partial class Registro : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            ListItem i;

            //facultades
            i = new ListItem("Facultad de Ciencia y Tecnología", "TEC");
            ddLista.Items.Add(i);

            i = new ListItem("Ciencias de la Salud", "Salud");
            ddLista.Items.Add(i);

            i = new ListItem("No aplica", "ADM");
            ddLista.Items.Add(i);
            //carreras- ciencia y tecnologia

            i = new ListItem("Ing. en Gestion y Manejo de Bases de Datos", "Ingeniería en Gestion y Manejo de Bases de Datos");
            ddCarrera.Items.Add(i);

            i = new ListItem("Ing. en Sistemas y Redes Informáticas (Semipresencial)", "Ingeniería en Sistemas y Redes Informáticas (Semipresencial) ");
            ddCarrera.Items.Add(i);


            i = new ListItem("Ing. en Sistemas y Redes Informáticas (Virtual)", "Ingeniería en Sistemas y Redes Informáticas (Virtual)");
            ddCarrera.Items.Add(i);

            i = new ListItem("Téc en Ingeniería en Sistemas y Redes Informáticas", "Técnico en Ingeniería en Sistemas y Redes Informáticas");
            ddCarrera.Items.Add(i);

            i = new ListItem("Téc en Ingeniería en Sistemas y Redes Informáticas (Virtual)", "Técnico en Ingeniería en Sistemas y Redes Informáticas (Virtual)");
            ddCarrera.Items.Add(i);

            //ciencias de la salud

            i = new ListItem("Doctorado en Medicina", "Doctorado en Medicina");
            ddCarrera.Items.Add(i);

            i = new ListItem("Lic. en Enfermería", "Licenciatura en Enfermería");
            ddCarrera.Items.Add(i);

            i = new ListItem("Téc en Enfermería", "Técnico en Enfermería");
            ddCarrera.Items.Add(i);





            i = new ListItem("No aplica", "ADM");
            ddCarrera.Items.Add(i);
            //carreras-ciencias de la salud



        }
    }
}