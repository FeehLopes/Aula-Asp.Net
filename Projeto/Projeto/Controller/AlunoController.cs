using Projeto.Model;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Projeto.Controller
{
    public class AlunoController
    {
        private BaseDeDadosContainer8 contexto = new BaseDeDadosContainer8();
        
         public void Adicionar(Aluno alunos)
        {
            if(alunos != null)
            {
                contexto.Aluno.Add(alunos);
                contexto.SaveChanges();
            }
        }

        public List<Aluno> ListarAlunos()
        {
            return contexto.Aluno.ToList();
        }

       

        public Aluno BuscarAlunoPorId(Aluno aluno)
        {
            int id = aluno.Id;
            return contexto.Aluno.Find(id);
        }
        public void Excluir(Aluno aluno)
        {
            contexto.Entry(aluno).State = System.Data.Entity.EntityState.Deleted;

            contexto.SaveChanges();

            contexto.SaveChanges();
        }
        public void Editar(Aluno aluno)
        {
            contexto.Entry(aluno).State = System.Data.Entity.EntityState.Modified;
            contexto.SaveChanges();
        }
    }


}