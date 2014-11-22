<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Recruiter Profile.aspx.cs" Inherits="JMD.Recruiter_Profile1" %>

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
                        </div>
                        <!--close welcome-->
                        <div id="welcome_slogan">
                        </div>
                        <!--close welcome_slogan-->
                    </div>
                    <!--close banner-->
                </div>
                <!--close header-->

                <div id="menubar">
                    <ul id="menu">
                        <li>
                            <h2>Create Recruiter's Profile</h2>
                        </li>
                    </ul>
                </div>
                <!--close menubar-->

                <div id="site_content">

                    <div class="sidebar_container">
                        <div class="sidebar">
                            <div class="sidebar_item">
                                <div id="content">
                                    <div class="content_item">
                                        <asp:Label ID="Label1" runat="server" Text="First Name"></asp:Label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                                        <br />
                                        <br />
                                        <asp:Label ID="Label2" runat="server" Text="Last Name"></asp:Label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="TextBox15" runat="server"></asp:TextBox>
                                        <br />
                                        <br />
                                        <asp:Label ID="Label3" runat="server" Text="University Name"></asp:Label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                                        <br />
                                        <br />
                                        <asp:Label ID="Label4" runat="server" Text="Location"></asp:Label>
                                        <br />
                                        <br />
                                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label5" runat="server" Text="State"></asp:Label>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="TextBox16" runat="server"></asp:TextBox>
                                        <br />
                                        <br />
                                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label6" runat="server" Text="City"></asp:Label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="TextBox17" runat="server"></asp:TextBox>
                                        <br />
                                        <br />
                                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label7" runat="server" Text="Zip"></asp:Label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="TextBox18" runat="server"></asp:TextBox>
                                        <asp:Label ID="Label8" runat="server" Text=""></asp:Label>
                                        <br />
                                        <br />
                                        <asp:Label ID="Label9" runat="server" Text="Email ID"></asp:Label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                                        <asp:Label ID="Label10" runat="server" Text=""></asp:Label>
                                        <br />
                                        <br />
                                        <asp:Label ID="Label11" runat="server" Text="Phone"></asp:Label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
                                        <asp:Label ID="Label12" runat="server" Text=""></asp:Label>
                                        <br />
                                        <br />
                                        <hr>
                                        <br />
                                        <asp:Label ID="Label13" runat="server" Text="Available Time Slots"></asp:Label><br />
                                        <br />
                                        <asp:Label ID="Label14" runat="server" Text="Start Time"></asp:Label>
                                        <asp:DropDownList ID="DropDownList2" runat="server">
                                            <asp:ListItem>1</asp:ListItem>
                                            <asp:ListItem>2</asp:ListItem>
                                            <asp:ListItem>3</asp:ListItem>
                                            <asp:ListItem>4</asp:ListItem>
                                            <asp:ListItem>5</asp:ListItem>
                                            <asp:ListItem>6</asp:ListItem>
                                            <asp:ListItem>7</asp:ListItem>
                                            <asp:ListItem>8</asp:ListItem>
                                            <asp:ListItem>9</asp:ListItem>
                                            <asp:ListItem>10</asp:ListItem>
                                            <asp:ListItem>11</asp:ListItem>
                                            <asp:ListItem>12</asp:ListItem>
                                            <asp:ListItem>13</asp:ListItem>
                                            <asp:ListItem>14</asp:ListItem>
                                            <asp:ListItem>15</asp:ListItem>
                                            <asp:ListItem>16</asp:ListItem>
                                            <asp:ListItem>17</asp:ListItem>
                                            <asp:ListItem>18</asp:ListItem>
                                            <asp:ListItem>19</asp:ListItem>
                                            <asp:ListItem>20</asp:ListItem>
                                            <asp:ListItem>21</asp:ListItem>
                                            <asp:ListItem>22</asp:ListItem>
                                            <asp:ListItem>23</asp:ListItem>
                                            <asp:ListItem>24</asp:ListItem>

                                        </asp:DropDownList>

                                        &nbsp;

        <asp:Label ID="Label15" runat="server" Text="End Time"></asp:Label>
                                        <asp:DropDownList ID="DropDownList3" runat="server">
                                            <asp:ListItem>1</asp:ListItem>
                                            <asp:ListItem>2</asp:ListItem>
                                            <asp:ListItem>3</asp:ListItem>
                                            <asp:ListItem>4</asp:ListItem>
                                            <asp:ListItem>5</asp:ListItem>
                                            <asp:ListItem>6</asp:ListItem>
                                            <asp:ListItem>7</asp:ListItem>
                                            <asp:ListItem>8</asp:ListItem>
                                            <asp:ListItem>9</asp:ListItem>
                                            <asp:ListItem>10</asp:ListItem>
                                            <asp:ListItem>11</asp:ListItem>
                                            <asp:ListItem>12</asp:ListItem>
                                            <asp:ListItem>13</asp:ListItem>
                                            <asp:ListItem>14</asp:ListItem>
                                            <asp:ListItem>15</asp:ListItem>
                                            <asp:ListItem>16</asp:ListItem>
                                            <asp:ListItem>17</asp:ListItem>
                                            <asp:ListItem>18</asp:ListItem>
                                            <asp:ListItem>19</asp:ListItem>
                                            <asp:ListItem>20</asp:ListItem>
                                            <asp:ListItem>21</asp:ListItem>
                                            <asp:ListItem>22</asp:ListItem>
                                            <asp:ListItem>23</asp:ListItem>
                                            <asp:ListItem>24</asp:ListItem>
                                        </asp:DropDownList>
                                        <br />
                                        <br />
                                        <asp:Label ID="Label16" runat="server" Text="Day(s)"></asp:Label>
         <asp:CheckBoxList ID="CheckBoxList1" runat="server">
             <asp:ListItem>Monday</asp:ListItem>
             <asp:ListItem>Tuesday</asp:ListItem>
             <asp:ListItem>Wednesday</asp:ListItem>
             <asp:ListItem>Thursday</asp:ListItem>
         </asp:CheckBoxList>

                                        <br />
                                        <asp:Button ID="Button7" runat="server" Text="Add More Slots" Width="117px" />

                                        &nbsp;&nbsp;
        
        <asp:Button ID="Button8" runat="server" Text="Remove Slots" />
                                        <br />

                                        <br />
                                        <br />
                                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button1" runat="server" Text="Next" Type="Submit" Height="31px" Width="74px" OnClick="Button1_Click" />

                                    </div>
        </form>
    </body>
</html>