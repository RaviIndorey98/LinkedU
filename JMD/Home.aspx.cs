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
        SqlConnection dbConnection;

        protected void Page_Load(object sender, EventArgs e)
        {
            Page.Validate();
            if (Page.IsValid)
            {
                dbConnection = new SqlConnection("Data Source=itksqlexp8;Integrated Security=true");
                try
                {
                    dbConnection.Open();
                    dbConnection.ChangeDatabase("amalviy_LinkedU");
                }
                catch (SqlException exception)
                {
                    if (exception.Number == 911) // non-existent DB
                    {
                        SqlCommand sqlCommand = new SqlCommand("CREATE DATABASE amalviy_LinkedU", dbConnection);
                        sqlCommand.ExecuteNonQuery();
                        dbConnection.ChangeDatabase("amalviy_LinkedU");
                    }
                    else

                        Response.Write("<p>Error code " + exception.Number
                            + ": " + exception.Message + "</p>");
                }
                try
                {
                    string SQLString1 = "SELECT * FROM SignUp";
                    SqlCommand checkIDTable1 = new SqlCommand(SQLString1, dbConnection);
                    SqlDataReader idRecords1 = checkIDTable1.ExecuteReader();
                    idRecords1.Close();
                }
                catch (SqlException exception)
                {
                    if (exception.Number == 208)
                    {
                        SqlCommand sqlCommand = new SqlCommand("CREATE TABLE SignUp(UserName VARCHAR(50) PRIMARY KEY,Email VARCHAR(50),Password VARCHAR(50),UserType VARCHAR(50))", dbConnection);
                        sqlCommand.ExecuteNonQuery();
                    }
                    else
                        Label1.Text += "<p>Error code " + exception.Number
                            + ": " + exception.Message + "</p>";
                }
            }


        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            string username = TextBox1.Text;
            string pass = TextBox3.Text;
            string email = TextBox2.Text;
            string profiletype = radiolist1.SelectedValue.ToString();
            string redirect = "";

            string studentInfo =
                          "INSERT INTO SignUp VALUES('"
                           + username + "', '"
                           + email + "', '"
                           + pass + "', '"
                           + profiletype + "')";

            SqlCommand sqlCommand = new SqlCommand(studentInfo, dbConnection);
            sqlCommand.ExecuteNonQuery();



            if (radiolist1.SelectedIndex == 0)
            {
                redirect = "createstudentprofile.aspx";
            }
            else if (radiolist1.SelectedIndex == 1)
            {
                redirect = "Recruiter Profile.aspx";
            }
            dbConnection.Close();

            HttpCookie userDetails = new HttpCookie("Signup");
            userDetails.Values["userName"] = username;
            userDetails.Values["emailAdd"] = email;
            userDetails.Expires = DateTime.Now.AddDays(7);
            Response.Cookies.Add(userDetails);
            Response.Redirect(redirect);
        }
    }
}
