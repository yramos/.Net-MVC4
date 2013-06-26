using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using MVC4ProjetTest.Persistence;
using MVC4ProjetTest.Models;

namespace MVC4ProjetTest.Controllers
{
    public class HomeController : Controller
    {
        public ActionResult Index()
        {
            ViewBag.Message = "Modify this template to jump-start your ASP.NET MVC application.";
            //déclarer la classe de contexte pour executer les req
            Entities bdd = new Entities();
            //créé nouvelle entité
            Table table1 = new Table();
            table1.Login = "Yoyo";
            table1.Password = "pouet";

            //insert
            bdd.Table.Add(table1);
            //commit
            bdd.SaveChanges();

            //update
            table1.Login = "Yoyo Poulou";
            bdd.SaveChanges();

            

            return View();
        }

        public ActionResult About()
        {
            ViewBag.Message = "Your app description page.";

            return View();
        }

        public ActionResult Contact()
        {
            ViewBag.Message = "Your contact page.";

            return View();
        }
    }
}
