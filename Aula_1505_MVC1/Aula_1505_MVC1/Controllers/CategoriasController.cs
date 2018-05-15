using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace Aula_1505_MVC1.Controllers
{
    public class CategoriasController : Controller
    {
        // GET: Categorias
        public ActionResult Index()
        {
            List<string> categorias = new List<string>();

            categorias.Add("Estudo");
            categorias.Add("Lazer");
            categorias.Add("Refeição");
            categorias.Add("Trabalho");

            ViewBag.MinhasCategorias = categorias;



            return View();
        }
    }
}