using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Script.Serialization;

namespace jQueryAJAXCall
{
    public partial class AJAXCall2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e) // Returns the computer name
        {
            JavaScriptSerializer JSSerializer = new JavaScriptSerializer();
            string computerName = System.Environment.MachineName;

            Response.CacheControl = "no-cache";
            Response.Write(JSSerializer.Serialize(computerName));
        }
    }
}