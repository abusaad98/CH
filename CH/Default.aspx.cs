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
	public partial class _Default : Page
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

			int i = 0;


			SqlCommand cmd = con.CreateCommand();
			cmd.CommandType = CommandType.Text;
			cmd.CommandText = "select * from course";
			cmd.ExecuteNonQuery();
			DataTable dt = new DataTable();
			SqlDataAdapter da = new SqlDataAdapter(cmd);
			da.Fill(dt);
			i = Convert.ToInt32(dt.Rows.Count.ToString());


		}

        protected void Repeater1_ItemCommand(object source, RepeaterCommandEventArgs e)
        {

        }
    }
}