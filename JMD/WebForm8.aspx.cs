using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml;

namespace JMD
{
    public partial class WebForm8 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs ex)
        {
            if (IsPostBack == false)
            {
                //get reference of your webservice
                ServiceReference1.countrySoapClient ct = new ServiceReference1.countrySoapClient();
               
              //  myservice.country ct = new myservice.country();

                // str is an XML String which will hold all the countries in xml format
                string str = ct.GetCountries();
                //string ab = cd.GetInfoByCity();
                //string ab1 = cd.GetInfoByState();
                //string ab2 = cd.GetInfoByZIP();
                // add first item in dropdownlist
                DropDownList1.Items.Add("-Select-");
               // DropDownList2.Items.Add("-Select-");
                //DropDownList3.Items.Add("-Select-");
                //DropDownList4.Items.Add("-Select-");
                //drpCNT.Items.Add("-Select-");

                //Create an XML Document and load your XML
                XmlDocument doc = new XmlDocument();
                doc.LoadXml(str);
               
              //  doc1.LoadXml(ab);
              //  doc1.LoadXml(ab1);
               // doc1.LoadXml(ab2);

                //Get your nodes, here our node in Table because webservice will give us following format
                // http://www.webservicex.net/country.asmx/GetCountries
          
                XmlNodeList nodes = doc.DocumentElement.SelectNodes("//Table");
            //XmlNodeList nodes1 = doc1.DocumentElement.SelectNodes("//Table");
                //Iterates for xml nodes and add them in dropdownlist
                foreach (XmlNode node in nodes)
                {
                    DropDownList1.Items.Add(node["Name"].InnerText);
                    
                }
               
            }
        }
       
    }
}