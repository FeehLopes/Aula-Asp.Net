//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace ProjetoTurma.Model
{
    using System;
    using System.Collections.Generic;
    
    public partial class Curso
    {
        public int Id { get; set; }
        public string Cursos { get; set; }
        public string Instituicao { get; set; }
        public int AlunoId { get; set; }
    
        public virtual Aluno Aluno { get; set; }
    }
}
