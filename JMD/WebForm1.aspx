<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="JMD.WebForm1" %>
<%@ MasterType VirtualPath="~/Site1.Master" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <<asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="UserName" DataSourceID="SqlDataSource1" Height="16px" Width="809px">
        <Columns>
            <asp:BoundField DataField="UserName" HeaderText="UserName" ReadOnly="True" SortExpression="UserName" />
            <asp:BoundField DataField="FirstName" HeaderText="FirstName" SortExpression="FirstName" />
            <asp:BoundField DataField="LastName" HeaderText="LastName" SortExpression="LastName" />
            <asp:BoundField DataField="Suffix" HeaderText="Suffix" SortExpression="Suffix" />
            <asp:BoundField DataField="Gender" HeaderText="Gender" SortExpression="Gender" />
            <asp:BoundField DataField="CitzenshipCountry" HeaderText="CitzenshipCountry" SortExpression="CitzenshipCountry" />
            <asp:BoundField DataField="SSN" HeaderText="SSN" SortExpression="SSN" />
            <asp:BoundField DataField="Birthday" HeaderText="Birthday" SortExpression="Birthday" />
            <asp:BoundField DataField="HispanicLatino" HeaderText="HispanicLatino" SortExpression="HispanicLatino" />
            <asp:BoundField DataField="Race" HeaderText="Race" SortExpression="Race" />
            <asp:BoundField DataField="AddressLine1" HeaderText="AddressLine1" SortExpression="AddressLine1" />
            <asp:BoundField DataField="AddressLine2" HeaderText="AddressLine2" SortExpression="AddressLine2" />
            <asp:BoundField DataField="City" HeaderText="City" SortExpression="City" />
            <asp:BoundField DataField="State" HeaderText="State" SortExpression="State" />
            <asp:BoundField DataField="Zip" HeaderText="Zip" SortExpression="Zip" />
            <asp:BoundField DataField="ForeignPostalCode" HeaderText="ForeignPostalCode" SortExpression="ForeignPostalCode" />
            <asp:BoundField DataField="Country" HeaderText="Country" SortExpression="Country" />
        </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:amalviy_LinkedUConnectionString %>" SelectCommand="SELECT * FROM [StudentProfile] WHERE ([UserName] = @UserName)">
            <SelectParameters>
                <asp:SessionParameter Name="UserName" SessionField="useridsess" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
    
</asp:Content>

