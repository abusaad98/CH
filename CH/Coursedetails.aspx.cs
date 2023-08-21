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
    public partial class Coursedetails : System.Web.UI.Page
    {

        public String id, pic, title, discr, goals, from_date, to_date, price, institute_id, institute_name;

        protected void AddToCart_Click(object sender, EventArgs e)
        {
            id = Request.QueryString["id"];
            DataTable tblCart;

            if (Session["cart"] == null)
            {
                tblCart = new DataTable();

                tblCart.Columns.Add("course_pic");
                tblCart.Columns.Add("course_title");
                tblCart.Columns.Add("course_from_date");
                tblCart.Columns.Add("course_to_date");
                tblCart.Columns.Add("institute_name");
                tblCart.Columns.Add("course_price");
                tblCart.Columns.Add("course_id");

            }
            else
            {
                tblCart = (DataTable)Session["cart"];
            }

            DataRow row = tblCart.NewRow();

            row[0] = pic;
            row[1] = title;
            row[2] = from_date;
            row[3] = to_date;
            row[4] = institute_name;
            row[5] = price;
            row[6] = id;


            tblCart.Rows.Add(row);

            Session["cart"] = tblCart;

            Response.Redirect("Default.aspx?succssmsg=course has been added to the cart");
        }



        protected void Page_Load(object sender, EventArgs e)
        {


            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["connectionString"].ConnectionString);


            id = Request.QueryString["id"];


            if (id == null)
            {
                Response.Redirect("Default.aspx");
            }

            if (con.State == ConnectionState.Open)
            {
                con.Close();
            }


            con.Open();

            SqlCommand cmd = con.CreateCommand();
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = "SELECT course.course_id, course.course_pic, course.course_title, course.course_description, course.course_goals, course.course_from_date, course.course_to_date, course.course_price, course.institute_id, institute.institute_id, institute.institute_name FROM course INNER JOIN institute ON  course.institute_id = institute.institute_id where course.course_id = '" + id + "'";

            cmd.ExecuteNonQuery();
            DataTable dt = new DataTable();
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            da.Fill(dt);

            pic = dt.Rows[0]["course_pic"].ToString();
            title = dt.Rows[0]["course_title"].ToString();
            discr = dt.Rows[0]["course_description"].ToString();
            goals = dt.Rows[0]["course_goals"].ToString();
            from_date = dt.Rows[0]["course_from_date"].ToString();
            to_date = dt.Rows[0]["course_to_date"].ToString();
            price = dt.Rows[0]["course_price"].ToString();
            institute_id = dt.Rows[0]["institute_id"].ToString();
            institute_name = dt.Rows[0]["institute_name"].ToString();
        }
    }
}