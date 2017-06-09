using Projeto.Model;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Projeto.Controller
{
    public class AlunoController
    {
        private BaseDeDadosContainer1 contexto = new BaseDeDadosContainer1();
        
         public void Adicionar(Aluno aluno)
        {
            if(aluno != null)
            {
                contexto.Alunos.Add(aluno);
                contexto.SaveChanges();
            }
        }

        public List<Aluno> ListarAlunos()
        {
            return contexto.Alunos.Where
                (a => a.Ativo == true).ToList();
        }

        public List<Aluno> ListarAlunoInativo()
        {
            return contexto.Alunos.Where
                (a => a.Ativo == false).ToList();
        }

        public Aluno BuscarAlunoPorId(Aluno aluno)
        {
            int id = aluno.Id;
            return contexto.Alunos.Find(id);
        }
        public void Excluir(Aluno aluno)
        {
            aluno.Ativo = false;
            contexto.Entry(aluno).State = System.Data.Entity.EntityState.Modified;

            contexto.SaveChanges();
        }
        public void Editar(Aluno aluno)
        {
            contexto.Entry(aluno).State = System.Data.Entity.EntityState.Modified;
            contexto.SaveChanges();
        }
    }


}