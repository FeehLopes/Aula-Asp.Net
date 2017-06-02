using ProjetoTurma.Model;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace ProjetoTurma.Controller
{
    public class AlunoController
    {

        BaseDeDadosContainer contexto = new BaseDeDadosContainer();

        public void Adcionar(Aluno aluno)
        {
            if(aluno != null)
            {
                contexto.Alunos.Add(aluno);
                contexto.SaveChanges();
            }
        }
        public List<Aluno> ListarAlunos()
        {
            return contexto.Alunos.ToList();
        }

        public Aluno BuscarPorId(int id)
        {
            return contexto.Alunos.Find(id);
        }

        public void Excluir(Aluno aluno)
        {
            contexto.Entry(aluno).State = System.Data.Entity.EntityState.Deleted;

            contexto.SaveChanges();
        }

        public void Editar (Aluno aluno)
        {
            contexto.Entry(aluno).State = System.Data.Entity.EntityState.Modified;

            contexto.SaveChanges();
        }
    }


}