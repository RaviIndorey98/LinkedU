<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm8.aspx.cs" Inherits="JMD.WebForm8" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
     
        <asp:ToolkitScriptManager ID="ToolkitScriptManager1" runat="server"></asp:ToolkitScriptManager>
        <asp:TextBox ID="txtStartDate" runat="server"></asp:TextBox>
        <asp:CalendarExtender ID="CalendarExtender1" runat="server" TargetControlID="txtStartDate"></asp:CalendarExtender>
        <br />
        <br />
        <asp:DropDownList ID="DropDownList1" runat="server"></asp:DropDownList>
      
    </form>
</body>
</html>
