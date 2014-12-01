<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="StudentHomePage.aspx.cs" Inherits="JMD.WebForm1" %>
<%@ MasterType VirtualPath="~/Site1.Master" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:FormView ID="FormView1" runat="server" DataKeyNames="UserName" DataSourceID="SqlDataSource1">
        <EditItemTemplate>
            UserName:
            <asp:Label ID="UserNameLabel1" runat="server" Text='<%# Eval("UserName") %>' />
            <br />
            FirstName&nbsp; :
            <asp:TextBox ID="FirstNameTextBox" runat="server" Text='<%# Bind("FirstName") %>' />
            <br />
            LastName:
            <asp:TextBox ID="LastNameTextBox" runat="server" Text='<%# Bind("LastName") %>' />
            <br />
            Suffix:
            <asp:TextBox ID="SuffixTextBox" runat="server" Text='<%# Bind("Suffix") %>' />
            <br />
            Gender:
            <asp:TextBox ID="GenderTextBox" runat="server" Text='<%# Bind("Gender") %>' />
            <br />
            CitzenshipCountry:
            <asp:TextBox ID="CitzenshipCountryTextBox" runat="server" Text='<%# Bind("CitzenshipCountry") %>' />
            <br />
            SSN:
            <asp:TextBox ID="SSNTextBox" runat="server" Text='<%# Bind("SSN") %>' />
            <br />
            Birthday:
            <asp:TextBox ID="BirthdayTextBox" runat="server" Text='<%# Bind("Birthday") %>' />
            <br />
            HispanicLatino:
            <asp:TextBox ID="HispanicLatinoTextBox" runat="server" Text='<%# Bind("HispanicLatino") %>' />
            <br />
            Race:
            <asp:TextBox ID="RaceTextBox" runat="server" Text='<%# Bind("Race") %>' />
            <br />
            AddressLine1:
            <asp:TextBox ID="AddressLine1TextBox" runat="server" Text='<%# Bind("AddressLine1") %>' />
            <br />
            AddressLine2:
            <asp:TextBox ID="AddressLine2TextBox" runat="server" Text='<%# Bind("AddressLine2") %>' />
            <br />
            City:
            <asp:TextBox ID="CityTextBox" runat="server" Text='<%# Bind("City") %>' />
            <br />
            State:
            <asp:TextBox ID="StateTextBox" runat="server" Text='<%# Bind("State") %>' />
            <br />
            Zip:
            <asp:TextBox ID="ZipTextBox" runat="server" Text='<%# Bind("Zip") %>' />
            <br />
            ForeignPostalCode:
            <asp:TextBox ID="ForeignPostalCodeTextBox" runat="server" Text='<%# Bind("ForeignPostalCode") %>' />
            <br />
            Country:
            <asp:TextBox ID="CountryTextBox" runat="server" Text='<%# Bind("Country") %>' />
            <br />
            <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
            &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
        </EditItemTemplate>
        <InsertItemTemplate>
            UserName:
            <asp:TextBox ID="UserNameTextBox" runat="server" Text='<%# Bind("UserName") %>' />
            <br />
            FirstName:
            <asp:TextBox ID="FirstNameTextBox" runat="server" Text='<%# Bind("FirstName") %>' />
            <br />
            LastName:
            <asp:TextBox ID="LastNameTextBox" runat="server" Text='<%# Bind("LastName") %>' />
            <br />
            Suffix:
            <asp:TextBox ID="SuffixTextBox" runat="server" Text='<%# Bind("Suffix") %>' />
            <br />
            Gender:
            <asp:TextBox ID="GenderTextBox" runat="server" Text='<%# Bind("Gender") %>' />
            <br />
            CitzenshipCountry:
            <asp:TextBox ID="CitzenshipCountryTextBox" runat="server" Text='<%# Bind("CitzenshipCountry") %>' />
            <br />
            SSN:
            <asp:TextBox ID="SSNTextBox" runat="server" Text='<%# Bind("SSN") %>' />
            <br />
            Birthday:
            <asp:TextBox ID="BirthdayTextBox" runat="server" Text='<%# Bind("Birthday") %>' />
            <br />
            HispanicLatino:
            <asp:TextBox ID="HispanicLatinoTextBox" runat="server" Text='<%# Bind("HispanicLatino") %>' />
            <br />
            Race:
            <asp:TextBox ID="RaceTextBox" runat="server" Text='<%# Bind("Race") %>' />
            <br />
            AddressLine1:
            <asp:TextBox ID="AddressLine1TextBox" runat="server" Text='<%# Bind("AddressLine1") %>' />
            <br />
            AddressLine2:
            <asp:TextBox ID="AddressLine2TextBox" runat="server" Text='<%# Bind("AddressLine2") %>' />
            <br />
            City:
            <asp:TextBox ID="CityTextBox" runat="server" Text='<%# Bind("City") %>' />
            <br />
            State:
            <asp:TextBox ID="StateTextBox" runat="server" Text='<%# Bind("State") %>' />
            <br />
            Zip:
            <asp:TextBox ID="ZipTextBox" runat="server" Text='<%# Bind("Zip") %>' />
            <br />
            ForeignPostalCode:
            <asp:TextBox ID="ForeignPostalCodeTextBox" runat="server" Text='<%# Bind("ForeignPostalCode") %>' />
            <br />
            Country:
            <asp:TextBox ID="CountryTextBox" runat="server" Text='<%# Bind("Country") %>' />
            <br />
            <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
            &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
        </InsertItemTemplate>
        <ItemTemplate>
            UserName:
            <asp:Label ID="UserNameLabel" runat="server" Text='<%# Eval("UserName") %>' />
            <br />
            FirstName:
            <asp:Label ID="FirstNameLabel" runat="server" Text='<%# Bind("FirstName") %>' />
            <br />
            LastName:
            <asp:Label ID="LastNameLabel" runat="server" Text='<%# Bind("LastName") %>' />
            <br />
            Suffix:
            <asp:Label ID="SuffixLabel" runat="server" Text='<%# Bind("Suffix") %>' />
            <br />
            Gender:
            <asp:Label ID="GenderLabel" runat="server" Text='<%# Bind("Gender") %>' />
            <br />
            CitzenshipCountry:
            <asp:Label ID="CitzenshipCountryLabel" runat="server" Text='<%# Bind("CitzenshipCountry") %>' />
            <br />
            SSN:
            <asp:Label ID="SSNLabel" runat="server" Text='<%# Bind("SSN") %>' />
            <br />
            Birthday:
            <asp:Label ID="BirthdayLabel" runat="server" Text='<%# Bind("Birthday") %>' />
            <br />
            HispanicLatino:
            <asp:Label ID="HispanicLatinoLabel" runat="server" Text='<%# Bind("HispanicLatino") %>' />
            <br />
            Race:
            <asp:Label ID="RaceLabel" runat="server" Text='<%# Bind("Race") %>' />
            <br />
            AddressLine1:
            <asp:Label ID="AddressLine1Label" runat="server" Text='<%# Bind("AddressLine1") %>' />
            <br />
            AddressLine2:
            <asp:Label ID="AddressLine2Label" runat="server" Text='<%# Bind("AddressLine2") %>' />
            <br />
            City:
            <asp:Label ID="CityLabel" runat="server" Text='<%# Bind("City") %>' />
            <br />
            State:
            <asp:Label ID="StateLabel" runat="server" Text='<%# Bind("State") %>' />
            <br />
            Zip:
            <asp:Label ID="ZipLabel" runat="server" Text='<%# Bind("Zip") %>' />
            <br />
            ForeignPostalCode:
            <asp:Label ID="ForeignPostalCodeLabel" runat="server" Text='<%# Bind("ForeignPostalCode") %>' />
            <br />
            Country:
            <asp:Label ID="CountryLabel" runat="server" Text='<%# Bind("Country") %>' />
            <br />
            <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" CommandName="Edit" Text="Edit" />
            &nbsp;<asp:LinkButton ID="DeleteButton" runat="server" CausesValidation="False" CommandName="Delete" Text="Delete" />
            &nbsp;<asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" CommandName="New" Text="New" />
        </ItemTemplate>
    </asp:FormView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:amalviy_LinkedUConnectionString %>" DeleteCommand="DELETE FROM [StudentProfile] WHERE [UserName] = @UserName" InsertCommand="INSERT INTO [StudentProfile] ([UserName], [FirstName], [LastName], [Suffix], [Gender], [CitzenshipCountry], [SSN], [Birthday], [HispanicLatino], [Race], [AddressLine1], [AddressLine2], [City], [State], [Zip], [ForeignPostalCode], [Country]) VALUES (@UserName, @FirstName, @LastName, @Suffix, @Gender, @CitzenshipCountry, @SSN, @Birthday, @HispanicLatino, @Race, @AddressLine1, @AddressLine2, @City, @State, @Zip, @ForeignPostalCode, @Country)" SelectCommand="SELECT * FROM [StudentProfile] WHERE ([UserName] = @UserName)" UpdateCommand="UPDATE [StudentProfile] SET [FirstName] = @FirstName, [LastName] = @LastName, [Suffix] = @Suffix, [Gender] = @Gender, [CitzenshipCountry] = @CitzenshipCountry, [SSN] = @SSN, [Birthday] = @Birthday, [HispanicLatino] = @HispanicLatino, [Race] = @Race, [AddressLine1] = @AddressLine1, [AddressLine2] = @AddressLine2, [City] = @City, [State] = @State, [Zip] = @Zip, [ForeignPostalCode] = @ForeignPostalCode, [Country] = @Country WHERE [UserName] = @UserName">
        <DeleteParameters>
            <asp:Parameter Name="UserName" Type="String" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="UserName" Type="String" />
            <asp:Parameter Name="FirstName" Type="String" />
            <asp:Parameter Name="LastName" Type="String" />
            <asp:Parameter Name="Suffix" Type="String" />
            <asp:Parameter Name="Gender" Type="String" />
            <asp:Parameter Name="CitzenshipCountry" Type="String" />
            <asp:Parameter Name="SSN" Type="String" />
            <asp:Parameter DbType="Date" Name="Birthday" />
            <asp:Parameter Name="HispanicLatino" Type="String" />
            <asp:Parameter Name="Race" Type="String" />
            <asp:Parameter Name="AddressLine1" Type="String" />
            <asp:Parameter Name="AddressLine2" Type="String" />
            <asp:Parameter Name="City" Type="String" />
            <asp:Parameter Name="State" Type="String" />
            <asp:Parameter Name="Zip" Type="String" />
            <asp:Parameter Name="ForeignPostalCode" Type="String" />
            <asp:Parameter Name="Country" Type="String" />
        </InsertParameters>
        <SelectParameters>
            <asp:SessionParameter Name="UserName" SessionField="studUserid" Type="String" />
        </SelectParameters>
        <UpdateParameters>
            <asp:Parameter Name="FirstName" Type="String" />
            <asp:Parameter Name="LastName" Type="String" />
            <asp:Parameter Name="Suffix" Type="String" />
            <asp:Parameter Name="Gender" Type="String" />
            <asp:Parameter Name="CitzenshipCountry" Type="String" />
            <asp:Parameter Name="SSN" Type="String" />
            <asp:Parameter DbType="Date" Name="Birthday" />
            <asp:Parameter Name="HispanicLatino" Type="String" />
            <asp:Parameter Name="Race" Type="String" />
            <asp:Parameter Name="AddressLine1" Type="String" />
            <asp:Parameter Name="AddressLine2" Type="String" />
            <asp:Parameter Name="City" Type="String" />
            <asp:Parameter Name="State" Type="String" />
            <asp:Parameter Name="Zip" Type="String" />
            <asp:Parameter Name="ForeignPostalCode" Type="String" />
            <asp:Parameter Name="Country" Type="String" />
            <asp:Parameter Name="UserName" Type="String" />
        </UpdateParameters>
    </asp:SqlDataSource>
    
</asp:Content>

