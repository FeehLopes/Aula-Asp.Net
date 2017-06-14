using Projeto.Controller;
using Projeto.Model;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Projeto.Views
{
    public partial class ListarTurma : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            TurmaController ctrl = new TurmaController();

            List<Turma> lista = ctrl.ListarTurmas();
            gvTurmas.DataSource = lista.OrderBy(a => a.Id);
            gvTurmas.DataBind();
        }
        protected void AtualizarLista()
        {
            TurmaController ctrl = new TurmaController();

            List<Turma> lista = ctrl.ListarTurmas();
            gvTurmas.DataSource = lista.OrderBy(a => a.Id);
            gvTurmas.DataBind();

        }

        protected void btnExcluir_Click(object sender, EventArgs e)
        {
            Turma turma = new Turma();

            turma.Quantidade = txtQuantAlunos.Text;
            turma.Sala = txtSala.Text;
            turma.Turno = txtTurno.Text;
            turma.Curso = txtCurso.Text;
            

            TurmaController ctrl = new TurmaController();
            ctrl.Excluir(turma);
            AtualizarLista();
        }

        protected void btnEditar_Click(object sender, EventArgs e)
        {
            Turma turma = new Turma();
            TurmaController ctrl = new TurmaController();
            turma = ctrl.BuscarTurmaPorId(turma.Id);

            if (turma != null)
            {

                turma.Quantidade= txtQuantAlunos.Text;
                turma.Sala = txtSala.Text;
                turma.Turno = txtTurno.Text;
                turma.Curso = txtCurso.Text;
                ctrl.Editar(turma);
                AtualizarLista();

            }

        }

        protected void btnVoltar_Click(object sender, EventArgs e)
        {
            Response.Redirect("CadastrarTurma.aspx");
        }
    }
}