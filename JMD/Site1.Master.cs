using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace JMD
{
    public partial class Site1 : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
      

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            Response.Redirect("StudentHomePage.aspx");
        }

        protected void LinkButton5_Click(object sender, EventArgs e)
        {
            Session.Remove("studUserid");
            Session.RemoveAll();
            Response.Redirect("Home.aspx");

        }
        
        protected void LinkButton2_Click(object sender, EventArgs e)
        {
            Response.Redirect("Studentprofiledisp.aspx");
        }

        protected void LinkButton4_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/StudentPages/Search.aspx");
        }

        
        
    }
}