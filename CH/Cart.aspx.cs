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
    public partial class Cart : System.Web.UI.Page
    {

        protected void Page_Load(object sender, EventArgs e)
        {

            GridCart.DataSource = (DataTable)Session["cart"];
            GridCart.DataBind();

            double total = 0;

            if (GridCart.Rows.Count > 0)
            {
                for (int x = 0; x < GridCart.Rows.Count; x++)
                {
                    total = total + Convert.ToDouble(GridCart.Rows[x].Cells[5].Text);
                }

                GridCart.FooterRow.Cells[4].Text = "total";
                GridCart.FooterRow.Cells[5].Text = total.ToString();
            }

        }

        protected void checkout(object sender, EventArgs e)
        {

            Response.Redirect("Checkout");
        }

        protected void GridCart_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            DataTable tblCart = new DataTable();
            int index = Convert.ToInt32(e.RowIndex);

            tblCart = (DataTable)Session["cart"];
            tblCart.Rows[index].Delete();
            tblCart.AcceptChanges();
            
            GridCart.DataSource = (DataTable)Session["cart"];
            GridCart.DataBind();
            double total = 0;

            if (GridCart.Rows.Count > 0)
            {
                for (int x = 0; x < GridCart.Rows.Count; x++)
                {
                    total = total + Convert.ToDouble(GridCart.Rows[x].Cells[5].Text);
                }

                GridCart.FooterRow.Cells[4].Text = "total";
                GridCart.FooterRow.Cells[5].Text = total.ToString();
            }

        }
    }
}