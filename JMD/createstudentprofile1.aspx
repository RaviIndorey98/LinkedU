<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="createstudentprofile1.aspx.cs" Inherits="JMD.createstudentprofile1" %>


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
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 208px;
        }
        .auto-style3 {
            width: 211px;
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
                    </div>
                    <!--close welcome_slogan-->
                </div>
                <!--close banner-->
            </div>
            <!--close header-->

            <div id="menubar">
                <ul id="menu">
                    <li>
                        <h1>Create Student Profile</h1>
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
                                    <br />


                                    <table class="auto-style1" draggable="false">
                                        <tr>
                                            <td class="auto-style3">
                                                <asp:Label ID="Label1" runat="server" Text="First Name"></asp:Label></td>
                                            <td>
                                                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                                                <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="TextBox1" ErrorMessage="Must only contain letters" ValidationExpression="[a-zA-Z]{3,30}"></asp:RegularExpressionValidator>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="auto-style3">
                                                <asp:Label ID="Label2" runat="server" Text="Last Name"></asp:Label></td>
                                            <td>
                                                <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                                                <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate="TextBox2" ErrorMessage="Must only contain letters" ValidationExpression="[a-zA-Z]{3,10}"></asp:RegularExpressionValidator>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="auto-style3">
                                                <asp:Label ID="Label3" runat="server" Text="Suffix"></asp:Label></td>
                                            <td>
                                                <asp:DropDownList ID="DropDownList1" runat="server">
                                                    <asp:ListItem></asp:ListItem>
                                                    <asp:ListItem Value="Jr">Jr.</asp:ListItem>
                                                    <asp:ListItem Value="Sr">Sr.</asp:ListItem>
                                                    <asp:ListItem Value="I">I</asp:ListItem>
                                                    <asp:ListItem Value="II">II</asp:ListItem>
                                                    <asp:ListItem Value="III">III</asp:ListItem>
                                                </asp:DropDownList>
                                            </td>
                                        </tr>

                                        <tr>
                                            <td class="auto-style3">
                                                <asp:Label ID="Label5" runat="server" Text="Gender"></asp:Label></td>
                                            <td>
                                                <asp:DropDownList ID="DropDownList4" runat="server">
                                                    <asp:ListItem Value="Male">Male</asp:ListItem>
                                                    <asp:ListItem Value="Female">Female</asp:ListItem>
                                                    <asp:ListItem Value="nopes">Don&#39;t want to disclose</asp:ListItem>
                                                </asp:DropDownList>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="auto-style3">
                                                <asp:Label ID="Label4" runat="server" Text="EmailID"></asp:Label></td>
                                            <td>
                                                <asp:TextBox ID="TextBox3" runat="server" OnTextChanged="TextBox3_TextChanged1"></asp:TextBox>
                                                <asp:Label ID="Label20" runat="server"></asp:Label></td>

                                        </tr>
                                        <tr>
                                            <td class="auto-style3">
                                                <asp:Label ID="Label6" runat="server" Text="Country of Citizenship"></asp:Label></td>
                                            <td>
                                                <asp:DropDownList ID="DropDownList5" runat="server">
                                                </asp:DropDownList>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="auto-style3">
                                                <asp:Label ID="Label7" runat="server" Text="SSN"></asp:Label></td>
                                            <td>
                                                <asp:TextBox ID="TextBox5" runat="server" OnTextChanged="TextBox5_TextChanged1"></asp:TextBox><asp:Label ID="Label22" runat="server"></asp:Label>

                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="auto-style3">

                                                <asp:Label ID="Label8" runat="server" Text="Birthday"></asp:Label>

                                            </td>
                                            <td>


                                                <asp:TextBox ID="txtStartDate" runat="server"></asp:TextBox>
                                                <asp:CalendarExtender ID="CalendarExtender1" runat="server" TargetControlID="txtStartDate"></asp:CalendarExtender>

                                                <asp:ToolkitScriptManager ID="ToolkitScriptManager1" runat="server"></asp:ToolkitScriptManager>


                                            </td>
                                        </tr>
                                    </table>


                                    <br />

                                    <asp:Label ID="Label9" runat="server" Text="Ethinicity" Font-Bold="True" Font-Size="Larger"></asp:Label><br />
                                    <br />
                                    <asp:CheckBox ID="CheckBox1" runat="server" value="yes" Text="&quot;Are you Hispanic or Latino?&quot;" />
                                    &nbsp; 
            <br />
                                    <br />
                                    <asp:Label ID="Label19" runat="server" Text="What race Do you consider Yourself"></asp:Label>
                                    <asp:RadioButtonList ID="RadioButtonList1" runat="server">
                                        <asp:ListItem Value="alaskanNative">Alaskan Native</asp:ListItem>
                                        <asp:ListItem Value="indianAmerican">American Indian</asp:ListItem>
                                        <asp:ListItem Value="africanAmerican">African American OR Black</asp:ListItem>
                                        <asp:ListItem Value="nativeHawaiian">Native Hawaiian Or Other Pacific Islander</asp:ListItem>
                                        <asp:ListItem Value="asian">Asian</asp:ListItem>
                                        <asp:ListItem Value="white">White</asp:ListItem>
                                    </asp:RadioButtonList>
                                    <br />
                                    <asp:Label ID="Label11" runat="server" Text="Mailing Information" Font-Bold="True" Font-Size="Larger"></asp:Label><br />
                                    <table class="auto-style1">
                                        <tr>
                                            <td class="auto-style2">
                                                <asp:Label ID="Label12" runat="server" Text="Address Line1"></asp:Label></td>
                                            <td>
                                                <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="auto-style2">
                                                <asp:Label ID="Label13" runat="server" Text="Address Line 2"></asp:Label></td>
                                            <td>
                                                <asp:TextBox ID="TextBox7" runat="server"></asp:TextBox>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="auto-style2">
                                                <asp:Label ID="Label14" runat="server" Text="City"></asp:Label></td>
                                            <td>
                                                <asp:TextBox ID="TextBox8" runat="server"></asp:TextBox>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="auto-style2">
                                                <asp:Label ID="Label15" runat="server" Text="State"></asp:Label></td>
                                            <td>
                                                <asp:DropDownList ID="DropDownList3" runat="server">
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
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="auto-style2">
                                                <asp:Label ID="Label16" runat="server" Text="Zip"></asp:Label></td>
                                            <td>
                                                <asp:TextBox ID="TextBox10" runat="server" OnTextChanged="TextBox10_TextChanged1"></asp:TextBox>
                                                <asp:Label ID="Label21" runat="server"></asp:Label>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="auto-style2">
                                                <asp:Label ID="Label17" runat="server" Text=" Foreign Postal Code"></asp:Label></td>
                                            <td>
                                                <asp:TextBox ID="TextBox11" runat="server"></asp:TextBox>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="auto-style2">
                                                <asp:Label ID="Label18" runat="server" Text="Country"></asp:Label></td>
                                            <td>
                                                <asp:DropDownList ID="DropDownList2" runat="server" Width="100px">
                                                </asp:DropDownList>
                                            </td>
                                        </tr>
                                    </table>
                                    <br/>
                                    <br/>
                                    <br/>
                                    <center><asp:Button ID="Button1" runat="server" Text="Next" Type="Submit" Height="34px" Width="74px" OnClick="Button1_Click" /></center>
                                    <br />
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
    </form>

</body>
</html>
