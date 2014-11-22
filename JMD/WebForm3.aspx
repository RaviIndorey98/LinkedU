<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm3.aspx.cs" Inherits="JMD.WebForm3" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
     <div> 
        
        
        
        <br />
          
   <table>
    <tr>
    <td> 
        Statement of Purpose
        </td>
        <td>
        <asp:FileUpload ID="FileUpload1" runat="server" ToolTip="Select Only word File" />
        </td>
        <td> 
        <asp:Button ID="Button_SOP" runat="server" Text="Upload" onclick="Button1_Click" />
        </td>
        <td class="auto-style1">

 
            <asp:Button ID="Button2" runat="server" Text="View Files" 
                onclick="Button2_Click" />
               </td>
        </tr>
 
</table><br/>


        <table>
    <tr>
    <td> 
        Transcript&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        </td>
        <td>
        <asp:FileUpload ID="FileUpload2" runat="server" ToolTip="Select Only word File" />
        </td>
        <td> 
        <asp:Button ID="Button_Trans" runat="server" Text="Upload" onclick="Button3_Click" />
        </td>
        <td>

 
            &nbsp;</td>
        </tr>
 
</table><br/>


        <table>
    <tr>
    <td> 
        Resume
        </td>
        <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:FileUpload ID="FileUpload3" runat="server" ToolTip="Select Only word File" />
        </td>
        <td> 
        <asp:Button ID="Button_resume" runat="server" Text="Upload" onclick="Button5_Click" />
        </td>
        <td>

 
            &nbsp;</td>
        </tr>
 
</table>




<table><tr><td><p style="width: 56px"><asp:Label ID="Label2" runat="server" Text="label"></asp:Label>  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  </p>
    </td></tr></table>
 

<asp:GridView ID="GridView1" runat="server" Caption="Excel Files " 
        CaptionAlign="Top" HorizontalAlign="Justify" 
         DataKeyNames="UserName" onselectedindexchanged="GridView1_SelectedIndexChanged" 
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
        <br />
        <br />
        <br />
        <br />
    </div>
    </form>
</body>
</html>