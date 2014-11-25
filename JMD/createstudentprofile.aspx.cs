using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Text.RegularExpressions;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml;

namespace JMD
{
    public partial class createstudentprofile1 : System.Web.UI.Page
    {
        SqlConnection dbConnection;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Request.Cookies["userDetails"] != null)
            {
                System.Collections.Specialized.NameValueCollection UserInfoCookieCollection;
                UserInfoCookieCollection = Request.Cookies["userDetails"].Values;
                userNameLabel.Text = Server.HtmlEncode(UserInfoCookieCollection["userName"]);
                emailAddLabel.Text = Server.HtmlEncode(UserInfoCookieCollection["emailAdd"]);
            }
            //  if (Session["useridsess"] != null)
            //  {
            //     //Label1.Text = Session["useridsess"].ToString() + "welcome to mayank holidays";
            //      SessionParameter empid = new SessionParameter();
            //      empid.Name = "useridsess";
            //      empid.Type = TypeCode.Int32;
            //      empid.SessionField = "useridsess";
            //}
            else
            {
                Response.Redirect("Home.aspx");
            }


            ServiceReference1.countrySoapClient ct = new ServiceReference1.countrySoapClient();
            string str = ct.GetCountries();
            DropDownList5.Items.Add("-Select-");
            DropDownList2.Items.Add("-Select-");


            //Create an XML Document and load your XML
            XmlDocument doc = new XmlDocument();
            doc.LoadXml(str);


            //Get your nodes, here our node in Table because webservice will give us following format
            // http://www.webservicex.net/country.asmx/GetCountries

            XmlNodeList nodes = doc.DocumentElement.SelectNodes("//Table");

            //Iterates for xml nodes and add them in dropdownlist
            foreach (XmlNode node in nodes)
            {
                DropDownList5.Items.Add(node["Name"].InnerText);
                DropDownList2.Items.Add(node["Name"].InnerText);

            }
        }

        protected void TextBox10_TextChanged1(object sender, EventArgs e)
        {
            String zip = (@"^([0-9]{5})$|([0-9]{5})(\-[0-9]{4})$");

            if (Regex.IsMatch(TextBox10.Text, zip))
            {

                Label21.Text = "valid Zip";

            }

            else
            {

                Label21.Text = "invalid Zip";

            }
        }

        protected void TextBox5_TextChanged1(object sender, EventArgs e)
        {
            String ssn = (@"^(?!\b(\d)\1+\b)(?!123456789|219099999|078051120)(?!666|000|9\d{2})\d{3}(?!00)\d{2}(?!0{4})\d{4}$");

            if (Regex.IsMatch(TextBox5.Text, ssn))
            {
                Label22.Text = "valid SSN";
            }

            else
            {
                Label22.Text = "invalid SSN";
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            //Label1.Visible = false;
            string firstname = TextBox1.Text;
            string lastname = TextBox2.Text;
            string suffix = DropDownList1.SelectedValue.ToString();
            string gender = DropDownList4.SelectedValue.ToString();
            string countryofci = DropDownList5.SelectedValue;
            string ssn = TextBox5.Text;
            string birthday = txtStartDate.Text;
            Convert.ToDateTime(birthday);
            string hisp = CheckBox1.Checked ? "Yes" : "No";
            string race = RadioButtonList1.Text.ToString();
            string address1 = TextBox6.Text;
            string address2 = TextBox7.Text;
            string city = TextBox8.Text;
            string state = DropDownList3.SelectedValue.ToString();
            string zip = TextBox10.Text;
            string fpcode = TextBox11.Text;
            string country = DropDownList2.SelectedItem.ToString();


            dbConnection = new SqlConnection("Data Source=itksqlexp8;Integrated Security=true");
            dbConnection.Open();
            dbConnection.ChangeDatabase("amalviy_LinkedU");

            string usern = userNameLabel.Text;

            try
            {

                string SQLString1 = "SELECT * FROM StudentProfile";
                SqlCommand checkIDTable1 = new SqlCommand(SQLString1, dbConnection);
                SqlDataReader idRecords1 = checkIDTable1.ExecuteReader();
                idRecords1.Close();
            }
            catch (SqlException exception)
            {
                if (exception.Number == 208)
                {
                    SqlCommand sqlCommand2 = new SqlCommand("CREATE TABLE StudentProfile(UserName VARCHAR(50) PRIMARY KEY,FirstName VARCHAR(50),LastName VARCHAR(50),Suffix VARCHAR(50),Gender VARCHAR(50),CitizenshipCountry VARCHAR(50),SSN VARCHAR(50),Birthday date,HispanicLatino VARCHAR(50),Race VARCHAR(MAX),AddressLine1 VARCHAR(MAX),AddressLine2 VARCHAR(MAX),City VARCHAR(MAX),State VARCHAR(50),Zip VARCHAR(50),ForeignPostalCode VARCHAR(50),Country VARCHAR(50))", dbConnection);

                    sqlCommand2.ExecuteNonQuery();


                }
                else
                    Label1.Text += "<p>Error code " + exception.Number
                        + ": " + exception.Message + "</p>";
            }
            finally
            {

                string studentInfo =
                  "INSERT INTO StudentProfile VALUES('"
                   + usern + "', '"
                   + firstname + "', '"
                   + lastname + "', '"
                   + suffix + "', '"
                   + gender + "', '"
                   + countryofci + "', '"
                   + ssn + "', '"
                   + birthday + "', '"
                   + hisp + "', '"
                   + race + "', '"
                   + address1 + "', '"
                   + address2 + "', '"
                   + city + "', '"
                   + state + "', '"
                   + zip + "', '"
                   + fpcode + "', '"
                   + country + "')";

                SqlCommand sqlCommand2 = new SqlCommand(studentInfo, dbConnection);

                sqlCommand2.ExecuteNonQuery();
            }
            dbConnection.Close();

            Response.Redirect("studacadinfo.aspx");
        }
    }
}