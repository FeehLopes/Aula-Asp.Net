using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Projeto.Views
{
    public partial class Entrar : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnEntrarTurma_Click(object sender, EventArgs e)
        {
            Response.Redirect("CadastrarTurma.aspx");
        }

        protected void btnEntrarAluno_Click(object sender, EventArgs e)
        {
            Response.Redirect("CadastrarAluno.aspx");
        }
    }
}