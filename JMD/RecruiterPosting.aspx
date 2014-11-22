<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="RecruiterPosting.aspx.cs" Inherits="JMD.RecruiterPosting1" %>



<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>



<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
   <title>ARaynorDesign Template</title>
  <meta name="description" content="free website template" />
  <meta name="keywords" content="enter your keywords here" />
  <meta http-equiv="content-type" content="text/html; charset=utf-8" />
  <meta http-equiv="X-UA-Compatible" content="IE=9" />
  <link rel="stylesheet" type="text/css" href="style1.css" />
  <script type="text/javascript" src="js/jquery.min.js"></script>
  <script type="text/javascript" src="js/image_slide.js"></script>
</head>
<body>
    <form id="form1" runat="server">
       
    <div id="main">
    <div id="header">
	  <div id="banner">
	    <div id="welcome">
	      <h1>LinkedU</h1>
	    </div><!--close welcome-->
	    <div id="welcome_slogan">
	    
	    </div><!--close welcome_slogan-->
	  </div><!--close banner-->
    </div><!--close header-->

	<div id="menubar">
      <div id="menu">
          <h2>Postings for Students</h2>
        </div>
    </div><!--close menubar-->	
    
	<div id="site_content">		

	  <div class="sidebar_container">       
		<div class="sidebar">
          <div class="sidebar_item">
                  <div id="content">
        <div class="content_item">
            <br/>
            <asp:Label ID="Label25" runat="server" Text="University Name"></asp:Label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:Label ID="Label27" runat="server" Text="Name"></asp:Label>
            <br />
            <br/>
            <asp:Label ID="Label26" runat="server" Text="University Location"></asp:Label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:Label ID="Label28" runat="server" Text="Location"></asp:Label>
       
    
            <br />
       
    
        <br />
            <asp:Label ID="Label1" runat="server" Text="Select Department"></asp:Label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
        <asp:DropDownList ID="courseList" runat="server" Height="19px" Width="285px">
            <asp:ListItem>course list</asp:ListItem>
        </asp:DropDownList>
            <br />
            <br />

            <asp:Label ID="Label2" runat="server" Text="Course"></asp:Label>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="course" runat="server"></asp:TextBox>
            <br />
            <br />
            <asp:Label ID="Label3" runat="server" Text="Requirements"></asp:Label>
            <br />
            <br />
            <asp:Label ID="Label4" runat="server" Text="Minimum Scores Required"></asp:Label><br />

            <br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Minimum ACT score&nbsp;&nbsp;&nbsp;&nbsp; <asp:TextBox ID="minACT" runat="server"></asp:TextBox>
            <asp:Label ID="Label31" runat="server" Text="Label"></asp:Label>
            <br />
            <br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Minimum SAT score&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="minSAT" runat="server"></asp:TextBox>
            <asp:Label ID="Label32" runat="server" Text="Label"></asp:Label>
            <br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Minimum Toefl Score&nbsp;&nbsp;
        <asp:TextBox ID="minTOEFL" runat="server"></asp:TextBox>
            <asp:Label ID="Label33" runat="server" Text="Label"></asp:Label>
            <br />
            <br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Minimum IELTS Score&nbsp; 
        <asp:TextBox ID="minIELTS" runat="server"></asp:TextBox>
            <asp:Label ID="Label39" runat="server" Text="Label"></asp:Label>
            <br />
            <br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Minimum CGPA&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="minCGPA" runat="server"></asp:TextBox>
            &nbsp;&nbsp;
                                    <asp:Label ID="Label34" runat="server" Text="Out of"></asp:Label>&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="TextBox11" runat="server"></asp:TextBox>
                                    <asp:Label ID="Label38" runat="server" Text="Enter up to two decimal points"></asp:Label>
            <br />




            <br />
                        <br />
            <asp:Label ID="Label5" runat="server" Text="Student Should have extracurricular"></asp:Label>
           
            &nbsp;&nbsp;&nbsp;
           
            <asp:CheckBox ID="CheckBox1" runat="server" />
            &nbsp;<asp:Label ID="Label20" runat="server" Text="Yes"></asp:Label>
           
            <asp:CheckBox ID="CheckBox2" runat="server" />
            &nbsp;<asp:Label ID="Label21" runat="server" Text="No"></asp:Label><br />
            <br />
            <br />

            <asp:CheckBox ID="CheckBox3" runat="server" />
            &nbsp;<asp:Label ID="Label6" runat="server" Text="SOP"></asp:Label>
            <br />
            <br />
            <br />
            <asp:Label ID="Label7" runat="server" Text="Number of LORs Required"></asp:Label>
            &nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="TextBox1" runat="server" Width="35px"></asp:TextBox>
            <br />
            <br />
            <br />

            <asp:CheckBox ID="CheckBox4" runat="server" />
            &nbsp;<asp:Label ID="Label8" runat="server" Text="Transcripts"></asp:Label>
            <br />
            <br />

            <br />
            <asp:CheckBox ID="CheckBox5" runat="server" />
            &nbsp;<asp:Label ID="Label9" runat="server" Text="Resume"></asp:Label>
            <br />
            <br />
            <br />
            <asp:Label ID="Label10" runat="server" Text="Session"></asp:Label>
            <br />
            <br />
            <asp:RadioButtonList ID="RadioButtonList1" runat="server">
                <asp:ListItem>Spring-2015</asp:ListItem>
                <asp:ListItem>Fall-2015</asp:ListItem>
                <asp:ListItem>Summer-2015</asp:ListItem>
                <asp:ListItem>Spring-2016</asp:ListItem>
                <asp:ListItem>Fall-2016</asp:ListItem>
                <asp:ListItem>Summer-2016</asp:ListItem>
            </asp:RadioButtonList>
            <br />
            <asp:UpdatePanel ID="updPnel1" runat="server">
                <ContentTemplate>

                    <asp:Label ID="Label11" runat="server" Text="Deadline"></asp:Label>
                    
                     <asp:ToolkitScriptManager ID="ToolkitScriptManager1" runat="server"></asp:ToolkitScriptManager>
        <asp:TextBox ID="txtStartDate" runat="server"></asp:TextBox>
        <asp:CalendarExtender ID="CalendarExtender1" runat="server" TargetControlID="txtStartDate"></asp:CalendarExtender>
        <br />
        <br />
        <asp:DropDownList ID="DropDownList1" runat="server"></asp:DropDownList>
                    
                    <br />
                </ContentTemplate>
            </asp:UpdatePanel>
            <br />
            <hr />
            <br />


            <asp:CheckBox ID="CheckBox6" runat="server" />
            <asp:Label ID="Label22" runat="server" Text="Do you want to subscribe for the service ?"></asp:Label><br />
            <br />
            <asp:Label ID="Label23" runat="server" Text="If yes please enter your card details"></asp:Label>

            <br />

            <br />
            <asp:Label ID="Label12" runat="server" Text="Card Type"></asp:Label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:DropDownList ID="cardType" runat="server">
           
            <asp:ListItem>Master</asp:ListItem>
            <asp:ListItem>Visa</asp:ListItem>
            <asp:ListItem>Discover</asp:ListItem>
            <asp:ListItem>American Express</asp:ListItem>
        </asp:DropDownList>
            <br />
            <br />
            <asp:Label ID="Label13" runat="server" Text="Name on the card"></asp:Label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
            <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

        <asp:Label ID="Label14" runat="server" Text="First Name"></asp:Label>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label15" runat="server" Text="Last Name"></asp:Label>
            <br />
            <br />
            <asp:Label ID="Label16" runat="server" Text="Card Number"></asp:Label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:TextBox ID="TextBox12" runat="server"></asp:TextBox>
            <asp:Label ID="Label29" runat="server" Text="Label"></asp:Label>
            <br />
            <br />
            <asp:Label ID="Label17" runat="server" Text="CVV Number"></asp:Label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="TextBox13" runat="server" Width="94px"></asp:TextBox>
            <asp:Label ID="Label30" runat="server" Text="Label"></asp:Label>
            <br />
            <br />
            <asp:Label ID="Label18" runat="server" Text="Subscription Period"></asp:Label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:DropDownList ID="DropDownList4" runat="server">
            <asp:ListItem>1 month - $100</asp:ListItem>
            <asp:ListItem>3 month - $240</asp:ListItem>
            <asp:ListItem>6 month - $390</asp:ListItem>
            <asp:ListItem>9 month - $640</asp:ListItem>
            <asp:ListItem>12 month - $700</asp:ListItem>
        </asp:DropDownList>
            <br />
            <br />
            <br />
            <asp:CheckBox ID="CheckBox7" runat="server" />
            <asp:Label ID="Label24" runat="server" Text="Do you want to subscribe for the highlights ?"></asp:Label><br />
            <br />
            <asp:Label ID="Label19" runat="server" Text="Subscription Period"></asp:Label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:DropDownList ID="DropDownList5" runat="server">
            <asp:ListItem>1 month - $500</asp:ListItem>
            <asp:ListItem>3 month - $1250</asp:ListItem>
            <asp:ListItem>6 month - $2250</asp:ListItem>
            <asp:ListItem>9 month - $3500</asp:ListItem>
            <asp:ListItem>12 month - $4500</asp:ListItem>
        </asp:DropDownList>
            <br />
            <br />
            <br />

            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

            <asp:Button ID="Button1" runat="server" Text="Submit" Type="Submit" Height="37px" Width="85px" OnClick="Button1_Click" />
            <br />



        </div>
         </div>
	 </div>
  </div><!--close main-->
  </div>
    </form>
</body>
</html>


