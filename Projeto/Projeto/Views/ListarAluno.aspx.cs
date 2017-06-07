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
            AlunoController crtl = new AlunoController();

            List<Aluno> lista = crtl.ListarAlunos();

            gvAlunos.DataSource = lista.OrderBy(a => a.Id);
            gvAlunos.DataBind();


        }

        protected void BtnExcluir_Click(object sender, EventArgs e)
        {

            Aluno alunos = new Aluno();

            alunos.Nome = txtNome.Text;
            alunos.RG = txtRG.Text;
            alunos.CPF = txtCPF.Text;
            alunos.Idade = txtIdade.Text;
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

        protected void BtnEditar_Click(object sender, EventArgs e)
        {
            Aluno aluno = new Aluno();
            AlunoController ctrl = new AlunoController();
            aluno.Id = int.Parse(txtIdTurma.Text);
            aluno = ctrl.BuscarAlunoPorId(aluno);


            if (aluno != null)
            {

                aluno.Nome = txtNome.Text;
                aluno.RG = txtRG.Text;
                aluno.CPF = txtCPF.Text;
                aluno.Idade = txtIdade.Text;

                ctrl.Editar(aluno);
                AtualizarLista();

            }


        }

        protected void BtnVoltar_Click(object sender, EventArgs e)
        {

        }
    }
}