using System;
using System.Collections.Generic;
using System.Configuration;
using System.Linq;
using System.Web;

namespace TDR.DAL
{
    public class Gateway
    {
        public string connection = ConfigurationManager.ConnectionStrings["TDR"].ConnectionString;
    }
}