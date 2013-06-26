using MVC4ProjetTest.Models;
using MVC4ProjetTest.Persistence;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace MVC4ProjetTest.Controllers
{
    public class LoginController : Controller
    {
        private Entities _db = new Entities();
        //
        // GET: /Login/

        public ActionResult Index()
        {
            return View();
        }
        //
        // GET: /Login/
        [HttpGet]
        public ActionResult SignIn()
        {
            return View();
        }

        //
        // POST: /Login/
        [HttpPost]
        public ActionResult SignIn(SignInModel model)
        {
            //verif si utilisateur existe deja
            if (_db.User.Any(existingUser => existingUser.login == model.login))
            {
                ModelState.AddModelError("login", "Login already in use");
            }   
            if (ModelState.IsValid)
            {
                //populate
                User newUser = new User()
                {
                    login = model.login,
                    password = model.password,
                    email = model.email
                };
                //Insert
                _db.User.Add(newUser);
                //Commit
                _db.SaveChanges();
            }
            return View(model);
        }


    }
}
