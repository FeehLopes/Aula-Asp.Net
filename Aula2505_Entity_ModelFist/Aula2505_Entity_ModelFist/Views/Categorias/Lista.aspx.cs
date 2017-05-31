using Aula2505_Entity_ModelFist.Controller;
using Aula2505_Entity_ModelFist.Model;
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
            
            CategoriasController ctrl = new CategoriasController();
           

            gvCategorias.DataSource = ctrl.Listar();
            gvCategorias.DataBind();

           
        }
    }
}