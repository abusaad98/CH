using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Services.Description;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;

namespace CH
{
    public partial class Addcourse : System.Web.UI.Page
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

            if (IsPostBack)
            {
                SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["connectionString"].ConnectionString);
                con.Open();
                

                con.Close();
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["connectionString"].ConnectionString);
            con.Open();

            string path;

            string filename = f1.FileName;
            FileInfo fi = new FileInfo(filename);
            string ext = fi.Extension;

            Random r = new Random();
            int num = r.Next();
            string fname = num.ToString() + ext;

            f1.SaveAs(Request.PhysicalApplicationPath + "/images/" + fname);
            path = fname.ToString();


            string insertQ = "insert into course (course_pic,course_title,course_description,course_goals,course_from_date,course_to_date,course_price,institute_id) values (@course_pic,@course_title,@course_description,@course_goals,@course_from_date,@course_to_date,@course_price,@institute_id)";
            SqlCommand com = new SqlCommand(insertQ, con);
            
            com.Parameters.AddWithValue("course_pic", path);
            com.Parameters.AddWithValue("course_title", course_title.Value);
            com.Parameters.AddWithValue("course_description", course_description.Value );
            com.Parameters.AddWithValue("course_goals", course_goals.Text);
            com.Parameters.AddWithValue("course_from_date", TextBox2.Text);
            com.Parameters.AddWithValue("course_to_date", TextBox1.Text);
            com.Parameters.AddWithValue("course_price", course_price.Value);
            com.Parameters.AddWithValue("institute_id", InstituteList.Text);

            com.ExecuteNonQuery();
            Response.Redirect("Admin.aspx?succssmsg=the course has been added successful");

            con.Close();
        }
    }
}