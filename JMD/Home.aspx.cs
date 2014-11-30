using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


namespace JMD
{
    public partial class Home : System.Web.UI.Page
    {
       

        protected void Page_Load(object sender, EventArgs e)
        {


        }

        protected void Button2_Click(object sender, EventArgs e)
        {

            string username = TextBox1.Text;
            string pass = TextBox3.Text;
            string email = TextBox2.Text;
            string profiletype = radiolist1.SelectedValue.ToString();

            SqlConnection dbConnection = new SqlConnection("Data Source=itksqlexp8;Integrated Security=true");

            dbConnection.Open();
            dbConnection.ChangeDatabase("amalviy_LinkedU");

            string studentInfo =
              "INSERT INTO SignUp VALUES('"
               + username + "', '"
               + email + "', '"
               + pass + "', '"
               + profiletype + "')";
            
            SqlCommand sqlCommand = new SqlCommand(studentInfo, dbConnection);
            sqlCommand.ExecuteNonQuery();
            dbConnection.Close();
            if (radiolist1.SelectedValue == "student")
            {
                Session["studUserId"] = username;
                Session["studEmail"] = email;
                Response.Redirect("createstudentprofile1.aspx");
            }
            else if (radiolist1.SelectedValue == "recruiter")
            {
                Session["recUserId"] = username;
                Session["recEmail"] = email;
                Response.Redirect("Recruiter Profile.aspx");
            }
        }
    }
}
