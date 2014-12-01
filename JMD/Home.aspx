﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="JMD.Home" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script type="text/javascript">
        function RefreshUpdatePanel() {
            __doPostBack('UpdatePanel1', ''); // This JS funcs forces a postback
            // It is generated by ASP.NET when creating the HTML
        };
</script>
    <link href="stylelog.css" rel='stylesheet' type='text/css' />
    <%--<meta name="viewport" content="width=device-width, initial-scale=1" />
    <link href='http://fonts.googleapis.com/css?family=Open+Sans:400,300,600,700,800' rel='stylesheet' type='text.css'/>--%>
</head>
<body>

    <div class="main">
        <div class="header">
            <h1>Login or Create a Free Account!</h1>
        </div>

        <form id="form1" runat="server">
            <ul class="left-form" runat="server">
                <asp:Label ID="Label1" runat="server" Text="New Account"></asp:Label>
                 <asp:ScriptManager ID="ScriptManager1" runat="server">
    </asp:ScriptManager>

                <li>
                    <asp:TextBox ID="TextBox1" runat="server" placeholder="UserName" onkeyup="RefreshUpdatePanel();"  OnTextChanged="processTextChanged"></asp:TextBox>
                    <div class="clear"></div>
                </li>

                <li>
                    <asp:TextBox ID="TextBox2" runat="server" placeholder="Email"></asp:TextBox>
                    <div class="clear"></div>
                </li>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="Invalid Email" ControlToValidate="TextBox2" ValidationExpression="^[_a-z0-9-]+(\.[_a-z0-9-]+)*@[a-z0-9-]+(\.[a-z0-9-]+)*(\.[a-z]{2,4})$"></asp:RegularExpressionValidator>
                <li>
                    <asp:TextBox ID="TextBox3" runat="server" placeholder="Password" TextMode="Password"></asp:TextBox>
                    <div class="clear"></div>
                </li>
                <li>
                    <asp:TextBox ID="TextBox4" runat="server" placeholder="Re-Enter Password" TextMode="Password"></asp:TextBox>
                    <div class="clear"></div>
                </li>
                <li>
                    <asp:RadioButtonList ID="radiolist1" runat="server" Height="16px" Width="241px">
                        <asp:ListItem Value="student">Student</asp:ListItem>
                        <asp:ListItem Value="recruiter">Recruiter</asp:ListItem>
                    </asp:RadioButtonList>
                </li>



                <asp:UpdatePanel ID="UpdatePanel1" runat="server" ChildrenAsTriggers="True">
            <ContentTemplate>
               
                <asp:Label ID="Label5" runat="server" Text=""></asp:Label>
            </ContentTemplate>
            <Triggers>
        <asp:AsyncPostBackTrigger ControlID="TextBox1" />
    </Triggers>
        </asp:UpdatePanel>





                <asp:Button ID="Button2" runat="server" Text="Create Account" OnClick="Button2_Click" />

                <div class="clear" />
                <asp:Label ID="Label4" runat="server"></asp:Label>
                <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="TextBox3" ControlToValidate="TextBox4" Display="Dynamic" ErrorMessage="Passowrd Don't Match"></asp:CompareValidator>
    </div>
    </ul>
        <ul class="right-form">
            <asp:Label ID="Label2" runat="server" Text="Login:"></asp:Label>
            <div>

                <li>
                    <asp:TextBox ID="TextBox5" runat="server" placeholder="UserName"></asp:TextBox></li>
                <li>
                    <asp:TextBox ID="TextBox6" runat="server" placeholder="Password"></asp:TextBox></li>


                <li>
                    <asp:RadioButtonList ID="RadioButtonList1" runat="server" Height="16px" Width="241px">
                        <asp:ListItem Value="student">Student</asp:ListItem>
                        <asp:ListItem Value="recruiter">Recruiter</asp:ListItem>
                    </asp:RadioButtonList>

                </li>
                <li>
                    <asp:Label ID="Label3" runat="server"></asp:Label>
                    <li></li>
                    <asp:LinkButton ID="LinkButton1" runat="server" ForeColor="Black">I forgot my Password!</asp:LinkButton>
            </div>
            <div class="clear"></div>

            <asp:Button ID="Button1" runat="server" Text="Login" Height="39px" Width="131px" Style="margin-left: 63px" OnClick="Button1_Click" />
        </ul>
    <div class="clear"></div>
    </form>
     </div>
</body>
</html>
