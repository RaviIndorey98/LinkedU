<%@ Page Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Search.aspx.cs" Inherits="JMD.StudentPages.Search" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
        
    
    
        Search for Student<br />
        <br />
        Search by scores<br />
        <table class="auto-style1">
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style4">MIN</td>
                <td>MAX</td>
            </tr>
            <tr>
                <td class="auto-style2">ACT</td>
                <td class="auto-style4">
                    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                </td>
                <td>
                    <asp:TextBox ID="TextBox2" runat="server" style="margin-left: 0px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">TOEFL</td>
                <td class="auto-style4">
                    <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                </td>
                <td>
                    <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">IELTS</td>
                <td class="auto-style4">
                    <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
                </td>
                <td>
                    <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">SAT</td>
                <td class="auto-style4">
                    <asp:TextBox ID="TextBox7" runat="server"></asp:TextBox>
                </td>
                <td>
                    <asp:TextBox ID="TextBox8" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">GPA</td>
                <td class="auto-style4">
                    <asp:TextBox ID="TextBox9" runat="server"></asp:TextBox>
                </td>
                <td>
                    <asp:TextBox ID="TextBox10" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">Where department is:</td>
                <td class="auto-style3" colspan="2">
    <asp:DropDownList ID="DropDownList1" runat="server">
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
                </td>
                
            </tr>
            <tr>
                <td class="auto-style2">Course</td>
                <td class="auto-style3" colspan="2">
                    <asp:TextBox ID="TextBox11" runat="server" Width="148px"></asp:TextBox>
                </td>
                
            </tr>
            <tr>
                <td class="auto-style2">Session</td>
                <td class="auto-style4" colspan="2">
                    <asp:CheckBox ID="Fall" runat="server" Text="Fall" />
                    <asp:CheckBox ID="Spring" runat="server" Text="Spring" />
                    <asp:CheckBox ID="Summer" runat="server" Text="Summer" />
                </td>
                
            </tr>
            <tr>
                <td class="auto-style2">
                    &nbsp;</td>
                <td class="auto-style4">
                    <asp:Button ID="Button1" runat="server" Text="Search" Width="61px" OnClick="Button1_Click"/>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
        </table>
        <asp:GridView ID="GridView1" runat="server">
        </asp:GridView>
        
</asp:Content>

