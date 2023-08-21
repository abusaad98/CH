using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace CH
{
    public partial class checkout : System.Web.UI.Page
    {
        public double total, tax, grandtotal;

        protected void Page_Load(object sender, EventArgs e)
        {

            if (Session["user_type"] != null)
            {
                if (Session["user_type"].ToString() != "student")
                {
                    Response.Redirect("Login.aspx?errormsg=you must login as a student to view this page!");
                }
            }
            else
            {
                Response.Redirect("Login.aspx?errormsg=you must login first");
            }

            GridCart.DataSource = (DataTable)Session["cart"];
            GridCart.DataBind();

           

            if (GridCart.Rows.Count > 0)
            {
                for (int x = 0; x < GridCart.Rows.Count; x++)
                {
                    total = total + Convert.ToDouble(GridCart.Rows[x].Cells[4].Text);
                }


            }

            tax = total * 0.05;
            grandtotal = total + tax;
        }
    }
}