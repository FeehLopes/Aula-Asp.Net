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
            Turma turmas = new Turma();

            turmas.Quantidade = txtQuantAlunos.Text;
            turmas.Sala = txtSala.Text;
            turmas.Turno = txtTurno.Text;
            turmas.Id = int.Parse(txtIdTurma.Text);

            TurmaController ctrl = new TurmaController();
            ctrl.Excluir(turmas);
            AtualizarLista();
        }

        protected void btnEditar_Click(object sender, EventArgs e)
        {
            Turma turmas = new Turma();
            TurmaController ctrl = new TurmaController();
            turmas.Id = int.Parse(txtIdTurma.Text);
            turmas = ctrl.BuscarTurmaPorId(turmas.Id);


            if (turmas != null)
            {

                turmas.Quantidade = txtQuantAlunos.Text;
                turmas.Sala = txtSala.Text;
                turmas.Turno = txtTurno.Text;

                ctrl.Editar(turmas);
                AtualizarLista();
            }

        }

        protected void btnVoltar_Click(object sender, EventArgs e)
        {
            Response.Redirect("CadastrarTurma.aspx");
        }
    }
}