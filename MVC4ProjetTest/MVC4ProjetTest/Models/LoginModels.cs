using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web;
using System.Text;

namespace MVC4ProjetTest.Models
{
    public class LoginModel
    {
        public LoginModel() { }


    }

    public class SignInModel 
    {
        [Required]
        [Display(Name="Login")]
        [MaxLength(50,ErrorMessage="50 characters max")]
        [MinLength(3,ErrorMessage="3 characters min")]
        public String login { get; set; }

        [Required]
        [Display(Name = "Email")]
        [MaxLength(50, ErrorMessage = "50 characters max")]
        [MinLength(3, ErrorMessage = "3 characters min")]
        [RegularExpression(@"^[_a-z0-9-]+(\.[_a-z0-9-]+)*@[a-z0-9-]+(\.[a-z0-9-]+)*(\.[a-z]{2,4})$",ErrorMessage="Invalid email")]
        public String email { get; set; }

        [Required]
        [Display(Name = "Confirmation email")]
        [Compare("email",ErrorMessage="Emails are not the same")]
        public String confirmEmail { get; set; }

        [Required]
        [Display(Name = "Password")]
        [MaxLength(50, ErrorMessage = "50 characters max")]
        [MinLength(3, ErrorMessage = "3 characters min")]
        [DataType(DataType.Password)]
        public String password { get; set; }

        [Required]
        [Display(Name = "Confirmation password")]
        [Compare("password", ErrorMessage = "Passwords are not the same")]
        [DataType(DataType.Password)]
        public String confirmPassword { get; set; }
    }
}