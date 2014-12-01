using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace JMD
{
    public partial class Site2 : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            Response.Redirect("Recruiterpostingdisp.aspx");
        }
        protected void LinkButton5_Click(object sender, EventArgs e)
        {
            Response.Redirect("Recruiterprofiledisp.aspx");
        } 
        protected void LinkButton2_Click(object sender, EventArgs e)
        {
            Session.Remove("recUserid");
            Session.RemoveAll();
            Response.Redirect("Home.aspx");

        }

       
    }
}