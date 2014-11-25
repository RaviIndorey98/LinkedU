<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="studacadinfo.aspx.cs" Inherits="JMD.studacadinfo" %>


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
    <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.8.0/jquery.min.js"
        type="text/javascript"></script>
    <script src="jquery-1.9.1.min.js" type="text/javascript"></script>
    <script type="text/javascript">

        $(document).ready(function () {
            $("fieldOfInterest2").hide();
            $("fieldOfInterest3").hide();
            $("fieldOfInterest4").hide();
            $("fieldOfInterest5").hide();

            $("#addField1").click(function () {
                $("fieldOfInterest2").slideToggle(100);
            });
            $("#addField2").click(function () {
                $("fieldOfInterest3").slideToggle(100);
            });
            $("#addField3").click(function () {
                $("fieldOfInterest4").slideToggle(100);
            });
            $("#addField4").click(function () {
                $("fieldOfInterest5").slideToggle(100);
            });

        });

    </script>

    <style type="text/css">
        #fieldOfInterest1 {
            height: 61px;
        }

        #fieldOfInterest2 {
            height: 46px;
        }

        #fieldOfInterest4 {
            height: 49px;
        }

        #fieldOfInterest3 {
            height: 42px;
        }
    </style>

</head>
<body>
    <form id="form1" runat="server">
        <div id="main">
            <div id="header">
                <div id="banner">
                    <div id="welcome">
                        <h1>LinkedU</h1>
                    </div>
                    <!--close welcome-->
                    <div id="welcome_slogan">
                        <h1>Academic Information</h1>
                    </div>
                    <!--close welcome_slogan-->
                </div>
                <!--close banner-->
            </div>
            <!--close header-->
        </div>
        <div id="menubar">
            <ul id="menu">
                <li>
                    <h2>Create Student Profile</h2>
                </li>
            </ul>
        </div>
        <!--close menubar-->
        </>
            <div id="site_content">

                <div class="sidebar_container">
                    <div class="sidebar">
                        <div class="sidebar_item">
                            <div id="content">
                                <div class="content_item">


                                    <asp:Label ID="Label5" runat="server" Text="Academic Information"></asp:Label><br />
                                    <br />
                                    <asp:Label ID="Label6" runat="server" Text="1. High School Information"></asp:Label><br />
                                    <br />
                                    <asp:Label ID="Label7" runat="server" Text="School Name"></asp:Label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                                    <br />
                                    <br />
                                    <asp:Label ID="Label8" runat="server" Text="Location"></asp:Label><br />
                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                    <asp:Label ID="Label22" runat="server" Text="Address Line1"></asp:Label>&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
                                    <br />
                                    <br />
                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                    <asp:Label ID="Label23" runat="server" Text="Address Line2"></asp:Label>&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="TextBox7" runat="server"></asp:TextBox>
                                    <br />
                                    <br />
                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label9" runat="server" Text="City"></asp:Label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                    <asp:TextBox ID="TextBox8" runat="server"></asp:TextBox>
                                    <br />
                                    <br />
                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label10" runat="server" Text="State"></asp:Label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                     <asp:DropDownList ID="DropDownList3" runat="server">
                                         <asp:ListItem>--Select State--</asp:ListItem>
                                         <asp:ListItem Value="AL">Alabama</asp:ListItem>
                                         <asp:ListItem Value="AK">Alaska</asp:ListItem>
                                         <asp:ListItem Value="AZ">Arizona</asp:ListItem>
                                         <asp:ListItem Value="AR">Arkansas</asp:ListItem>
                                         <asp:ListItem Value="CA">California</asp:ListItem>
                                         <asp:ListItem Value="CO">Colorado</asp:ListItem>
                                         <asp:ListItem Value="CT">Connecticut</asp:ListItem>
                                         <asp:ListItem Value="DC">District of Columbia</asp:ListItem>
                                         <asp:ListItem Value="DE">Delaware</asp:ListItem>
                                         <asp:ListItem Value="FL">Florida</asp:ListItem>
                                         <asp:ListItem Value="GA">Georgia</asp:ListItem>
                                         <asp:ListItem Value="HI">Hawaii</asp:ListItem>
                                         <asp:ListItem Value="ID">Idaho</asp:ListItem>
                                         <asp:ListItem Value="IL">Illinois</asp:ListItem>
                                         <asp:ListItem Value="IN">Indiana</asp:ListItem>
                                         <asp:ListItem Value="IA">Iowa</asp:ListItem>
                                         <asp:ListItem Value="KS">Kansas</asp:ListItem>
                                         <asp:ListItem Value="KY">Kentucky</asp:ListItem>
                                         <asp:ListItem Value="LA">Louisiana</asp:ListItem>
                                         <asp:ListItem Value="ME">Maine</asp:ListItem>
                                         <asp:ListItem Value="MD">Maryland</asp:ListItem>
                                         <asp:ListItem Value="MA">Massachusetts</asp:ListItem>
                                         <asp:ListItem Value="MI">Michigan</asp:ListItem>
                                         <asp:ListItem Value="MN">Minnesota</asp:ListItem>
                                         <asp:ListItem Value="MS">Mississippi</asp:ListItem>
                                         <asp:ListItem Value="MO">Missouri</asp:ListItem>
                                         <asp:ListItem Value="MT">Montana</asp:ListItem>
                                         <asp:ListItem Value="NE">Nebraska</asp:ListItem>
                                         <asp:ListItem Value="NV">Nevada</asp:ListItem>
                                         <asp:ListItem Value="NH">New Hampshire</asp:ListItem>
                                         <asp:ListItem Value="NJ">New Jersey</asp:ListItem>
                                         <asp:ListItem Value="NM">New Mexico</asp:ListItem>
                                         <asp:ListItem Value="NY">New York</asp:ListItem>
                                         <asp:ListItem Value="NC">North Carolina</asp:ListItem>
                                         <asp:ListItem Value="ND">North Dakota</asp:ListItem>
                                         <asp:ListItem Value="OH">Ohio</asp:ListItem>
                                         <asp:ListItem Value="OK">Oklahoma</asp:ListItem>
                                         <asp:ListItem Value="OR">Oregon</asp:ListItem>
                                         <asp:ListItem Value="PA">Pennsylvania</asp:ListItem>
                                         <asp:ListItem Value="RI">Rhode Island</asp:ListItem>
                                         <asp:ListItem Value="SC">South Carolina</asp:ListItem>
                                         <asp:ListItem Value="SD">South Dakota</asp:ListItem>
                                         <asp:ListItem Value="TN">Tennessee</asp:ListItem>
                                         <asp:ListItem Value="TX">Texas</asp:ListItem>
                                         <asp:ListItem Value="UT">Utah</asp:ListItem>
                                         <asp:ListItem Value="VT">Vermont</asp:ListItem>
                                         <asp:ListItem Value="VA">Virginia</asp:ListItem>
                                         <asp:ListItem Value="WA">Washington</asp:ListItem>
                                         <asp:ListItem Value="WV">West Virginia</asp:ListItem>
                                         <asp:ListItem Value="WI">Wisconsin</asp:ListItem>
                                         <asp:ListItem Value="WY">Wyoming</asp:ListItem>
                                     </asp:DropDownList>
                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <br />
                                    <br />
                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                    <asp:Label ID="Label11" runat="server" Text="Country"></asp:Label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                    <asp:DropDownList ID="DropDownList4" runat="server">
                                    </asp:DropDownList>
                                    <br />
                                    <br />
                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                    <asp:Label ID="Label12" runat="server" Text="Phone"></asp:Label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                    <asp:TextBox ID="TextBox9" runat="server"></asp:TextBox>
                                    <asp:Label ID="Label33" runat="server" Text="Label"></asp:Label>
                                    <br />
                                    &nbsp;<br />
                                    <asp:Label ID="Label13" runat="server" Text="CGPA"></asp:Label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="TextBox10" runat="server"></asp:TextBox>
                                    &nbsp;
                                    <asp:Label ID="Label14" runat="server" Text="Out of"></asp:Label>&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="TextBox11" runat="server" Height="20px"></asp:TextBox>
                                    &nbsp;<asp:Label ID="Label38" runat="server" Text="Enter up to two decimal points"></asp:Label>
                                    <br />
                                    <br />
                                    <br />


                                    <asp:Label ID="Label15" runat="server" Text="2.
    
        Enterance Exam Scores and Date"></asp:Label>
                                    <br />
                                    <br />

                                    <asp:Label ID="Label16" runat="server" Text="ACT"></asp:Label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="TextBox12" runat="server"></asp:TextBox>




                                    <asp:Label ID="Label34" runat="server"></asp:Label>
                                    &nbsp;&nbsp;<br />
                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <br />
                                    <asp:Label ID="Label17" runat="server" Text="SAT"></asp:Label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                    <asp:TextBox ID="TextBox13" runat="server"></asp:TextBox>
                                    <asp:Label ID="Label35" runat="server"></asp:Label>
                                    <br />
                                    <br />
                                    <asp:Label ID="Label18" runat="server" Text="TOEFL"></asp:Label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="TextBox14" runat="server"></asp:TextBox>
                                    <asp:Label ID="Label36" runat="server"></asp:Label>
                                    <br />
                                    <br />
                                    <asp:Label ID="Label19" runat="server" Text="IELTS"></asp:Label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                    <asp:TextBox ID="TextBox15" runat="server"></asp:TextBox>
                                    <asp:Label ID="Label37" runat="server"></asp:Label>
                                    <br />
                                    <br />
                                    <hr />
                                    <br />
                                    <asp:Label ID="Label20" runat="server" Text="3. Academic Documents"></asp:Label><br />
                                    <br />
                                    <table>
                                        <tr>
                                            <td>Statement of Purpose
                                            </td>
                                            <td>
                                                <asp:FileUpload ID="FileUpload1" runat="server" ToolTip="Select Only word File" />
                                            </td>
                                            <td>
                                                <asp:Button ID="Button_SOP" runat="server" Text="Upload" OnClick="Button1_Click" />
                                            </td>
                                            <td class="auto-style1">


                                                <asp:Button ID="Button2" runat="server" Text="View Files"
                                                    OnClick="Button2_Click" />
                                            </td>
                                        </tr>

                                    </table>
                                    <br />


                                    <table>
                                        <tr>
                                            <td>Transcript&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                            </td>
                                            <td>
                                                <asp:FileUpload ID="FileUpload2" runat="server" ToolTip="Select Only word File" />
                                            </td>
                                            <td>
                                                <asp:Button ID="Button_Trans" runat="server" Text="Upload" OnClick="Button3_Click" />
                                            </td>
                                            <td>&nbsp;</td>
                                        </tr>

                                    </table>
                                    <br />


                                    <table>
                                        <tr>
                                            <td>Resume
                                            </td>
                                            <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:FileUpload ID="FileUpload3" runat="server" ToolTip="Select Only word File" />
                                            </td>
                                            <td>
                                                <asp:Button ID="Button_resume" runat="server" Text="Upload" OnClick="Button5_Click" />
                                            </td>
                                            <td>&nbsp;</td>
                                        </tr>

                                    </table>




                                    <table>
                                        <tr>
                                            <td>
                                                <p style="width: 56px">
                                                    <asp:Label ID="Label256" runat="server">label</asp:Label>
                                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  
                                                    <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
                                                </p>
                                            </td>
                                        </tr>
                                    </table>


                                    <asp:GridView ID="GridView1" runat="server" Caption="Excel Files "
                                        CaptionAlign="Top" HorizontalAlign="Justify"
                                        DataKeyNames="UserName" OnSelectedIndexChanged="GridView1_SelectedIndexChanged"
                                        ToolTip="Word FIle DownLoad Tool" CellPadding="3" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px">
                                        <RowStyle ForeColor="#000066" />
                                        <Columns>
                                            <asp:CommandField ShowSelectButton="True" SelectText="" ControlStyle-ForeColor="Blue">
                                                <ControlStyle ForeColor="Blue"></ControlStyle>
                                            </asp:CommandField>
                                        </Columns>
                                        <FooterStyle BackColor="White" ForeColor="#000066" />
                                        <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
                                        <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
                                        <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
                                        <SortedAscendingCellStyle BackColor="#F1F1F1" />
                                        <SortedAscendingHeaderStyle BackColor="#007DBB" />
                                        <SortedDescendingCellStyle BackColor="#CAC9C9" />
                                        <SortedDescendingHeaderStyle BackColor="#00547E" />
                                    </asp:GridView>
                                    <br />
                                    <asp:Label ID="Label26" runat="server" Text="4. Achievements"></asp:Label><br />
                                    <br />
                                    <asp:Label ID="Label27" runat="server" Text="Sports"></asp:Label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:TextBox ID="TextBox17" runat="server" TextMode="MultiLine"></asp:TextBox>
                                    <br />
                                    <br />
                                    <asp:Label ID="Label28" runat="server" Text="Social Activities"></asp:Label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:TextBox ID="TextBox18" runat="server" TextMode="MultiLine"></asp:TextBox>
                                    <br />
                                    <hr />
                                    <br />




                                    <div id="fieldOfInterest1">
                                        <asp:Label ID="Label29" runat="server" Text="5. Field of Interest"></asp:Label>
                                        <br />
                                        Option 1:<br />
                                        <asp:DropDownList ID="DropDownList5" runat="server">
                                            <asp:ListItem>--Select--</asp:ListItem>
                                            <asp:ListItem>ART - School of Art</asp:ListItem>
                                            <asp:ListItem>ATK - Arts Technology</asp:ListItem>
                                            <asp:ListItem>BSC - School of Biological Sciences</asp:ListItem>
                                            <asp:ListItem>BTE - Business Teacher Education</asp:ListItem>
                                            <asp:ListItem>BUS - Business Accreditation</asp:ListItem>
                                            <asp:ListItem>CHE - Chemistry</asp:ListItem>
                                            <asp:ListItem>CJS - Criminal Justice Sciences</asp:ListItem>
                                            <asp:ListItem>COM - School of Communication</asp:ListItem>
                                            <asp:ListItem>CSD - Communication Sciences and Disorders</asp:ListItem>
                                            <asp:ListItem>EAF - Educational Administration &amp; Foundations</asp:ListItem>
                                            <asp:ListItem>ECO - Economics</asp:ListItem>
                                            <asp:ListItem>ENG - English</asp:ListItem>
                                            <asp:ListItem>FCS - Family and Consumer Sciences</asp:ListItem>
                                            <asp:ListItem>FIL - Finance, Insurance and Law</asp:ListItem>
                                            <asp:ListItem>GEO - Geography - Geology</asp:ListItem>
                                            <asp:ListItem>HIS - History</asp:ListItem>
                                            <asp:ListItem>HSC - Health Sciences</asp:ListItem>
                                            <asp:ListItem>IB - International Business</asp:ListItem>
                                            <asp:ListItem>IDS - Interdisciplinary Studies</asp:ListItem>
                                            <asp:ListItem>IT - School of Information Technology</asp:ListItem>
                                            <asp:ListItem>KNR - School of Kinesiology and Recreation</asp:ListItem>
                                            <asp:ListItem>LAN - Languages, Literatures and Cultures</asp:ListItem>
                                            <asp:ListItem>MAT - Mathematics</asp:ListItem>
                                            <asp:ListItem>MBA - Masters of Business Administration</asp:ListItem>
                                            <asp:ListItem>MKT - Marketing</asp:ListItem>
                                            <asp:ListItem>MQM - Management and Quantitative Methods</asp:ListItem>
                                            <asp:ListItem>MSC - Military Science</asp:ListItem>
                                            <asp:ListItem>MUS - School of Music</asp:ListItem>
                                            <asp:ListItem>NUR - Mennonite College of Nursing</asp:ListItem>
                                            <asp:ListItem>PHI - Philosophy</asp:ListItem>
                                            <asp:ListItem>PHY - Physics</asp:ListItem>
                                            <asp:ListItem>POL - Politics and Government</asp:ListItem>
                                            <asp:ListItem>PSY - Psychology</asp:ListItem>
                                            <asp:ListItem>SED - Special Education</asp:ListItem>
                                            <asp:ListItem>SOA - Sociology and Anthropology</asp:ListItem>
                                            <asp:ListItem>STT - Clinical Experiences in Teacher Education</asp:ListItem>
                                            <asp:ListItem>SWK - School of Social Work</asp:ListItem>
                                            <asp:ListItem>TCH - School of Teaching and Learning</asp:ListItem>
                                            <asp:ListItem>TEC - Technology</asp:ListItem>
                                            <asp:ListItem>THD - School of Theatre and Dance</asp:ListItem>
                                            <asp:ListItem>WGS - Women&#39;s and Gender Studies</asp:ListItem>
                                        </asp:DropDownList>
                                        <br />
                                        &nbsp;<br />
                                        <br />
                                    </div>

                                    <div id="fieldOfInterest2">
                                        Option 2:<br />
                                        <asp:DropDownList ID="DropDownList6" runat="server">
                                            <asp:ListItem>--Select--</asp:ListItem>
                                            <asp:ListItem>ART - School of Art</asp:ListItem>
                                            <asp:ListItem>ATK - Arts Technology</asp:ListItem>
                                            <asp:ListItem>BSC - School of Biological Sciences</asp:ListItem>
                                            <asp:ListItem>BTE - Business Teacher Education</asp:ListItem>
                                            <asp:ListItem>BUS - Business Accreditation</asp:ListItem>
                                            <asp:ListItem>CHE - Chemistry</asp:ListItem>
                                            <asp:ListItem>CJS - Criminal Justice Sciences</asp:ListItem>
                                            <asp:ListItem>COM - School of Communication</asp:ListItem>
                                            <asp:ListItem>CSD - Communication Sciences and Disorders</asp:ListItem>
                                            <asp:ListItem>EAF - Educational Administration &amp; Foundations</asp:ListItem>
                                            <asp:ListItem>ECO - Economics</asp:ListItem>
                                            <asp:ListItem>ENG - English</asp:ListItem>
                                            <asp:ListItem>FCS - Family and Consumer Sciences</asp:ListItem>
                                            <asp:ListItem>FIL - Finance, Insurance and Law</asp:ListItem>
                                            <asp:ListItem>GEO - Geography - Geology</asp:ListItem>
                                            <asp:ListItem>HIS - History</asp:ListItem>
                                            <asp:ListItem>HSC - Health Sciences</asp:ListItem>
                                            <asp:ListItem>IB - International Business</asp:ListItem>
                                            <asp:ListItem>IDS - Interdisciplinary Studies</asp:ListItem>
                                            <asp:ListItem>IT - School of Information Technology</asp:ListItem>
                                            <asp:ListItem>KNR - School of Kinesiology and Recreation</asp:ListItem>
                                            <asp:ListItem>LAN - Languages, Literatures and Cultures</asp:ListItem>
                                            <asp:ListItem>MAT - Mathematics</asp:ListItem>
                                            <asp:ListItem>MBA - Masters of Business Administration</asp:ListItem>
                                            <asp:ListItem>MKT - Marketing</asp:ListItem>
                                            <asp:ListItem>MQM - Management and Quantitative Methods</asp:ListItem>
                                            <asp:ListItem>MSC - Military Science</asp:ListItem>
                                            <asp:ListItem>MUS - School of Music</asp:ListItem>
                                            <asp:ListItem>NUR - Mennonite College of Nursing</asp:ListItem>
                                            <asp:ListItem>PHI - Philosophy</asp:ListItem>
                                            <asp:ListItem>PHY - Physics</asp:ListItem>
                                            <asp:ListItem>POL - Politics and Government</asp:ListItem>
                                            <asp:ListItem>PSY - Psychology</asp:ListItem>
                                            <asp:ListItem>SED - Special Education</asp:ListItem>
                                            <asp:ListItem>SOA - Sociology and Anthropology</asp:ListItem>
                                            <asp:ListItem>STT - Clinical Experiences in Teacher Education</asp:ListItem>
                                            <asp:ListItem>SWK - School of Social Work</asp:ListItem>
                                            <asp:ListItem>TCH - School of Teaching and Learning</asp:ListItem>
                                            <asp:ListItem>TEC - Technology</asp:ListItem>
                                            <asp:ListItem>THD - School of Theatre and Dance</asp:ListItem>
                                            <asp:ListItem>WGS - Women&#39;s and Gender Studies</asp:ListItem>
                                        </asp:DropDownList>
                                        <br />
                                        &nbsp;<br />
                                        <br />
                                    </div>

                                    <div id="fieldOfInterest3">
                                        Option 3:<br />
                                        <asp:DropDownList ID="DropDownList7" runat="server">
                                            <asp:ListItem>--Select--</asp:ListItem>
                                            <asp:ListItem>ART - School of Art</asp:ListItem>
                                            <asp:ListItem>ATK - Arts Technology</asp:ListItem>
                                            <asp:ListItem>BSC - School of Biological Sciences</asp:ListItem>
                                            <asp:ListItem>BTE - Business Teacher Education</asp:ListItem>
                                            <asp:ListItem>BUS - Business Accreditation</asp:ListItem>
                                            <asp:ListItem>CHE - Chemistry</asp:ListItem>
                                            <asp:ListItem>CJS - Criminal Justice Sciences</asp:ListItem>
                                            <asp:ListItem>COM - School of Communication</asp:ListItem>
                                            <asp:ListItem>CSD - Communication Sciences and Disorders</asp:ListItem>
                                            <asp:ListItem>EAF - Educational Administration &amp; Foundations</asp:ListItem>
                                            <asp:ListItem>ECO - Economics</asp:ListItem>
                                            <asp:ListItem>ENG - English</asp:ListItem>
                                            <asp:ListItem>FCS - Family and Consumer Sciences</asp:ListItem>
                                            <asp:ListItem>FIL - Finance, Insurance and Law</asp:ListItem>
                                            <asp:ListItem>GEO - Geography - Geology</asp:ListItem>
                                            <asp:ListItem>HIS - History</asp:ListItem>
                                            <asp:ListItem>HSC - Health Sciences</asp:ListItem>
                                            <asp:ListItem>IB - International Business</asp:ListItem>
                                            <asp:ListItem>IDS - Interdisciplinary Studies</asp:ListItem>
                                            <asp:ListItem>IT - School of Information Technology</asp:ListItem>
                                            <asp:ListItem>KNR - School of Kinesiology and Recreation</asp:ListItem>
                                            <asp:ListItem>LAN - Languages, Literatures and Cultures</asp:ListItem>
                                            <asp:ListItem>MAT - Mathematics</asp:ListItem>
                                            <asp:ListItem>MBA - Masters of Business Administration</asp:ListItem>
                                            <asp:ListItem>MKT - Marketing</asp:ListItem>
                                            <asp:ListItem>MQM - Management and Quantitative Methods</asp:ListItem>
                                            <asp:ListItem>MSC - Military Science</asp:ListItem>
                                            <asp:ListItem>MUS - School of Music</asp:ListItem>
                                            <asp:ListItem>NUR - Mennonite College of Nursing</asp:ListItem>
                                            <asp:ListItem>PHI - Philosophy</asp:ListItem>
                                            <asp:ListItem>PHY - Physics</asp:ListItem>
                                            <asp:ListItem>POL - Politics and Government</asp:ListItem>
                                            <asp:ListItem>PSY - Psychology</asp:ListItem>
                                            <asp:ListItem>SED - Special Education</asp:ListItem>
                                            <asp:ListItem>SOA - Sociology and Anthropology</asp:ListItem>
                                            <asp:ListItem>STT - Clinical Experiences in Teacher Education</asp:ListItem>
                                            <asp:ListItem>SWK - School of Social Work</asp:ListItem>
                                            <asp:ListItem>TCH - School of Teaching and Learning</asp:ListItem>
                                            <asp:ListItem>TEC - Technology</asp:ListItem>
                                            <asp:ListItem>THD - School of Theatre and Dance</asp:ListItem>
                                            <asp:ListItem>WGS - Women&#39;s and Gender Studies</asp:ListItem>
                                        </asp:DropDownList>
                                        <br />
                                        &nbsp;<br />
                                        <br />
                                        <br />
                                    </div>

                                    <div id="fieldOfInterest5">
                                        Option 4:<br />
                                        <asp:DropDownList ID="DropDownList9" runat="server">
                                            <asp:ListItem>--Select--</asp:ListItem>
                                            <asp:ListItem>ART - School of Art</asp:ListItem>
                                            <asp:ListItem>ATK - Arts Technology</asp:ListItem>
                                            <asp:ListItem>BSC - School of Biological Sciences</asp:ListItem>
                                            <asp:ListItem>BTE - Business Teacher Education</asp:ListItem>
                                            <asp:ListItem>BUS - Business Accreditation</asp:ListItem>
                                            <asp:ListItem>CHE - Chemistry</asp:ListItem>
                                            <asp:ListItem>CJS - Criminal Justice Sciences</asp:ListItem>
                                            <asp:ListItem>COM - School of Communication</asp:ListItem>
                                            <asp:ListItem>CSD - Communication Sciences and Disorders</asp:ListItem>
                                            <asp:ListItem>EAF - Educational Administration &amp; Foundations</asp:ListItem>
                                            <asp:ListItem>ECO - Economics</asp:ListItem>
                                            <asp:ListItem>ENG - English</asp:ListItem>
                                            <asp:ListItem>FCS - Family and Consumer Sciences</asp:ListItem>
                                            <asp:ListItem>FIL - Finance, Insurance and Law</asp:ListItem>
                                            <asp:ListItem>GEO - Geography - Geology</asp:ListItem>
                                            <asp:ListItem>HIS - History</asp:ListItem>
                                            <asp:ListItem>HSC - Health Sciences</asp:ListItem>
                                            <asp:ListItem>IB - International Business</asp:ListItem>
                                            <asp:ListItem>IDS - Interdisciplinary Studies</asp:ListItem>
                                            <asp:ListItem>IT - School of Information Technology</asp:ListItem>
                                            <asp:ListItem>KNR - School of Kinesiology and Recreation</asp:ListItem>
                                            <asp:ListItem>LAN - Languages, Literatures and Cultures</asp:ListItem>
                                            <asp:ListItem>MAT - Mathematics</asp:ListItem>
                                            <asp:ListItem>MBA - Masters of Business Administration</asp:ListItem>
                                            <asp:ListItem>MKT - Marketing</asp:ListItem>
                                            <asp:ListItem>MQM - Management and Quantitative Methods</asp:ListItem>
                                            <asp:ListItem>MSC - Military Science</asp:ListItem>
                                            <asp:ListItem>MUS - School of Music</asp:ListItem>
                                            <asp:ListItem>NUR - Mennonite College of Nursing</asp:ListItem>
                                            <asp:ListItem>PHI - Philosophy</asp:ListItem>
                                            <asp:ListItem>PHY - Physics</asp:ListItem>
                                            <asp:ListItem>POL - Politics and Government</asp:ListItem>
                                            <asp:ListItem>PSY - Psychology</asp:ListItem>
                                            <asp:ListItem>SED - Special Education</asp:ListItem>
                                            <asp:ListItem>SOA - Sociology and Anthropology</asp:ListItem>
                                            <asp:ListItem>STT - Clinical Experiences in Teacher Education</asp:ListItem>
                                            <asp:ListItem>SWK - School of Social Work</asp:ListItem>
                                            <asp:ListItem>TCH - School of Teaching and Learning</asp:ListItem>
                                            <asp:ListItem>TEC - Technology</asp:ListItem>
                                            <asp:ListItem>THD - School of Theatre and Dance</asp:ListItem>
                                            <asp:ListItem>WGS - Women&#39;s and Gender Studies</asp:ListItem>
                                        </asp:DropDownList>
                                        <br />

                                        <div id="fieldOfInterest4">
                                            Option 5:<br />
                                            <asp:DropDownList ID="DropDownList8" runat="server">
                                                <asp:ListItem>--Select--</asp:ListItem>
                                                <asp:ListItem>ART - School of Art</asp:ListItem>
                                                <asp:ListItem>ATK - Arts Technology</asp:ListItem>
                                                <asp:ListItem>BSC - School of Biological Sciences</asp:ListItem>
                                                <asp:ListItem>BTE - Business Teacher Education</asp:ListItem>
                                                <asp:ListItem>BUS - Business Accreditation</asp:ListItem>
                                                <asp:ListItem>CHE - Chemistry</asp:ListItem>
                                                <asp:ListItem>CJS - Criminal Justice Sciences</asp:ListItem>
                                                <asp:ListItem>COM - School of Communication</asp:ListItem>
                                                <asp:ListItem>CSD - Communication Sciences and Disorders</asp:ListItem>
                                                <asp:ListItem>EAF - Educational Administration &amp; Foundations</asp:ListItem>
                                                <asp:ListItem>ECO - Economics</asp:ListItem>
                                                <asp:ListItem>ENG - English</asp:ListItem>
                                                <asp:ListItem>FCS - Family and Consumer Sciences</asp:ListItem>
                                                <asp:ListItem>FIL - Finance, Insurance and Law</asp:ListItem>
                                                <asp:ListItem>GEO - Geography - Geology</asp:ListItem>
                                                <asp:ListItem>HIS - History</asp:ListItem>
                                                <asp:ListItem>HSC - Health Sciences</asp:ListItem>
                                                <asp:ListItem>IB - International Business</asp:ListItem>
                                                <asp:ListItem>IDS - Interdisciplinary Studies</asp:ListItem>
                                                <asp:ListItem>IT - School of Information Technology</asp:ListItem>
                                                <asp:ListItem>KNR - School of Kinesiology and Recreation</asp:ListItem>
                                                <asp:ListItem>LAN - Languages, Literatures and Cultures</asp:ListItem>
                                                <asp:ListItem>MAT - Mathematics</asp:ListItem>
                                                <asp:ListItem>MBA - Masters of Business Administration</asp:ListItem>
                                                <asp:ListItem>MKT - Marketing</asp:ListItem>
                                                <asp:ListItem>MQM - Management and Quantitative Methods</asp:ListItem>
                                                <asp:ListItem>MSC - Military Science</asp:ListItem>
                                                <asp:ListItem>MUS - School of Music</asp:ListItem>
                                                <asp:ListItem>NUR - Mennonite College of Nursing</asp:ListItem>
                                                <asp:ListItem>PHI - Philosophy</asp:ListItem>
                                                <asp:ListItem>PHY - Physics</asp:ListItem>
                                                <asp:ListItem>POL - Politics and Government</asp:ListItem>
                                                <asp:ListItem>PSY - Psychology</asp:ListItem>
                                                <asp:ListItem>SED - Special Education</asp:ListItem>
                                                <asp:ListItem>SOA - Sociology and Anthropology</asp:ListItem>
                                                <asp:ListItem>STT - Clinical Experiences in Teacher Education</asp:ListItem>
                                                <asp:ListItem>SWK - School of Social Work</asp:ListItem>
                                                <asp:ListItem>TCH - School of Teaching and Learning</asp:ListItem>
                                                <asp:ListItem>TEC - Technology</asp:ListItem>
                                                <asp:ListItem>THD - School of Theatre and Dance</asp:ListItem>
                                                <asp:ListItem>WGS - Women&#39;s and Gender Studies</asp:ListItem>
                                            </asp:DropDownList>
                                            <br />
                                            <br />
                                            &nbsp;<br />
                                            <br />
                                        </div>

                                        <br />
                                        <br />
                                    </div>


                                    <br />
                                    <br />
                                    <asp:Label ID="Label30" runat="server" Text="Preffered Cities (Seperate by Comma)"></asp:Label>
                                    <asp:TextBox ID="TextBox16" runat="server" TextMode="MultiLine"></asp:TextBox>
                                    <br />



                                    <hr />
                                    <br />
                                    <asp:Label ID="Label31" runat="server" Text="6. Additional Information"></asp:Label><br />
                                    <br />
                                    <asp:Label ID="Label32" runat="server" Text="Upload Mixtape"></asp:Label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="Label4" runat="server" Text="Label"></asp:Label>
                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button9" runat="server" Text="Browse" />
                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button10" runat="server" Text="Upload" />
                                    &nbsp;<br />
                                    <br />
                                    <br />
                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                    <asp:Button ID="Button11" runat="server" Text="Submit" Height="30px" Width="78px" OnClick="Button11_Click" />
                                    <br />
                                </div>
                            </div>
                        </div>
                    </div>
                    <!--close main-->
                </div>
            </div>
    </form>
    <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.8.0/jquery.min.js"
        type="text/javascript"></script>
    <script src="jquery-1.9.1.min.js" type="text/javascript"></script>
</body>
</html>

