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
	public partial class Login : System.Web.UI.Page
	{
		SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["connectionString"].ConnectionString);

		protected void Page_Load(object sender, EventArgs e)
		{
			if (Request.QueryString["errormsg"] != null)
			{
				errormsg.InnerText = Request.QueryString["errormsg"];
				errormsg.Style.Add("display", "block");
			}

			if (Request.QueryString["succssmsg"] != null)
			{
				succssmsg.InnerText = Request.QueryString["succssmsg"];
				succssmsg.Style.Add("display", "block");
			}

			if (con.State == ConnectionState.Open)
			{
				con.Close();
			}
			con.Open();
		}

		protected void login_btn_Click(object sender, EventArgs e)
		{
			int i = 0;

			SqlCommand cmd = con.CreateCommand();
			cmd.CommandType = CommandType.Text;
			cmd.CommandText = "select * from users where user_email='" + log_email.Value + "' and user_password='" + log_password.Value + "'";
			cmd.ExecuteNonQuery();
			DataTable dt = new DataTable();
			SqlDataAdapter da = new SqlDataAdapter(cmd);
			da.Fill(dt);
			i = Convert.ToInt32(dt.Rows.Count.ToString());

			if (i > 0)
			{
				Session["user_id"] = dt.Rows[0]["user_id"].ToString();
				Session["user_fname"] = dt.Rows[0]["user_fname"].ToString();
				Session["user_lname"] = dt.Rows[0]["user_lname"].ToString();
				Session["user_email"] = dt.Rows[0]["user_email"].ToString();
                Session["user_phone_no"] = dt.Rows[0]["user_phone_no"].ToString();
				Session["user_type"] = dt.Rows[0]["user_type"].ToString();

				if (Session["user_type"].ToString() == "admin")
				{
					Response.Redirect("Admin.aspx");
				}
				else
				{
					Response.Redirect("Default.aspx");
				}
			}
			else
			{
				errormsg.InnerText = "Invalid user information, try again";
				errormsg.Style.Add("display", "block");
			}
		}
	}
}