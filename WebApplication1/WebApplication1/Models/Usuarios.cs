﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.ComponentModel.DataAnnotations;
namespace WebApplication1.Models
{
    public class Usuarios
    {
        private string mail;
        private string contraseña;
        private int idUsuario;
        [Required(ErrorMessage = "Mail Invalida cual micheti")]
        public string Mail { get => mail; set => mail = value; }
        [Required(ErrorMessage = "Contraseña invalida cual stephen hawking")]
        public string Contraseña { get => contraseña; set => contraseña = value; }
        public int IdUsuario { get => idUsuario; set => idUsuario = value; }

        public Usuarios()
        {
            idUsuario = 0;
            mail = "";
            contraseña = "";
        }
        public Usuarios(string a, string b, int c)
        {
            mail = a;
            contraseña = b;
            idUsuario = c;
        }
    }
}