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
    public partial class CadastrarTurma : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void BtnCadastrar_Click(object sender, EventArgs e)
        {
            Turma turmas = new Turma();

            turmas.Quantidade = txtQuantAlunos.Text;
            turmas.Sala = txtSala.Text;
            turmas.Turno = txtTurno.Text;
           
            turmas.Curso = txtCurso.Text;

            TurmaController ctrl = new TurmaController();

            ctrl.Adiciornar(turmas);
            Response.Redirect("ListarTurma.aspx");
        }

        protected void BtnLimpar_Click(object sender, EventArgs e)
        {
            txtQuantAlunos.Text = string.Empty;
            txtSala.Text = string.Empty;
            txtTurno.Text = string.Empty;
            txtCurso.Text = string.Empty;
        }

        protected void btnVoltar_Click(object sender, EventArgs e)
        {
            Response.Redirect("Entrar.aspx");
        }

        protected void btnListar_Click(object sender, EventArgs e)
        {
            Response.Redirect("ListarTurma.aspx");
        }
    }
}