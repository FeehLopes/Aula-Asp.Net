using Projeto.Model;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Projeto.Controller
{
    public class TurmaController
    {
      private BaseDeDadosContainer8 contexto = new BaseDeDadosContainer8();

        public void Adiciornar(Turma turmas)
        {
            if (turmas != null)
            {
                contexto.Turma.Add(turmas);
                contexto.SaveChanges();
            }
        }
        public List<Turma> ListarTurmas()
        {
            return contexto.Turma.ToList();
        }

       
        public Turma BuscarTurmaPorId(int id)
        {
            return contexto.Turma.Find(id);
        }
        public void Excluir(Turma turma)
        {
            contexto.Entry(turma).State = System.Data.Entity.EntityState.Deleted;

            contexto.SaveChanges();
        }
        public void Editar(Turma turma)
        {
            contexto.Entry(turma).State = System.Data.Entity.EntityState.Modified;
            contexto.SaveChanges();
        }
    }
}