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
    public partial class ListarAluno : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            AlunoController ctrl = new AlunoController();

            List<Aluno> lista = ctrl.ListarAlunos();

            gvAlunos.DataSource = lista.OrderBy(a => a.Id);
            gvAlunos.DataBind();


        }

        protected void btnExcluir_Click(object sender, EventArgs e)
        {
            Aluno alunos = new Aluno();

            alunos.Nome = txtNome.Text;
            alunos.RG = txtRG.Text;
            alunos.CPF = txtCPF.Text;
            alunos.Id = int.Parse(txtIdTurma.Text);


            AlunoController ctrl = new AlunoController();
            alunos = ctrl.BuscarAlunoPorId(alunos);
            if (alunos != null)
            {
                ctrl.Excluir(alunos);
                AtualizarLista();
            }


        }

            protected void AtualizarLista()
        {
            AlunoController ctrl = new AlunoController();

            List<Aluno> lista = ctrl.ListarAlunos();
            gvAlunos.DataSource = lista.OrderBy(a => a.Id);
            gvAlunos.DataBind();


        }

        protected void btnEditar_Click(object sender, EventArgs e)
        {
            Aluno alunos = new Aluno();
            AlunoController ctrl = new AlunoController();
            alunos.Id = int.Parse(txtIdTurma.Text);
            alunos = ctrl.BuscarAlunoPorId(alunos);
            if (alunos != null)
            {

                alunos.Nome = txtNome.Text;
                alunos.RG = txtRG.Text;
                alunos.CPF = txtCPF.Text;
                

                ctrl.Editar(alunos);
                AtualizarLista();

            }


        }

        protected void btnVoltar_Click(object sender, EventArgs e)
        {
            Response.Redirect("CadastrarAluno.aspx");
        }
    }
}