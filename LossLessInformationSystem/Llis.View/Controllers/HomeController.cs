using Llis.Domain.Repository;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace Llis.View.Controllers
{
    public class HomeController : Controller
    {
        IUserDataRepository _repository = null;

        public HomeController(IUserDataRepository repository)
        {
            _repository = repository;
        }

        public ActionResult Index()
        {
            return View();
        }

        public ActionResult UsersIndex()
        {
            return View(_repository.SelectAllUsers());
        }

        public ActionResult UserHistoryIndex()
        {
            return View(_repository.SelectAllUsersHistory());
        }
    }
}
