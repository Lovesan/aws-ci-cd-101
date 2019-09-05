using System;
using System.Collections.Generic;
using System.Linq;
using System.Net.Http.Formatting;
using System.Web;
using System.Web.Http;
using Microsoft.Owin;
using Newtonsoft.Json;
using Newtonsoft.Json.Serialization;
using Owin;

[assembly: OwinStartup(typeof(AwsCICD101.Web.Startup))]

namespace AwsCICD101.Web
{
    public static class Startup
    {
        // ReSharper disable once UnusedMember.Global
        public static void Configuration(IAppBuilder app)
        {
            var config = new HttpConfiguration();

            var formatter = config.Formatters.OfType<JsonMediaTypeFormatter>().First();
            formatter.SerializerSettings.ContractResolver = new CamelCasePropertyNamesContractResolver();
            formatter.SerializerSettings.DateFormatHandling = DateFormatHandling.IsoDateFormat;
            formatter.SerializerSettings.DateParseHandling = DateParseHandling.DateTimeOffset;

            config.MapHttpAttributeRoutes();
            config.Routes.MapHttpRoute(
                name: "DefaultApi",
                routeTemplate: "api/{controller}/{id}",
                defaults: new { id = RouteParameter.Optional }
            );

            app.UseWebApi(config);
        }
    }
}
