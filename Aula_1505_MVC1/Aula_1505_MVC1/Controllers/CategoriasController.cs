﻿using Aula_1505_MVC1.Models;
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
            List<Categoria> categorias = new List<Categoria>();

            categorias.Add(
                new Categoria()
                {
                    Nome = "Casa"
                }
              );
            categorias.Add(new Categoria() { Nome = "Carro" });
            categorias.Add(new Categoria() { Nome = "Trabalho" });
            categorias.Add(new Categoria() { Nome = "Família" });

            ViewBag.MinhasCategorias = categorias;

            return View();
        }

        public ActionResult Formulario()
        {
            return View();
        }

        [HttpPost]
        public ActionResult Formulario(string nome, string descricao, bool ativo)
        {
            return View();
        }
        public ActionResult Create()
        {
            return View();
        }
        [HttpPost]
        public ActionResult Create(Categoria categoria)
        {
            return View(categoria);
        }

        public ActionResult Index2()
        {
            List<Categoria> categorias = new List<Categoria>();

            categorias.Add(
                new Categoria()
                {
                    Nome = "Casa"
                }
              );
            categorias.Add(new Categoria() { Nome = "Carro" });
            categorias.Add(new Categoria() { Nome = "Trabalho" });
            categorias.Add(new Categoria() { Nome = "Família" });


            return View(categorias);
        }
    }
}