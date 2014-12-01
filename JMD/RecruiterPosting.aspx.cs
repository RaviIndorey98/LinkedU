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
    public partial class RecruiterPosting1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
           
            //string user = Session["useridcity"].ToString();
            Label27.Text = Session["useriduniv"].ToString();
            Label28.Text = Session["useridcity"].ToString() + Session["useridstate"].ToString();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            String americanExp = (@"^(34|37)+[0-9]{13}$");
            String master = (@"^(51|52|53|54|55)+[0-9]{14}$");
            String visa = (@"^(4)+([0-9]{15}|[0-9]{12})$");
            String discover = (@"^6(?:011|5[0-9]{2})[0-9]{12}$");
            String cvv = (@"[0-9]{3}");
            String actScore = (@"^(0?[0-9]|[1-2][0-9]|3[0-6])$");
            String satScore = (@"^(0?[0-9]?[0-9]?[0-9]|1[0-1][0-9][0-9]|18[0][0])$");
            String toeflScore = (@"^(0?[0-9]?[0-9]|1[0-1][0-9]|12[0])$");
            String ieltsScore = (@"^(([0-9]\.[0-9]?[0-9])|[1][0]\.[0][0])$");

            String cgpa = (@"^(([0-9]\.[0-9]?[0-9])|[1][0]\.[0][0])$");
            String totalcgpa = (@"^(0?[0-9]|1[0])$");


            if (cardType.SelectedValue == "American Express")
            {
                //Regex rgx = new Regex("^(34|37)+[0-9]{13}$");
                //if (rgx.IsMatch("PERSON")==true)
                if (Regex.IsMatch(TextBox12.Text, americanExp))
                {

                    Label29.Text = "";

                }
                else
                {
                    Label29.Text = "credit card number is invalid!";
                }

            }


            if (cardType.SelectedValue == "Master")
            {
                if (Regex.IsMatch(TextBox12.Text, master))
                {
                    Label29.Text = "";
                }
                else
                {
                    Label29.Text = "credit card number is invalid!";
                }


            }
            if (cardType.SelectedValue == "Visa")
            {
                if (Regex.IsMatch(TextBox12.Text, visa))
                {
                    Label29.Text = "";
                }
                else
                {
                    Label29.Text = "credit card number is invalid!";
                }


            }

            if (cardType.SelectedValue == "discover")
            {
                if (Regex.IsMatch(TextBox12.Text, discover))
                {
                    Label29.Text = "";
                }
                else
                {
                    Label29.Text = "credit card number is invalid!";
                }


            }
            if (Regex.IsMatch(TextBox13.Text, cvv))
            {

                Label30.Text = "";
            }
            else
            {
                Label30.Text = "invalid CVV";
            }
            if (Regex.IsMatch(minACT.Text, actScore))
            {

                Label31.Text = "";
            }
            else
            {
                Label31.Text = "invalid score";
            }
            if (Regex.IsMatch(minSAT.Text, satScore))
            {

                Label32.Text = "";
            }
            else
            {
                Label32.Text = "invalid score";
            }
            if (Regex.IsMatch(minTOEFL.Text, toeflScore))
            {

                Label33.Text = "";
            }
            else
            {
                Label33.Text = "invalid score";
            }
            if (Regex.IsMatch(minIELTS.Text, ieltsScore))
            {

                Label39.Text = "";
            }
            else
            {
                Label39.Text = "invalid score";
            }
            if (Regex.IsMatch(minCGPA.Text, cgpa))
            {

                Label38.Text = "";
            }
            else
            {
                Label38.Text = "invalid score";
            }

            if (Regex.IsMatch(TextBox11.Text, totalcgpa))
            {

                Label38.Text = "";
            }
            else
            {
                Label38.Text = "invalid total score";
            }
            string univ = Session["useriduniv"].ToString();
            string city = Session["useridcity"].ToString();
            string zip = Session["useridzip"].ToString();
            string state = Session["useridstate"].ToString();

            string usern = Session["recUserid"].ToString();

            string minact = minACT.Text;
            string minsat = minSAT.Text;
            string mintoefl = minTOEFL.Text;
            string minielts = minIELTS.Text;
            string mincgpa = minCGPA.Text;
            string outcgpa = TextBox11.Text;
            //string birthday = txtStartDate.Text;
            //Convert.ToDateTime(birthday);
            //string hisp = CheckBox1.Text.ToString();

            string extrareq = CheckBox11.Checked ? "Yes" : "No";
            string sop = CheckBox3.Checked ? "Yes" : "No";
            string lor = TextBox1.Text;
            string trans = CheckBox4.Checked ? "Yes" : "No";
            string resume = CheckBox5.Checked ? "Yes" : "No";
            string ses1 = CheckBox8.Checked ? "Yes" : "No";
            string ses2 = CheckBox9.Checked ? "Yes" : "No";
            string ses3 = CheckBox10.Checked ? "Yes" : "No";
            string ded1 = txtStartDate.Text;
            Convert.ToDateTime(ded1);
            string ded2 = txtStartDate.Text;
            Convert.ToDateTime(ded2);
            string ded3 = txtStartDate.Text;
            Convert.ToDateTime(ded3);
            string momsus = CheckBox6.Checked ? "Yes" : "No";
            string momsuspr = CheckBox6.Checked ? DropDownList4.SelectedValue.ToString() : "No";
            string highsus = CheckBox7.Checked ? "Yes" : "No";
            string highsuspr = CheckBox7.Checked ? DropDownList5.SelectedValue.ToString() : "No";
            string dpname1 = courseList.Items.ToString();
            string coname1 = course.Text;
            string dpname2 = DropDownList1.Items.ToString();
            string coname2 = TextBox6.Text;
            string dpname3 = DropDownList2.Items.ToString();
            string coname3 = TextBox7.Text;
            string dpname4 = DropDownList3.Items.ToString();
            string coname4 = TextBox8.Text;
           
            //string interests = string.Empty;
            //foreach (ListItem item in this.CheckBoxList2.Items)
            //    if (item.Selected)
            //        interests += item + ",";

            SqlConnection dbConnection = new SqlConnection("Data Source=itksqlexp8;Integrated Security=true");


            dbConnection.Open();
            dbConnection.ChangeDatabase("amalviy_LinkedU");



            string studentInfo =
              "INSERT INTO RecruiterPosting VALUES('"
               + univ + "', '"
               + city + "', '"
               + state + "', '"
               + zip + "', '"
               + minact + "', '"
               + minsat + "', '"
               + mintoefl + "', '"
               + minielts + "', '"
               + mincgpa + "', '"
               + outcgpa + "', '"
               + extrareq + "', '"
               + sop + "', '"
               + lor + "', '"
               + trans + "', '"
               + resume + "', '"
               + ses1 + "', '"
               + ses2 + "', '"
               + ses3 + "', '"
               + ded1 + "', '"
               + ded2 + "', '"
               + ded3 + "', '"
               + momsus + "', '"
               + momsuspr + "', '"
               + highsus + "', '"
               + highsuspr + "', '"
               + usern + "')";

            string auInfo =
                  "INSERT INTO RpDepartmentco VALUES('"
                   + usern + "', '"
                   + dpname1 + "', '"
                   + coname1 + "', '"
                   + dpname2 + "', '"
                   + coname2 + "', '"
                   + dpname3 + "', '"
                   + coname3 + "', '"
                    + dpname4 + "', '"
                  + coname4 + "')";




            SqlCommand sqlCommand2 = new SqlCommand(studentInfo, dbConnection);
            sqlCommand2.ExecuteNonQuery();
            SqlCommand sqlCommand1 = new SqlCommand(auInfo, dbConnection);
            sqlCommand1.ExecuteNonQuery();

            dbConnection.Close();
            Response.Redirect("Recruiterprofiledisp.aspx");

        }

        
    }
}