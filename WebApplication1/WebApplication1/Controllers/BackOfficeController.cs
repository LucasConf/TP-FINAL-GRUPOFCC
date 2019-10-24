using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using WebApplication1.Models;

namespace WebApplication1.Controllers
{
    public class BackOfficeController : Controller
    {
        // GET: BackOffice
        public ActionResult Index()
        {
            return View();
        }
        public ActionResult ABMSkatePark()
        {

            return View();
        }
        public ActionResult Login(Usuarios us)
        {
            BD.Existe(us);
            bool dou = BD.Existe(us);
            if (!dou)
            {
                @ViewBag.Mensaje = " El mail o contraseña son incorrectos";
                return View("Index", us);
            }
            else
            {
                List<SkateParks> Dou = new List<SkateParks>();
                SkateParks miskp = new SkateParks();

                Dou = BD.ListarSkateParks();
                ViewBag.Dou = Dou;
                return View("ABMSkatePark");
            }

            
        }
    }
}