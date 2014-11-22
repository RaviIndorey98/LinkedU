<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="WebForm2.aspx.cs" Inherits="JMD.WebForm2" %>
<%@ MasterType VirtualPath="~/Site1.Master" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1">
        <Columns>
            <asp:BoundField DataField="SchoolName" HeaderText="SchoolName" SortExpression="SchoolName" />
            <asp:BoundField DataField="SchoolAddressLine1" HeaderText="SchoolAddressLine1" SortExpression="SchoolAddressLine1" />
            <asp:BoundField DataField="SchoolAddressLine2" HeaderText="SchoolAddressLine2" SortExpression="SchoolAddressLine2" />
            <asp:BoundField DataField="SchoolCity" HeaderText="SchoolCity" SortExpression="SchoolCity" />
            <asp:BoundField DataField="SchoolState" HeaderText="SchoolState" SortExpression="SchoolState" />
            <asp:BoundField DataField="SchoolCountry" HeaderText="SchoolCountry" SortExpression="SchoolCountry" />
            <asp:BoundField DataField="Phone" HeaderText="Phone" SortExpression="Phone" />
            <asp:BoundField DataField="CGPA" HeaderText="CGPA" SortExpression="CGPA" />
            <asp:BoundField DataField="OutOfCGPA" HeaderText="OutOfCGPA" SortExpression="OutOfCGPA" />
            <asp:BoundField DataField="ACTScore" HeaderText="ACTScore" SortExpression="ACTScore" />
            <asp:BoundField DataField="SAT" HeaderText="SAT" SortExpression="SAT" />
            <asp:BoundField DataField="TOEFL" HeaderText="TOEFL" SortExpression="TOEFL" />
            <asp:BoundField DataField="IELTS" HeaderText="IELTS" SortExpression="IELTS" />
            <asp:BoundField DataField="UserName" HeaderText="UserName" SortExpression="UserName" />
            <asp:BoundField DataField="Sports" HeaderText="Sports" SortExpression="Sports" />
            <asp:BoundField DataField="SocialActivities" HeaderText="SocialActivities" SortExpression="SocialActivities" />
            <asp:BoundField DataField="FieldOfInterest1" HeaderText="FieldOfInterest1" SortExpression="FieldOfInterest1" />
            <asp:BoundField DataField="FieldOfInterest2" HeaderText="FieldOfInterest2" SortExpression="FieldOfInterest2" />
            <asp:BoundField DataField="FieldOfInterest3" HeaderText="FieldOfInterest3" SortExpression="FieldOfInterest3" />
            <asp:BoundField DataField="FieldOfInterest4" HeaderText="FieldOfInterest4" SortExpression="FieldOfInterest4" />
            <asp:BoundField DataField="PrefferedCities" HeaderText="PrefferedCities" SortExpression="PrefferedCities" />
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:amalviy_LinkedUConnectionString %>" SelectCommand="SELECT * FROM [AcademicInformation1] WHERE ([UserName] = @UserName)">
        <SelectParameters>
            <asp:SessionParameter Name="UserName" SessionField="useridsess" Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>
    
</asp:Content>
