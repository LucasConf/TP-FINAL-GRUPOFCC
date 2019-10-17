using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace WebApplication1.Models
{
    public class SkateParks
    {
        private int idSkatePark;
        private string Nombre;
        private string Imagen;
        private string Desc;
        private bool Destacado;



        public HttpPostedFileBase Foto { get; set; }
        public int _IdSkatePark { get => idSkatePark; set => idSkatePark = value; }
        public string _Nombre { get => Nombre; set => Nombre = value; }
        public string _Imagen { get => Imagen; set => Imagen = value; }
        public string _Desc { get => Desc; set => _Desc = value; }
        public bool _Destacado { get => Destacado; set => Destacado = value; }

        public SkateParks()
        {
            idSkatePark = 0;
            Nombre = "";
            Imagen = "";
            Desc = "";
            Destacado = false;
        }

        public SkateParks(int a, string b, string c, string d, bool e)
        {
            idSkatePark = a;
            Nombre = b;
            Imagen = c;
            Desc = d;
            Destacado = e;
        }
    }
}