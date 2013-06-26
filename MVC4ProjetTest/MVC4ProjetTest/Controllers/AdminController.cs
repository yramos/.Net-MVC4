using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using MVC4ProjetTest.Models;
using MVC4ProjetTest.Persistence;

namespace MVC4ProjetTest.Controllers
{
    public class AdminController : Controller
    {
        private Entities bdd = new Entities();
        //
        // GET: /Admin/

        public ActionResult Index()
        {
            ViewBag.Message = "POUET";
            return View();
        }

        //
        // GET: /Admin/Login
        [HttpGet]
        public ActionResult Login()
        {
            //select sur l'id 1 puis transposition dans le model
            AdminLoginModel model = bdd.Table.Where(t => t.Id == 1).Select(t => new AdminLoginModel() { login = t.Login, password = t.Password }).FirstOrDefault();
            return View(model); 
        }

        [HttpPost]
        public ActionResult Login(AdminLoginModel model) 
        {
            if (ModelState.IsValid)
            {
                //recréer l'entité
                Table updated = new Table() { Id = 1, Login = model.login, Password = model.password };
                //remettre l'entité dans le contexte
                bdd.Table.Attach(updated);
                //flag l'état en modifié
                bdd.Entry(updated).State = System.Data.EntityState.Modified;
                //commit
                bdd.SaveChanges();

            }
            return View(model);
        }

        [HttpGet]
        public ActionResult CreateUser()
        {
            return View();
        }

        [HttpPost]
        public ActionResult CreateUser(CreateUserModel model) 
        {
            return View(model);
        }

    }
  
    
}
