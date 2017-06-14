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
    public partial class CadastrarAluno : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            

        }

        protected void BtnCadastrar_Click(object sender, EventArgs e)
        {
            Aluno alunos = new Aluno();

            alunos.Nome = txtNome.Text;
            
            alunos.RG = txtRG.Text;
            alunos.CPF = txtCPF.Text;
       

            AlunoController ctrl = new AlunoController();

            ctrl.Adicionar(alunos);
            Response.Redirect("ListarAluno.aspx");
        }

        protected void BtnLimpar_Click(object sender, EventArgs e)
        {
            txtNome.Text = string.Empty;
            txtRG.Text = string.Empty;
            txtCPF.Text = string.Empty;
           
        }

        protected void btnVoltar_Click(object sender, EventArgs e)
        {

            Response.Redirect("Entrar.aspx");
        }

        protected void btnListar_Click(object sender, EventArgs e)
        {
            Response.Redirect("ListarAluno.aspx");
        }
    }


}