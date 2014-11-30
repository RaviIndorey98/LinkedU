using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Text.RegularExpressions;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace JMD
{
    public partial class Recruiter_Profile1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["recUserId"] != null)
            {
                //Label1.Text = Session["useridsess"].ToString() + "welcome to mayank holidays";
                SessionParameter empid = new SessionParameter();
                empid.Name = "recUserId";
                empid.Type = TypeCode.Int32;
                empid.SessionField = "recUserId";
            }
            else 
            {
                Response.Redirect("Home.aspx");
            }
            
        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            String emailReg = (@"^[_a-z0-9\-]+(\.[_a-z0-9\-]+)*@[a-z0-9\-]+(\.[_a-z0-9\-]+)*(\.[a-z]{2,3})$");
            String phoneReg = (@"^(1 )?(\([0-9]{3}\) )?([1-9]{3})(\-[1-9]{4})$");
            String zipReg = (@"^([0-9]{5})$|([0-9]{5})(\-[0-9]{4})$");


            if (Regex.IsMatch(TextBox3.Text, emailReg))
            {
                Label10.Text = "valid email id";
            }
            else
            {
                Label10.Text = "invalid email id";
            }


            if (Regex.IsMatch(TextBox5.Text, phoneReg))
            {

                Label12.Text = "valid Phone No";
            }
            else
            {
                Label12.Text = "invalid Phone No";
            }

            if (Regex.IsMatch(TextBox18.Text, zipReg))
            {

                Label8.Text = "valid Zip";
            }
            else
            {
                Label8.Text = "invalid Zip";
            }

            string usern = Session["useridse"].ToString();
            Session["useridstate"] = DropDownList1.SelectedValue.ToString();
            Session["useriduniv"] = TextBox2.Text;
            Session["useridcity"] = TextBox17.Text;
            Session["useridzip"] = TextBox18.Text;
            string firstname = TextBox1.Text;
            string lastname = TextBox15.Text;
            string univname = TextBox2.Text;
            string state = DropDownList1.SelectedValue.ToString();
            string city = TextBox17.Text;
            string zip = TextBox18.Text;
            //string birthday = txtStartDate.Text;
            //Convert.ToDateTime(birthday);
            //string hisp = CheckBox1.Text.ToString();
            string emailid = TextBox3.Text;
            string phone = TextBox5.Text;
            string time = DropDownList2.SelectedItem.ToString() + DropDownList3.SelectedItem.ToString();
            string interests = string.Empty;
            foreach (ListItem item in this.CheckBoxList1.Items)
                if (item.Selected)
                    interests += item + ",";

           // string day = CheckBoxList1.
            //string state = DropDownList3.SelectedValue.ToString();
            //string zip = TextBox10.Text;
            //string fpcode = TextBox11.Text;
            //string country = DropDownList2.SelectedItem.ToString();


            SqlConnection dbConnection = new SqlConnection("Data Source=itksqlexp8;Integrated Security=true");


            dbConnection.Open();
            dbConnection.ChangeDatabase("amalviy_LinkedU");

            

                string studentInfo =
                  "INSERT INTO RecruiterProfile VALUES('"
                   + usern + "', '"
                   + firstname + "', '"
                   + lastname + "', '"
                   + univname + "', '"
                   + city + "', '"
                   + state + "', '"
                   + zip + "', '"
                   + emailid + "', '"
                   + phone + "')";

                string auInfo =
                      "INSERT INTO RecruiterTime VALUES('"
                       + usern + "', '"
                       + interests + "', '"
                       + time + "')";



            
                SqlCommand sqlCommand2 = new SqlCommand(studentInfo, dbConnection);
                sqlCommand2.ExecuteNonQuery();
                SqlCommand sqlCommand1 = new SqlCommand(auInfo, dbConnection);
                sqlCommand1.ExecuteNonQuery();
            
            dbConnection.Close();

            Response.Redirect("RecruiterPosting.aspx");
        }
    }
}