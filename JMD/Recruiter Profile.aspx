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
        <asp:DropDownList ID="DropDownList1" runat="server">
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
                                            <asp:ListItem Value="1">1</asp:ListItem>
                                            <asp:ListItem Value="2">2</asp:ListItem>
                                            <asp:ListItem Value="3">3</asp:ListItem>
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