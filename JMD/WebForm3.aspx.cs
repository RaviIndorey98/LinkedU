using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace JMD
{
    public partial class WebForm3 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void Button1_Click(object sender, EventArgs e)
        {

            SqlConnection con = new SqlConnection("Data Source=itksqlexp8;Integrated Security=true");
            con.Open();
            con.ChangeDatabase("amalviy_ConservationSchool");

            // String query8 = "INSERT INTO  wordFiles1 VALUES('0' ,'0' ,'0' ,'0' ,'0' ,'0' ,'0' ,'0' ,'0' ,'" + "PERSON" + "')";
            String query8 = "INSERT INTO  wordFiles1 (UserName) VALUES('" + "PERSON" + "')";
            SqlCommand cmd = new SqlCommand(query8, con);
            cmd.ExecuteNonQuery();





            con.Close();
            Label2.Visible = true;
            
            string filePath = FileUpload1.PostedFile.FileName;          // getting the file path of uploaded file
            string filename1 = Path.GetFileName(filePath);               // getting the file name of uploaded file
            string ext = Path.GetExtension(filename1);                      // getting the file extension of uploaded file
            string type = String.Empty;

            if (!FileUpload1.HasFile)
            {
                Label2.Text = "Please Select File";                          //if file uploader has no file selected
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

                            String query = "Update wordFiles1 set Name=@Name, type=@type, Data=@Data WHERE UserName =" + "'" + "PERSON" + "'";    //insert query


                            SqlCommand com = new SqlCommand(query, con);
                            com.Parameters.Add("@Name", SqlDbType.VarChar).Value = filename1;
                            com.Parameters.Add("@type", SqlDbType.VarChar).Value = type;
                            com.Parameters.Add("@Data", SqlDbType.Binary).Value = bytes;
                            com.ExecuteNonQuery();
                            Label2.ForeColor = System.Drawing.Color.Green;
                            Label2.Text = " Your File Uploaded Successfully";


                        }
                        else
                        {
                            Label2.ForeColor = System.Drawing.Color.Red;
                            Label2.Text = "Select Only listed format Files  ";                              // if file is other than speified extension 
                        }
                    }
                    catch (Exception ex)
                    {
                        Label2.Text = "Error1: " + ex.Message.ToString();
                    }
                }




        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection("Data Source=itksqlexp8;Integrated Security=true");
            con.Open();
            con.ChangeDatabase("amalviy_ConservationSchool");


            String query = "Select * from wordFiles1 where UserName=" + "'" + "PERSON" + "'";
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


            SqlCommand com = new SqlCommand("select Name,Name2,Name3 from  WordFiles1 where UserName=@UserName", con);
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




            Label2.Visible = true;
            string filePath = FileUpload2.PostedFile.FileName;          // getting the file path of uploaded file
            string filename1 = Path.GetFileName(filePath);               // getting the file name of uploaded file
            string ext = Path.GetExtension(filename1);                      // getting the file extension of uploaded file
            string type = String.Empty;

            if (!FileUpload2.HasFile)
            {
                Label2.Text = "Please Select File";                          //if file uploader has no file selected
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
                            String query = "Update wordFiles1 set Name2=@Name2, type2=@type2, Data2=@Data2 WHERE UserName =" + "'" + "PERSON" + "'";
                            SqlCommand com = new SqlCommand(query, con);
                            com.Parameters.Add("@Name2", SqlDbType.VarChar).Value = filename1;
                            com.Parameters.Add("@type2", SqlDbType.VarChar).Value = type;
                            com.Parameters.Add("@Data2", SqlDbType.Binary).Value = bytes;
                            com.ExecuteNonQuery();
                            Label2.ForeColor = System.Drawing.Color.Green;
                            Label2.Text = " Your File Uploaded Successfully";


                        }
                        else
                        {
                            Label2.ForeColor = System.Drawing.Color.Red;
                            Label2.Text = "Select Only listed format Files  ";                              // if file is other than speified extension 
                        }
                    }
                    catch (Exception ex)
                    {
                        Label2.Text = "Error: " + ex.Message.ToString();
                    }
                }










        }

        protected void Button5_Click(object sender, EventArgs e)
        {



            Label2.Visible = true;
            string filePath = FileUpload3.PostedFile.FileName;          // getting the file path of uploaded file
            string filename1 = Path.GetFileName(filePath);               // getting the file name of uploaded file
            string ext = Path.GetExtension(filename1);                      // getting the file extension of uploaded file
            string type = String.Empty;

            if (!FileUpload3.HasFile)
            {
                Label2.Text = "Please Select File";                          //if file uploader has no file selected
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
                            String query = "Update wordFiles1 set Name3=@Name3, type3=@type3, Data3=@Data3 WHERE UserName =" + "'" + "PERSON" + "'";
                            SqlCommand com = new SqlCommand(query, con);
                            com.Parameters.Add("@Name3", SqlDbType.VarChar).Value = filename1;
                            com.Parameters.Add("@type3", SqlDbType.VarChar).Value = type;
                            com.Parameters.Add("@Data3", SqlDbType.Binary).Value = bytes;
                            com.ExecuteNonQuery();
                            Label2.ForeColor = System.Drawing.Color.Green;
                            Label2.Text = " Your File Uploaded Successfully";


                        }
                        else
                        {
                            Label2.ForeColor = System.Drawing.Color.Red;
                            Label2.Text = "Select Only listed format Files  ";                              // if file is other than speified extension 
                        }
                    }
                    catch (Exception ex)
                    {
                        Label2.Text = "Error: " + ex.Message.ToString();
                    }
                }









        }

    }
}