using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;
using System.IO;

namespace aspnetcore_docker.Controllers {
    public class HomeController : Controller {
        public IActionResult PostAction() {
            string result;
            var sr = new StreamReader(Request.Body);
            result = sr.ReadToEnd();

            Console.WriteLine(result);
            return Content(result);
        }
        public IActionResult PostActionWithParameter(string data) {
            Console.WriteLine(data);
            return Content(data);
        }
        public IActionResult Error() {
            return View();
        }
    }
}
