using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.IO;
using System.Linq;
using System.Text.RegularExpressions;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml;

namespace JMD
{
    public partial class studacadinfo : System.Web.UI.Page
    {
        SqlConnection dbConnection; 
       
           
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
            else
            {
                Response.Redirect("Home.aspx");
            }
           
            //SqlConnection dbConnection = new SqlConnection("Data Source=itksqlexp8;Integrated Security=true");
            //dbConnection.Open();
            //dbConnection.ChangeDatabase("amalviy_LinkedU");
            
            //string SQLString = "SELECT UserName FROM StudentProfile";
            //SqlCommand checkIDTable = new SqlCommand(SQLString, dbConnection);

            ////SqlDataReader idRecords = checkIDTable.ExecuteReader();
            //SqlDataAdapter da = new SqlDataAdapter(checkIDTable);
            //DataSet ds = new DataSet();
            //da.Fill(ds, "StudentProfile");
            //Label2.Text = ds.Tables["StudentProfile"].Rows[0]["UserName"].ToString();
            Label2.Text = Session["useridsess"].ToString();
            if (IsPostBack == false)
            {
                //get reference of your webservice
                ServiceReference1.countrySoapClient ct = new ServiceReference1.countrySoapClient();
                ServiceReference2.USZipSoapClient cd = new ServiceReference2.USZipSoapClient();
                //  myservice.country ct = new myservice.country();

                // str is an XML String which will hold all the countries in xml format
                string str = ct.GetCountries();
                //string ab = cd.GetInfoByCity();

                //string ab2 = cd.GetInfoByZIP();
                // add first item in dropdownlist
                DropDownList4.Items.Add("-Select-");
               

                //Create an XML Document and load your XML
                XmlDocument doc = new XmlDocument();
                doc.LoadXml(str);


                //Get your nodes, here our node in Table because webservice will give us following format
                // http://www.webservicex.net/country.asmx/GetCountries

                XmlNodeList nodes = doc.DocumentElement.SelectNodes("//Table");

                //Iterates for xml nodes and add them in dropdownlist
                foreach (XmlNode node in nodes)
                {
                    DropDownList4.Items.Add(node["Name"].InnerText);
                   

                }

                dbConnection = new SqlConnection("Data Source=itksqlexp8;Integrated Security=true");

                try
                {
                    dbConnection.Open();
                    dbConnection.ChangeDatabase("amalviy_LinkedU"); 

                }
                catch (SqlException exception)
                {
                    Response.Write("Error code " + exception.Number + ": " + exception.Message);
                }
                 

            }

        }
        protected void Button1_Click(object sender, EventArgs e)
        {
           

            SqlConnection con = new SqlConnection("Data Source=itksqlexp8;Integrated Security=true");
            con.Open();
            con.ChangeDatabase("amalviy_ConservationSchool");
            
            // String query8 = "INSERT INTO  wordFiles1 VALUES('0' ,'0' ,'0' ,'0' ,'0' ,'0' ,'0' ,'0' ,'0' ,'" + "PERSON" + "')";
            String query8 = "INSERT INTO  wordFiles1 (UserName) VALUES('" + Label2.Text + "')";
            SqlCommand cmd = new SqlCommand(query8, con);
            cmd.ExecuteNonQuery();





            con.Close();
            Label256.Visible = true;
            
            string filePath = FileUpload1.PostedFile.FileName;          // getting the file path of uploaded file
            string filename1 = Path.GetFileName(filePath);               // getting the file name of uploaded file
            string ext = Path.GetExtension(filename1);                      // getting the file extension of uploaded file
            string type = String.Empty;

            if (!FileUpload1.HasFile)
            {
                Label256.Text = "Please Select File";                          //if file uploader has no file selected
            }
            else
                if (FileUpload1.HasFile)
                {
                    try
                    {

                        switch (ext)                                         // this switch code validate the files which allow to upload only PDF  file 
                        {
                            case ".doc":
                                type = "word";
                                break;
                            case ".docx":
                                type = "word";
                                break;
                            case ".pdf":
                                type = "pdf";
                                break;

                            case ".jpg":
                                type = "jpg";
                                break;

                            case ".gif":
                                type = "GIF";
                                break;


                        }





                        if (type != String.Empty)
                        {



                            //SqlConnection con = new SqlConnection("Data Source=itksqlexp8;Integrated Security=true");
                            con.Open();
                            con.ChangeDatabase("amalviy_ConservationSchool");


                            Stream fs = FileUpload1.PostedFile.InputStream;
                            BinaryReader br = new BinaryReader(fs);                                 //reads the   binary files
                            Byte[] bytes = br.ReadBytes((Int32)fs.Length);                           //counting the file length into bytes
                            //String query = "insert into wordFiles1 (Name,type,data)" + " values (@Name, @type, @Data);    //insert query

                            String query = "Update wordFiles1 set Name=@Name, type=@type, Data=@Data WHERE UserName =" + "'" + Label2.Text + "'";    //insert query


                            SqlCommand com = new SqlCommand(query, con);
                            com.Parameters.Add("@Name", SqlDbType.VarChar).Value = filename1;
                            com.Parameters.Add("@type", SqlDbType.VarChar).Value = type;
                            com.Parameters.Add("@Data", SqlDbType.Binary).Value = bytes;
                            com.ExecuteNonQuery();
                            Label256.ForeColor = System.Drawing.Color.Green;
                            Label256.Text = " Your File Uploaded Successfully";


                        }
                        else
                        {
                            Label256.ForeColor = System.Drawing.Color.Red;
                            Label256.Text = "Select Only listed format Files  ";                              // if file is other than speified extension 
                        }
                    }
                    catch (Exception ex)
                    {
                        Label256.Text = "Error1: " + ex.Message.ToString();
                    }
                }




        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection("Data Source=itksqlexp8;Integrated Security=true");
            con.Open();
            con.ChangeDatabase("amalviy_ConservationSchool");


            String query = "Select * from wordFiles1 where UserName=" + "'" + Label2.Text + "'";
            //String query = "Update wordFiles1 set Name2=@Name2, type2=@type2, Data2=@Data2 WHERE UserName =" + "'" + "PERSON" + "'"; 
            SqlDataAdapter da = new SqlDataAdapter(query, con);
            DataSet ds = new DataSet();
            da.Fill(ds);
            GridView1.DataSource = ds;
            GridView1.DataBind();
            con.Close();





        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {


            SqlConnection con = new SqlConnection("Data Source=itksqlexp8;Integrated Security=true");
            con.Open();
            con.ChangeDatabase("amalviy_ConservationSchool");


            SqlCommand com = new SqlCommand("select Name,Name2,Name3 from  wordFiles1 where UserName=@UserName", con);
            //SqlCommand com = new SqlCommand("select Name,type,Data from  WordFiles1 where UserName=@UserName", con);
            //  SqlCommand com = new SqlCommand("select * from  WordFiles1 where UserName=" + "'" + "PERSON" + "'", con);



            com.Parameters.AddWithValue("UserName", GridView1.SelectedRow.Cells[1].Text);
            SqlDataReader dr = com.ExecuteReader();


            if (dr.Read())
            {
                Response.Clear();
                Response.Buffer = true;
                Response.ContentType = dr["type"].ToString();
                Response.AddHeader("content-disposition", "attachment;filename=" + dr["Name"].ToString());     // to open file prompt Box open or Save file         
                Response.Charset = "";
                Response.Cache.SetCacheability(HttpCacheability.NoCache);
                Response.BinaryWrite((byte[])dr["data"]);
                Response.End();
            }










        }

        protected void Button3_Click(object sender, EventArgs e)
        {




            Label256.Visible = true;
            string filePath = FileUpload2.PostedFile.FileName;          // getting the file path of uploaded file
            string filename1 = Path.GetFileName(filePath);               // getting the file name of uploaded file
            string ext = Path.GetExtension(filename1);                      // getting the file extension of uploaded file
            string type = String.Empty;

            if (!FileUpload2.HasFile)
            {
                Label256.Text = "Please Select File";                          //if file uploader has no file selected
            }
            else
                if (FileUpload2.HasFile)
                {
                    try
                    {

                        switch (ext)                                         // this switch code validate the files which allow to upload only PDF  file 
                        {
                            case ".doc":
                                type = "word";
                                break;
                            case ".docx":
                                type = "word";
                                break;
                            case ".pdf":
                                type = "Pdf";
                                break;

                            case ".jpg":
                                type = "JPEG";
                                break;

                            case ".gif":
                                type = "GIF";
                                break;


                        }





                        if (type != String.Empty)
                        {



                            SqlConnection con = new SqlConnection("Data Source=itksqlexp8;Integrated Security=true");
                            con.Open();
                            con.ChangeDatabase("amalviy_ConservationSchool");




                            //connection();
                            Stream fs = FileUpload2.PostedFile.InputStream;
                            BinaryReader br = new BinaryReader(fs);                                 //reads the   binary files
                            Byte[] bytes = br.ReadBytes((Int32)fs.Length);                           //counting the file length into bytes
                            //String query = "insert into wordFiles1 (Name2,type2,data2)" + " values (@Name2, @type2, @Data2) Where UserName =" + "'" + "PERSON" + "'";    //insert query
                            String query = "Update wordFiles1 set Name2=@Name2, type2=@type2, Data2=@Data2 WHERE UserName =" + "'" + Label2.Text + "'";
                            SqlCommand com = new SqlCommand(query, con);
                            com.Parameters.Add("@Name2", SqlDbType.VarChar).Value = filename1;
                            com.Parameters.Add("@type2", SqlDbType.VarChar).Value = type;
                            com.Parameters.Add("@Data2", SqlDbType.Binary).Value = bytes;
                            com.ExecuteNonQuery();
                            Label256.ForeColor = System.Drawing.Color.Green;
                            Label256.Text = " Your File Uploaded Successfully";


                        }
                        else
                        {
                            Label256.ForeColor = System.Drawing.Color.Red;
                            Label256.Text = "Select Only listed format Files  ";                              // if file is other than speified extension 
                        }
                    }
                    catch (Exception ex)
                    {
                        Label256.Text = "Error: " + ex.Message.ToString();
                    }
                }










        }

        protected void Button5_Click(object sender, EventArgs e)
        {

            string SQLString = "SELECT UserName FROM SignUp";
            SqlCommand checkIDTable = new SqlCommand(SQLString, dbConnection);

            //SqlDataReader idRecords = checkIDTable.ExecuteReader();
            SqlDataAdapter da = new SqlDataAdapter(checkIDTable);
            DataSet ds = new DataSet();
            da.Fill(ds, "SignUp");
            Label2.Text = Session["useridsess"].ToString();


            Label256.Visible = true;
            string filePath = FileUpload3.PostedFile.FileName;          // getting the file path of uploaded file
            string filename1 = Path.GetFileName(filePath);               // getting the file name of uploaded file
            string ext = Path.GetExtension(filename1);                      // getting the file extension of uploaded file
            string type = String.Empty;

            if (!FileUpload3.HasFile)
            {
                Label256.Text = "Please Select File";                          //if file uploader has no file selected
            }
            else
                if (FileUpload3.HasFile)
                {
                    try
                    {

                        switch (ext)                                         // this switch code validate the files which allow to upload only PDF  file 
                        {
                            case ".doc":
                                type = "word";
                                break;
                            case ".docx":
                                type = "word";
                                break;
                            case ".pdf":
                                type = "Pdf";
                                break;

                            case ".jpg":
                                type = "JPEG";
                                break;

                            case ".gif":
                                type = "GIF";
                                break;


                        }





                        if (type != String.Empty)
                        {



                            SqlConnection con = new SqlConnection("Data Source=itksqlexp8;Integrated Security=true");
                            con.Open();
                            con.ChangeDatabase("amalviy_ConservationSchool");




                            //connection();
                            Stream fs = FileUpload3.PostedFile.InputStream;
                            BinaryReader br = new BinaryReader(fs);                                 //reads the   binary files
                            Byte[] bytes = br.ReadBytes((Int32)fs.Length);                           //counting the file length into bytes
                            //String query = "insert into wordFiles (Name3,type3,data3)" + " values (@Name3, @type3, @Data3) where UserName =" + "'" + "PERSON" + "'";   //insert query
                            String query = "Update wordFiles1 set Name3=@Name3, type3=@type3, Data3=@Data3 WHERE UserName =" + "'" + Label2.Text + "'";
                            SqlCommand com = new SqlCommand(query, con);
                            com.Parameters.Add("@Name3", SqlDbType.VarChar).Value = filename1;
                            com.Parameters.Add("@type3", SqlDbType.VarChar).Value = type;
                            com.Parameters.Add("@Data3", SqlDbType.Binary).Value = bytes;
                            com.ExecuteNonQuery();
                            Label256.ForeColor = System.Drawing.Color.Green;
                            Label256.Text = " Your File Uploaded Successfully";


                        }
                        else
                        {
                            Label256.ForeColor = System.Drawing.Color.Red;
                            Label256.Text = "Select Only listed format Files  ";                              // if file is other than speified extension 
                        }
                    }
                    catch (Exception ex)
                    {
                        Label256.Text = "Error: " + ex.Message.ToString();
                    }
                }
        }


        protected void Button11_Click(object sender, EventArgs e)
        {
            //String reg_phone = (@"^(1 )?(\([0-9]{3}\) )?([1-9]{3})(\-[1-9]{4})$");
            //String reg_actScore = (@"^(0?[0-9]|[1-2][0-9]|3[0-6])$");
            //String reg_satScore = (@"^(0?[0-9]?[0-9]?[0-9]|1[0-1][0-9][0-9]|18[0][0])$");
            //String reg_toeflScore = (@"^(0?[0-9]?[0-9]|1[0-1][0-9]|12[0])$");
            //String reg_ieltsScore = (@"^(([0-9]\.[0-9]?[0-9])|[1][0]\.[0][0])$");

            //String reg_cgpa = (@"^(([0-9]\.[0-9]?[0-9])|[1][0]\.[0][0])$");
            //String reg_totalcgpa = (@"^(0?[0-9]\.[0][0]|1[0]\.[0][0])$");


            //if (Regex.IsMatch(TextBox9.Text, reg_phone))
            //{

            //    Label33.Text = "";
            //}
            //else
            //{
            //    Label33.Text = "invalid Phone No";
            //}

            //if (Regex.IsMatch(TextBox12.Text, reg_actScore))
            //{

            //    Label34.Text = "";
            //}
            //else
            //{
            //    Label34.Text = "invalid score";
            //}
            //if (Regex.IsMatch(TextBox13.Text, reg_satScore))
            //{

            //    Label35.Text = "";
            //}
            //else
            //{
            //    Label35.Text = "invalid score";
            //}
            //if (Regex.IsMatch(TextBox14.Text, reg_toeflScore))
            //{

            //    Label36.Text = "";
            //}
            //else
            //{
            //    Label36.Text = "invalid score";
            //}

            //if (Regex.IsMatch(TextBox15.Text, reg_ieltsScore))
            //{

            //    Label37.Text = "";
            //}
            //else
            //{
            //    Label37.Text = "invalid score";
            //}
            //if (Regex.IsMatch(TextBox10.Text, reg_cgpa))
            //{

            //    Label38.Text = "";
            //}
            //else
            //{
            //    Label38.Text = "invalid score";
            //}
            //if (Regex.IsMatch(TextBox11.Text, reg_totalcgpa))
            //{

            //    Label38.Text = "";
            //}
            //else
            //{
            //    Label38.Text = "invalid total score";
            //}

            string hsName = TextBox1.Text;
            string add1 = TextBox6.Text;
            string add2 = TextBox7.Text;
            string city = TextBox8.Text;
            string state = DropDownList3.SelectedValue;
            string country = DropDownList4.SelectedValue;
            string phoneNum = TextBox9.Text;
            string cgpa = TextBox10.Text;
            string cgpaRange = TextBox11.Text;
            string userid = Label2.Text;
            string act = TextBox12.Text;
            string sat = TextBox13.Text;
            string toefl = TextBox14.Text;
            string ielts = TextBox15.Text;

            string ach_sports = TextBox17.Text;
            string ach_social = TextBox18.Text;

            string interest1 = DropDownList5.SelectedValue;
            string interest2 = DropDownList6.SelectedValue;
            string interest3 = DropDownList7.SelectedValue;
            string interest4 = DropDownList8.SelectedValue;
            string interest5 = DropDownList9.SelectedValue;

            string preferredCities = TextBox16.Text;


            //if (interest2.Equals("--Select--"))
            //{
            //    interest2 = "";
            //}
            //if (interest3.Equals("--Select--"))
            //{
            //    interest3 = "";
            //}
            //if (interest4.Equals("--Select--"))
            //{
            //    interest4 = "";
            //}
            //if (interest5.Equals("--Select--"))
            //{
            //    interest5 = "";
            //}
            //if (interest2.Equals("--Select State--"))
            //{
            //    interest2 = "";
            //}

            //if ((Label33.Text == "")&&(Label34.Text == "")&&(Label35.Text == "")&&(Label36.Text == "")&&(Label37.Text == "")&&(Label38.Text == "")&&(state!="--Select State--"))
            //{
            SqlConnection dbConnection = new SqlConnection("Data Source=itksqlexp8;Integrated Security=true");
            dbConnection.Open();
            dbConnection.ChangeDatabase("amalviy_LinkedU");


                string studentInfo = "INSERT INTO AcademicInformation1 VALUES ('"
                    + hsName + "', '"
                    + add1 + "', '"
                    + add2 + "', '"

                    + city + "', '"
                    + state + "', '"
                    + country + "','"
                    + phoneNum + "','"
                    + cgpa + "','"
                    + cgpaRange + "','"
                    + act + "','"
                    + sat + "','"
                    + toefl + "','"
                    + ielts + "','"
                    //+ " " + "','"
                    //+ " " + "','"
                    //+ " " + "','"
                    //+ " " + "','"
                    //+ " " + "','"
                    //+ " " + "','"
                    //+ " " + "','"
                    //+ " " + "','"
                    //+ " " + "','"
                    + userid + "','"
                    + ach_sports + "','"
                    + ach_social + "','"
                    + interest1 + "','"
                    + interest2 + "','"
                    + interest3 + "','"
                    + interest4 + "','"
                    + preferredCities
                    +"')";
                
                SqlCommand sqlCommand1 = new SqlCommand(studentInfo, dbConnection);
                sqlCommand1.ExecuteNonQuery();

                Response.Redirect("WebForm1.aspx");     
            
            
        }

        

       
    }
}