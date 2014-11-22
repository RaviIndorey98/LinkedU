using System;
using System.Collections.Generic;
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

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("Webform4.aspx");
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

        }
    }
}