using ProjetoTurma.Controller;
using ProjetoTurma.Model;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ProjetoTurma.Views
{
    public partial class ListaAluno : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            AlunoController ctrl = new AlunoController();

         

            gvAlunos.DataSource = ctrl.ListarAlunos();
            gvAlunos.DataBind();
                
        }
    }
}