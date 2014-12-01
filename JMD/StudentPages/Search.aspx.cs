using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace JMD.StudentPages
{
    public partial class Search : System.Web.UI.Page
    {
        SqlConnection leConnection = new SqlConnection("server=itksqlexp8;" + "Integrated Security=true;" + "database=amalviy_LinkedU;");
        SqlDataReader reader;
        SqlCommand myCommand;
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void Button1_Click(object sender, EventArgs e)
        {

            int act_min, toefl_min, act_max, toefl_max, sat_min, sat_max;
            double ielts_min, ielts_max, gpa_min, gpa_max;

            string fallCheckBox = "No";
            string springCheckBox = "No";
            string summerCheckBox = "No";
            string courses = TextBox11.Text.Length > 0 ? TextBox11.Text.ToString() : "";

            if(Fall.Checked==true)
            {
                fallCheckBox = "Yes";
            }
            if (Spring.Checked == true)
            {
                springCheckBox = "Yes";
            }
            if (Summer.Checked == true)
            {
                summerCheckBox = "Yes";
            }

            if (TextBox1.Text.ToString() == "")
            {
                act_min = 0;
            }
            else
            {
                act_min = Convert.ToInt32(TextBox1.Text.ToString());
            }
            if (TextBox2.Text.ToString() == "" || Convert.ToInt32(TextBox2.Text.ToString()) >= 36)
            {
                act_max = 36;
            }
            else
            {
                act_max = Convert.ToInt32(TextBox2.Text);
            }
            ///////////////////
            if (TextBox3.Text.ToString() == "")
            {
                toefl_min = 0;
            }
            else
            {
                toefl_min = Convert.ToInt32(TextBox3.Text.ToString());
            }
            if (TextBox4.Text.ToString() == "" || Convert.ToInt32(TextBox4.Text) >= 120)
            {
                toefl_max = 120;
            }
            else
            {
                toefl_max = Convert.ToInt32(TextBox4.Text);
            }
            ///////////////////
            if (TextBox5.Text.ToString() == "")
            {
                ielts_min = 0;
            }
            else
            {
                ielts_min = Convert.ToDouble(TextBox5.Text.ToString());
            }
            if (TextBox6.Text.ToString() == "" || Convert.ToDouble(TextBox6.Text) >= 10.00)
            {
                ielts_max = 10.00;
            }
            else
            {
                ielts_max = Convert.ToDouble(TextBox6.Text);
            }
            ///////////////////
            if (TextBox7.Text.ToString() == "")
            {
                sat_min = 200;
            }
            else
            {
                sat_min = Convert.ToInt32(TextBox7.Text.ToString());
            }
            if (TextBox8.Text.ToString() == "" || Convert.ToInt32(TextBox8.Text) >= 36)
            {
                sat_max = 800;
            }
            else
            {
                sat_max = Convert.ToInt32(TextBox8.Text);
            }
            ///////////////////
            if (TextBox9.Text.ToString() == "")
            {
                gpa_min = 0.00;
            }
            else
            {
                gpa_min = Convert.ToDouble(TextBox9.Text.ToString());
            }
            if (TextBox10.Text.ToString() == "" || Convert.ToDouble(TextBox10.Text) >= 10.00)
            {
                gpa_max = 10.00;
            }
            else
            {
                gpa_max = Convert.ToDouble(TextBox10.Text);
            }




            string department = "";
            if (DropDownList1.SelectedIndex == 0)
            {
                department = "";
            }
            else
            {
                department = DropDownList1.SelectedValue;
            }

            /////////////////Open////////////////////
            try
            {
                leConnection.Open();
            }
            catch (SqlException exp)
            {
                Response.Write(exp.Message);
            }

            /////////////////////////Reader/////////////////////////

            try
            {
                reader = null;
                myCommand = new SqlCommand("select * from RecruiterPosting", leConnection);

                reader = myCommand.ExecuteReader();
                reader.Close();
            }
            catch (SqlException exp)
            {
                Response.Write(exp.Message);
            }

            //string query = "Select * from Schools  ";
            //if (keyword != "")
            //{
            //    query += "WHERE Student_Name LIKE '%" + keyword + "%' OR University_Name LIKE '%" + keyword + "%' OR ACT_score LIKE '%" + keyword + "%' OR Pin LIKE '%" + keyword + "%'";// OR University_Name LIKE '%" + university + "%' OR ACT_score BETWEEN %" + min + "% AND %" + max + "%  OR Pin LIKE %" + postalCode + "%";
            //}

            //if (university.Equals(""))
            //{
            //    query += "WHERE ACT_score BETWEEN " + min + " AND " + max;
            //    if (postalCode != 0)
            //    {
            //        query += " AND Pin = " + postalCode;
            //    }

            //}
            //else
            //{
            //    query += "Where University_Name LIKE '%" + university + "%' AND ACT_score BETWEEN " + min + " AND " + max;// +"  OR Pin = " + postalCode;
            //    if (postalCode != 0)
            //    {
            //        query += " AND Pin = " + postalCode;
            //    }
            //}

            string query = "Select * from RecruiterPosting  ";

            query += "Where (MinAct BETWEEN " + act_min + " AND " + act_max + ") OR (MinSAT BETWEEN " + sat_min + " AND " + sat_max + ") OR (MinTOEFL BETWEEN " + toefl_min + " AND " + toefl_max + ") OR (MinIELTS BETWEEN " + ielts_min + " AND " + ielts_max + ") OR (MinCGPA BETWEEN " + gpa_min + " AND " + gpa_max
            + ") OR ( Fall LIKE '%" + fallCheckBox + "%') OR (Spring LIKE '%" + springCheckBox + "%') OR (Summer LIKE '%" + summerCheckBox
                + "%') OR (Dpname1 LIKE '%" + department + "%') OR (Dpname2 LIKE '%" + department + "%') OR (Dpname3 LIKE '%" + department + "%') OR (Dpname4 LIKE '%" + department
                + "%') OR (Dpcourse1 LIKE '%" + courses + "%') OR (Dpcourse2 LIKE '%" + courses + "%') OR (Dpcourse3 LIKE '%" + courses + "%') OR (Dpcourse4 LIKE '%" + courses + "%')";
            //string name = "Srishti";
            //query += "Where Dpcourse4 LIKE '%" + name + "%'";

            ////////////////////DataAdapter/////////////////////////
            SqlDataAdapter ada = new SqlDataAdapter(query, leConnection);

            DataSet ds = new DataSet();
            ada.Fill(ds);
            GridView1.DataSource = ds;
            GridView1.DataBind();
        }

       
    }
}