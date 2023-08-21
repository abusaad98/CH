using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CH
{
    public partial class Admin1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["user_type"] != null)
            {
                if (Session["user_type"].ToString() != "admin")
                {
                    Response.Redirect("Login.aspx?errormsg=you must be an admin to view this page!");
                }
            }
            else
            {
                Response.Redirect("Login.aspx?errormsg=you must login first");
            }
        }
    }
}