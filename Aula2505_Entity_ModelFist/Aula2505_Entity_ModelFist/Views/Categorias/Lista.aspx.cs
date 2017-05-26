﻿using Aula2505_Entity_ModelFist.Model;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Aula2505_Entity_ModelFist.Views.Categorias
{
    public partial class Lista : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            BancoDeDadosContainer contexto = new BancoDeDadosContainer();

            var categorias = contexto.Categorias;

            gvCategorias.DataSource = categorias.ToList();
            gvCategorias.DataBind();
        }
    }
}