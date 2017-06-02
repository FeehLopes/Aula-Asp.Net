using ProjetoTurma.Model;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace ProjetoTurma.Controller
{
    public class CursoController
    {
        BaseDeDadosContainer contexto = new BaseDeDadosContainer();

        public void Adicionar(Curso curso)
        {
            if (curso != null)
            {
                contexto.Cursos.Add(curso);
                contexto.SaveChanges();
            }
        }
        public List<Curso> ListarCursos()
        {
            return contexto.Cursos.ToList();
        }
        public Curso BuscarPorId(int id)
        {
            return contexto.Cursos.Find(id);
        }
        public void Excluir(Curso curso)
        {
            contexto.Entry(curso).State = System.Data.Entity.EntityState.Deleted;

            contexto.SaveChanges();
        }
        public void Editar(Curso curso)
        {
            contexto.Entry(curso).State = System.Data.Entity.EntityState.Modified;

            contexto.SaveChanges();
        }
    }
}