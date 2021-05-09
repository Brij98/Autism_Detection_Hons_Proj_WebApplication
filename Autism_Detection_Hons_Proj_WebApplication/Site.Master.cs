using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Autism_Detection_Hons_Proj_WebApplication
{
    public partial class SiteMaster : MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void UserHelp_Click(Object sender, EventArgs e)
        {
            Response.Write("<script>alert('successful');</script>");
        }
    }
}