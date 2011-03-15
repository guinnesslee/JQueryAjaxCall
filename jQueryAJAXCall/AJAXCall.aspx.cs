using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Script.Serialization;

namespace jQueryAJAXCall
{
    public partial class AJAXCall : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e) // Returns the server current date and time
        {
            JavaScriptSerializer JSSerializer = new JavaScriptSerializer();
            string CurrentDate = DateTime.Now.ToString();
            
            Response.CacheControl = "no-cache";
            Response.Write(JSSerializer.Serialize(CurrentDate));

        }
    }
}