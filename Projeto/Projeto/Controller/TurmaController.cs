using Projeto.Model;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Projeto.Controller
{
    public class TurmaController
    {
      private BaseDeDadosContainer1 contexto = new BaseDeDadosContainer1();

        public void Adiciornar(Turma turma)
        {
            if (turma != null)
            {
                contexto.Turmas.Add(turma);
                contexto.SaveChanges();
            }
        }
        public List<Turma> ListarTurmas()
        {
            return contexto.Turmas.Where
                (a => a.Ativo == true).ToList();
        }

        public List<Turma> ListarAlunoInativo()
        {
            return contexto.Turmas.Where
                (a => a.Ativo == false).ToList();

        }
        public Turma BuscarTurmaPorId(int id)
        {
            return contexto.Turmas.Find(id);
        }
        public void Excluir(Turma turma)
        {
            turma.Ativo = false;
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