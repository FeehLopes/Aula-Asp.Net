using BaseModels;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Web;
using System.Web.Mvc;
using web.Models;

namespace web.Controllers
{
    public class CategoriasController : Controller
    {
        //Contexto do banco de dados
        private ApplicationDbContext db = new ApplicationDbContext();

        // GET: Categorias
        public ActionResult Index()
        {
            var categorias = db.Categorias.ToList();
            return View(categorias);
        }

        // ----- Cadastrar nova Categoria -------
        //GET

        public ActionResult Create()
        {
            return View();
        }
        [HttpPost]
        public ActionResult Create(Categoria categoria)
        {
            if (ModelState.IsValid)
            {
                db.Categorias.Add(categoria);
                db.SaveChanges();
            }
            return View(categoria);
        }

        //------ Detalhes --------
        //GET

        public ActionResult Details(int? id)
        {
            // não passou ID?
            if(id == null /*id.HasValue*/)
            {
                //ERRO HTT 400
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }


            Categoria categoria = db.Categorias.Find(id);

            // não encontrou o objeto com este id
            if(categoria == null)
            {
                return HttpNotFound();
            }

            // Caso a categoria seja encontrada, retornar ela para a view
            return View(categoria);
        }

        //--------- Editar -----------
        //GET 

        public ActionResult Edit(int? id)
        {
            // não passou ID?
            if (id == null /*id.HasValue*/)
            {
                //ERRO HTT 400
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }


            Categoria categoria = db.Categorias.Find(id);

            // não encontrou o objeto com este id
            if (categoria == null)
            {
                return HttpNotFound();
            }

            // Caso a categoria seja encontrada, retornar ela para a view
            return View(categoria);
        }
    }
}