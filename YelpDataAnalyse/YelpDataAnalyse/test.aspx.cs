using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace YelpDataAnalyse
{
    public partial class test : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Response.Write("the test page has been loaded suscessfully!" + "<br/>");
            Response.Write("number of apps:" + Application["totalApps"]+"<br/>");
            Response.Write("number of sessions:" + Application["totalSessions"]);
        }
    }
}