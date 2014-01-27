using System;
using System.Collections.Generic;
using System.Configuration;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using Microsoft.WindowsAzure;
using ddd_octopus.web.Models;

namespace ddd_octopus.web.Controllers
{
    public class HomeController : Controller
    {
        public ActionResult Index()
        {
            var model = new HomeViewModel()
                {
                    MyCustomSetting = GetSetting("MyCustomSetting"),
                    OctopusReleaseNumber = GetSetting("Octopus.Release.Number"),
                    OctopusDeploymentId = GetSetting("Octopus.Deployment.Id"),
                    MachineName = Environment.MachineName,
                };

            return View(model);
        }

        public static string GetSetting(string settingKey)
        {
            string result = string.Empty;
            try
            {
                result = CloudConfigurationManager.GetSetting(settingKey);
            }
            catch (Exception)
            {
            }

            if (result == string.Empty)
            {
                result = ConfigurationManager.AppSettings[settingKey];
            }

            return result;
        }
    }
}
