using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Web.Http;

namespace AwsCICD101.Web.Controllers
{
    public class HelloController : ApiController
    {
        public string Get()
        {
            return "Hello, World!";
        }
    }
}
