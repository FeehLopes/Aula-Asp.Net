using Aula2505_Entity_ModelFist.Model;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Aula2505_Entity_ModelFist.Controller
{
    public class CategoriaController
    {
        BancoDeDadosContainer contexto = new BancoDeDadosContainer();

        public void Adicionar(Categoria categoria)
        {
            contexto.Categorias.Add(categoria);
            contexto.SaveChanges();
        }
        public List<Categoria> Listar()
        {
            return contexto.Categorias.ToList();
        }
        public Categoria LocalizarPorID(int id)
        {
            return contexto.Categorias.Find(id);
        }



        public void Editar(Categoria categoria)
        {
            contexto.Entry(categoria).State = System.Data.Entity.EntityState.Modified;

            contexto.SaveChanges();
        }

        public void Excluir(Categoria categoria)
        {
            contexto.Entry(categoria).State = System.Data.Entity.EntityState.Deleted;

            contexto.SaveChanges();
        }

    }
}