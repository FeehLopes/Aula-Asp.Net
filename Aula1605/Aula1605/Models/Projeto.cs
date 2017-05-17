﻿using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web;

namespace Aula1605.Models
{
    public class Projeto
        
    {
        [Key]
        public int ProjetoID { get; set; }
        [Required]
        public string Nome { get; set; }
        [Display()]
        public string Descricao { get; set; }
        
        public bool Ativo { get; set; }
    }
}