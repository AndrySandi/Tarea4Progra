using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Reflection.Emit;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Tarea_4
{
    public partial class Inicio : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {


        }

        protected void TextBox1_TextChanged(object sender, EventArgs e)
        {

        }

        protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
        {
            SqlTarea4.Insert();

        }

        protected void ImageButton1_Click1(object sender, ImageClickEventArgs e)
        {
            SqlTarea4.Delete();

        }

        protected void btnEdades_Click(object sender, EventArgs e)
        {
            porcentajeEdades();
        }

        protected void btnGenero_Click(object sender, EventArgs e)
        {
            porcentajeGenero();
        }

        protected void btnAsegurados_Click(object sender, EventArgs e)
        {
            porcentajeAsegurados();
        }

        protected void porcentajeEdades()
        {
            float sumatoria = 0; int contNiños = 0; int contJovenes = 0; int contAdultos = 0;
            String s = System.Configuration.ConfigurationManager.ConnectionStrings["HospitalConnectionString3"].ConnectionString;
            SqlConnection conexion = new SqlConnection(s);
            conexion.Open();

            SqlCommand comando = new SqlCommand("select * from Pacientes ", conexion);
            SqlDataReader registro = comando.ExecuteReader();

            while (registro.Read())
            {
                if (float.Parse(registro["Edad"].ToString()) <= 13)
                {
                    sumatoria++;
                    contNiños++;
                }

                if (float.Parse(registro["Edad"].ToString()) > 13 && float.Parse(registro["Edad"].ToString()) < 35)
                {
                    sumatoria++;
                    contJovenes++;
                }

                if (float.Parse(registro["Edad"].ToString()) > 34)
                {
                    sumatoria++;
                    contAdultos++;
                }
            }

           lbl.Text = "El porcentaje de niños es de: " + ((contNiños * 100) / sumatoria).ToString() + "%" 
                  + "\nEl porcentaje de jóvenes es de: " + ((contJovenes * 100) / sumatoria).ToString() + "%"  
                  + "\nEl porcentaje de adultos es de: " + ((contAdultos * 100) / sumatoria).ToString() + "%";

            conexion.Close();
        }

        protected void porcentajeGenero()
        {
            float sumatoria = 0; int contMas = 0; int contFem = 0;
            String s = System.Configuration.ConfigurationManager.ConnectionStrings["HospitalConnectionString3"].ConnectionString;
            SqlConnection conexion = new SqlConnection(s);
            conexion.Open();

            SqlCommand comando = new SqlCommand("select * from Pacientes ", conexion);
            SqlDataReader registro = comando.ExecuteReader();

            while (registro.Read())
            {
                if (registro["Genero"].Equals("F") || registro["Genero"].Equals("F"))
                {
                    sumatoria++;
                    contFem++;
                }

                if (registro["Genero"].Equals("M") || registro["Genero"].Equals("M"))
                {
                    sumatoria++;
                    contMas++;
                }
            }

            lbl.Text = "El porcentaje de mujeres es de: " + ((contFem * 100) / sumatoria).ToString() + "%"
                   + "\nEl porcentaje de hombres es de: " + ((contMas * 100) / sumatoria).ToString() + "%";

            conexion.Close();
        }

        protected void porcentajeAsegurados()
        {
            float sumatoria = 0; int contSI = 0; int contNO = 0;
            String s = System.Configuration.ConfigurationManager.ConnectionStrings["HospitalConnectionString3"].ConnectionString;
            SqlConnection conexion = new SqlConnection(s);
            conexion.Open();
            SqlCommand comando = new SqlCommand("select * from Pacientes ", conexion);
            SqlDataReader registro = comando.ExecuteReader();

            while (registro.Read())
            {
                if (registro["Seguro"].ToString() == "True")
                {
                    sumatoria++;
                    contSI++;
                }

                if (registro["Seguro"].ToString().Equals("False"))
                {
                    sumatoria++;
                    contNO++;
                }

            }

            lbl.Text = "El porcentaje de personas con seguro es de: " + ((contSI * 100) / sumatoria).ToString() + "%"
                   + "\nEl porcentaje de personas sin seguro es de: " + ((contNO * 100) / sumatoria).ToString() + "%";

            conexion.Close();
        }


    }



}