using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.ComponentModel.DataAnnotations;

namespace MVC4ProjetTest.Models
{
    public class AdminLoginModel
    {
        public AdminLoginModel() { }

        [Required]
        [Display(Name = "pouet")]
        public String login { get; set; }

        public String password { get; set; }

    }

    public class CreateUserModel 
    {
        public String nom { get; set; }

        public String motdepasse { get; set; }
    }
}