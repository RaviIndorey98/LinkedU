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
                Response.Redirect("~/StudentPages/createstudentprofile1.aspx");
            }
            else if (radiolist1.SelectedValue == "recruiter")
            {
                Session["recUserId"] = username;
                Session["recEmail"] = email;
                Response.Redirect("Recruiter Profile.aspx");
            }
 
        }


        protected void Button1_Click1(object sender, EventArgs e)
        {
            SqlConnection dbConnection = new SqlConnection("Data Source=itksqlexp8;Integrated Security=true");
            dbConnection.Open();
            dbConnection.ChangeDatabase("amalviy_LinkedU");
            string SQLString = "SELECT * FROM SignUp WHERE UserName=" + "'" + TextBox5.Text + "'" + "AND Password=" + "'" + TextBox6.Text + "'";
            SqlCommand checkIDTable = new SqlCommand(SQLString, dbConnection);
            SqlDataReader idRecords = checkIDTable.ExecuteReader();
            if (idRecords.Read())
            {
                if (RadioButtonList1.SelectedValue == "recruiter")
                {
                    Session["recUserid"] = TextBox5.Text;
                    Response.Redirect("Recruiterprofiledisp.aspx");
                }
                else if (RadioButtonList1.SelectedValue == "student")
                {
                    Session["studUserid"] = TextBox5.Text;
                    Response.Redirect("~/StudentHomePage.aspx");
                }


            }
            else
            {
                //  validateMessage.Text = "<p>**Invalid student details**</p>";
                Label3.Text = "Invalid Username or Password";
                idRecords.Close();

            }

        }
    }
}

        //protected void processTextChanged(object sender, EventArgs e)
        //{
        //    SqlConnection dbConnection = new SqlConnection("Data Source=itksqlexp8;Integrated Security=true");
        //        dbConnection.Open();
        //        dbConnection.ChangeDatabase("amalviy_LinkedU");
        //       string SQLString = "SELECT * FROM SignUp WHERE UserName=" + "'" + TextBox1.Text + "'";
        //        SqlCommand checkIDTable = new SqlCommand(SQLString, dbConnection);
        //        SqlDataReader idRecords = checkIDTable.ExecuteReader();
        //        if (idRecords.Read())
        //        {

        //            Button1.Enabled = false;
        //            Label5.Text = "User ID already exists!!!!!!!!!!!";
        //            Label5.ForeColor = System.Drawing.Color.Red;
        //            idRecords.Close();
        //        }
        //        else
        //        {
        //            Button1.Enabled = true;
        //            Label5.Text = "User ID available ";
        //            idRecords.Close();
        //        }
        //}
        
