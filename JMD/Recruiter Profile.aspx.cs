using System;
using System.Collections.Generic;
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
            if (Session["useridsess"] != null)
            {
                //Label1.Text = Session["useridsess"].ToString() + "welcome to mayank holidays";
                SessionParameter empid = new SessionParameter();
                empid.Name = "useridsess";
                empid.Type = TypeCode.Int32;
                empid.SessionField = "useridsess";
            }
            String email = (@"^[_a-z0-9\-]+(\.[_a-z0-9\-]+)*@[a-z0-9\-]+(\.[_a-z0-9\-]+)*(\.[a-z]{2,3})$");
            String phone = (@"^(1 )?(\([0-9]{3}\) )?([1-9]{3})(\-[1-9]{4})$");
            String zip = (@"^([0-9]{5})$|([0-9]{5})(\-[0-9]{4})$");


            if (Regex.IsMatch(TextBox3.Text, email))
            {
                Label10.Text = "valid email id";
            }
            else
            {
                Label10.Text = "invalid email id";
            }


            if (Regex.IsMatch(TextBox5.Text, phone))
            {

                Label12.Text = "valid Phone No";
            }
            else
            {
                Label12.Text = "invalid Phone No";
            }

            if (Regex.IsMatch(TextBox18.Text, zip))
            {

                Label8.Text = "valid Zip";
            }
            else
            {
                Label8.Text = "invalid Zip";
            }
        }
        protected void Button1_Click(object sender, EventArgs e)
        {


            Response.Redirect("RecruiterPosting.aspx");
        }
    }
}