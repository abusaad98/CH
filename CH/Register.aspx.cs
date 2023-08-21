using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.Web.UI.HtmlControls;


namespace CH
{
    public partial class Register : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (IsPostBack)
            {
                SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["connectionString"].ConnectionString);
                con.Open();
                string checkuser = "SELECT count(*) FROM users WHERE user_email='" + reg_email.Value +  "'";
                SqlCommand com = new SqlCommand(checkuser, con);
                int temp = Convert.ToInt32(com.ExecuteScalar().ToString());
                if (temp == 1)
                {
					Response.Redirect("Login.aspx?msg=User already registered");
                }

                con.Close();
            }
        }

        protected void reg_btnReg_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["connectionString"].ConnectionString);
            con.Open();
            string insertQ = "insert into users (user_fname,user_lname,user_email,user_password,user_phone_no,user_type) values (@user_fname,@user_lname,@user_email,@user_password,@user_phone_no,@user_type)";
            SqlCommand com = new SqlCommand(insertQ, con);
            com.Parameters.AddWithValue("user_fname", reg_fname.Value);
            com.Parameters.AddWithValue("user_lname", reg_lname.Value);
            com.Parameters.AddWithValue("user_email", reg_email.Value);
            com.Parameters.AddWithValue("user_password", reg_password.Value);
            com.Parameters.AddWithValue("user_phone_no", reg_mobile.Value);
            com.Parameters.AddWithValue("user_type", "student");
            com.ExecuteNonQuery();
            Response.Redirect("login.aspx?succssmsg=Registration is successful, you can login now.");

            con.Close();
        }
    }
}