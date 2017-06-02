using ProjetoTurma.Controller;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ProjetoTurma.Views
{
    public partial class ListaCurso : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            CursoController ctrl = new CursoController();

            List<Curso> lista = ctrl.ListarCursos();

            gvCurso.DataSource = ctrl.ListarCursos();
            gvCurso.DataBind();
        }
    }
}