//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace Aula2505_Entity_ModelFist.Model
{
    using System;
    using System.Collections.Generic;
    
    public partial class Produto
    {
        public int Id { get; set; }
        public string Nome { get; set; }
        public bool Descricao { get; set; }
        public bool Ativo { get; set; }
        public int CategoriaId { get; set; }
    
        public virtual Categoria Categoria { get; set; }
    }
}
