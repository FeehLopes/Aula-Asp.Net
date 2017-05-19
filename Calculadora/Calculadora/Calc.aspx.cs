using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Calculadora
{
    public partial class Calc : System.Web.UI.Page
    {
        public string NomeUsuario
        {
            get
            {
                return ViewState["NomeUsuario"].ToString();

            }
            set
            {
                ViewState["NomeUsuario"].ToString();
            }
        }

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSoma_Click(object sender, EventArgs e)
        {

            //double resultado = Convert.ToDouble(txtValor1.Text) + Convert.ToDouble(txtValor2.Text);

            //txtResultado.Text = resultado.ToString(); Pegando valores diretos

            //Armazena 
            ViewState["valor1"] = txtValor1.Text;
            
            ViewState["valor2"] = txtValor2.Text;

            double resultado = Convert.ToDouble(ViewState["valor1"]) + Convert.ToDouble(ViewState["valor2"]);

            txtResultado.Text = resultado.ToString();

        }

        protected void btnIgual_Click(object sender, EventArgs e)
        {
            Session["valor1"] = txtValor1.Text;
            Session["valor2"] = txtValor2.Text;

            Response.Redirect("~/Calculadora2.aspx");
        }
    }
}