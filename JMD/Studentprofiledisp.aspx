<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Studentprofiledisp.aspx.cs" Inherits="JMD.WebForm2" %>
<%@ MasterType VirtualPath="~/Site1.Master" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
 
    <asp:FormView ID="FormView1" runat="server" DataKeyNames="UserName" DataSourceID="SqlDataSource1" Width="469px">
        <EditItemTemplate>
            SchoolName:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="SchoolNameTextBox" runat="server" Text='<%# Bind("SchoolName") %>' />
            <br />
            SchoolAddressLine1:
            <asp:TextBox ID="SchoolAddressLine1TextBox" runat="server" Text='<%# Bind("SchoolAddressLine1") %>' />
            <br />
            SchoolAddressLine2:
            <asp:TextBox ID="SchoolAddressLine2TextBox" runat="server" Text='<%# Bind("SchoolAddressLine2") %>' />
            <br />
            SchoolCity:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="SchoolCityTextBox" runat="server" Text='<%# Bind("SchoolCity") %>' />
            <br />
            SchoolState:
            <asp:TextBox ID="SchoolStateTextBox" runat="server" Text='<%# Bind("SchoolState") %>' />
            <br />
            SchoolCountry:
            <asp:TextBox ID="SchoolCountryTextBox" runat="server" Text='<%# Bind("SchoolCountry") %>' />
            <br />
            Phone:
            <asp:TextBox ID="PhoneTextBox" runat="server" Text='<%# Bind("Phone") %>' />
            <br />
            CGPA:
            <asp:TextBox ID="CGPATextBox" runat="server" Text='<%# Bind("CGPA") %>' />
            <br />
            OutOfCGPA:
            <asp:TextBox ID="OutOfCGPATextBox" runat="server" Text='<%# Bind("OutOfCGPA") %>' />
            <br />
            ACTScore:
            <asp:TextBox ID="ACTScoreTextBox" runat="server" Text='<%# Bind("ACTScore") %>' />
            <br />
            SAT:
            <asp:TextBox ID="SATTextBox" runat="server" Text='<%# Bind("SAT") %>' />
            <br />
            TOEFL:
            <asp:TextBox ID="TOEFLTextBox" runat="server" Text='<%# Bind("TOEFL") %>' />
            <br />
            IELTS:
            <asp:TextBox ID="IELTSTextBox" runat="server" Text='<%# Bind("IELTS") %>' />
            <br />
            UserName:
            <asp:Label ID="UserNameLabel1" runat="server" Text='<%# Eval("UserName") %>' />
            <br />
            Sports:
            <asp:TextBox ID="SportsTextBox" runat="server" Text='<%# Bind("Sports") %>' />
            <br />
            SocialActivities:
            <asp:TextBox ID="SocialActivitiesTextBox" runat="server" Text='<%# Bind("SocialActivities") %>' />
            <br />
            FieldOfInterest1:
            <asp:TextBox ID="FieldOfInterest1TextBox" runat="server" Text='<%# Bind("FieldOfInterest1") %>' />
            <br />
            FieldOfInterest2:
            <asp:TextBox ID="FieldOfInterest2TextBox" runat="server" Text='<%# Bind("FieldOfInterest2") %>' />
            <br />
            FieldOfInterest3:
            <asp:TextBox ID="FieldOfInterest3TextBox" runat="server" Text='<%# Bind("FieldOfInterest3") %>' />
            <br />
            FieldOfInterest4:
            <asp:TextBox ID="FieldOfInterest4TextBox" runat="server" Text='<%# Bind("FieldOfInterest4") %>' />
            <br />
            PrefferedCities:
            <asp:TextBox ID="PrefferedCitiesTextBox" runat="server" Text='<%# Bind("PrefferedCities") %>' />
            <br />
            <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
            &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
        </EditItemTemplate>
        <InsertItemTemplate>
            SchoolName:
            <asp:TextBox ID="SchoolNameTextBox" runat="server" Text='<%# Bind("SchoolName") %>' />
            <br />
            SchoolAddressLine1:
            <asp:TextBox ID="SchoolAddressLine1TextBox" runat="server" Text='<%# Bind("SchoolAddressLine1") %>' />
            <br />
            SchoolAddressLine2:
            <asp:TextBox ID="SchoolAddressLine2TextBox" runat="server" Text='<%# Bind("SchoolAddressLine2") %>' />
            <br />
            SchoolCity:
            <asp:TextBox ID="SchoolCityTextBox" runat="server" Text='<%# Bind("SchoolCity") %>' />
            <br />
            SchoolState:
            <asp:TextBox ID="SchoolStateTextBox" runat="server" Text='<%# Bind("SchoolState") %>' />
            <br />
            SchoolCountry:
            <asp:TextBox ID="SchoolCountryTextBox" runat="server" Text='<%# Bind("SchoolCountry") %>' />
            <br />
            Phone:
            <asp:TextBox ID="PhoneTextBox" runat="server" Text='<%# Bind("Phone") %>' />
            <br />
            CGPA:
            <asp:TextBox ID="CGPATextBox" runat="server" Text='<%# Bind("CGPA") %>' />
            <br />
            OutOfCGPA:
            <asp:TextBox ID="OutOfCGPATextBox" runat="server" Text='<%# Bind("OutOfCGPA") %>' />
            <br />
            ACTScore:
            <asp:TextBox ID="ACTScoreTextBox" runat="server" Text='<%# Bind("ACTScore") %>' />
            <br />
            SAT:
            <asp:TextBox ID="SATTextBox" runat="server" Text='<%# Bind("SAT") %>' />
            <br />
            TOEFL:
            <asp:TextBox ID="TOEFLTextBox" runat="server" Text='<%# Bind("TOEFL") %>' />
            <br />
            IELTS:
            <asp:TextBox ID="IELTSTextBox" runat="server" Text='<%# Bind("IELTS") %>' />
            <br />
            UserName:
            <asp:TextBox ID="UserNameTextBox" runat="server" Text='<%# Bind("UserName") %>' />
            <br />
            Sports:
            <asp:TextBox ID="SportsTextBox" runat="server" Text='<%# Bind("Sports") %>' />
            <br />
            SocialActivities:
            <asp:TextBox ID="SocialActivitiesTextBox" runat="server" Text='<%# Bind("SocialActivities") %>' />
            <br />
            FieldOfInterest1:
            <asp:TextBox ID="FieldOfInterest1TextBox" runat="server" Text='<%# Bind("FieldOfInterest1") %>' />
            <br />
            FieldOfInterest2:
            <asp:TextBox ID="FieldOfInterest2TextBox" runat="server" Text='<%# Bind("FieldOfInterest2") %>' />
            <br />
            FieldOfInterest3:
            <asp:TextBox ID="FieldOfInterest3TextBox" runat="server" Text='<%# Bind("FieldOfInterest3") %>' />
            <br />
            FieldOfInterest4:
            <asp:TextBox ID="FieldOfInterest4TextBox" runat="server" Text='<%# Bind("FieldOfInterest4") %>' />
            <br />
            PrefferedCities:
            <asp:TextBox ID="PrefferedCitiesTextBox" runat="server" Text='<%# Bind("PrefferedCities") %>' />
            <br />
            <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
            &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
        </InsertItemTemplate>
        <ItemTemplate>
            SchoolName:
            <asp:Label ID="SchoolNameLabel" runat="server" Text='<%# Bind("SchoolName") %>' />
            <br />
            SchoolAddressLine1:
            <asp:Label ID="SchoolAddressLine1Label" runat="server" Text='<%# Bind("SchoolAddressLine1") %>' />
            <br />
            SchoolAddressLine2:
            <asp:Label ID="SchoolAddressLine2Label" runat="server" Text='<%# Bind("SchoolAddressLine2") %>' />
            <br />
            SchoolCity:
            <asp:Label ID="SchoolCityLabel" runat="server" Text='<%# Bind("SchoolCity") %>' />
            <br />
            SchoolState:
            <asp:Label ID="SchoolStateLabel" runat="server" Text='<%# Bind("SchoolState") %>' />
            <br />
            SchoolCountry:
            <asp:Label ID="SchoolCountryLabel" runat="server" Text='<%# Bind("SchoolCountry") %>' />
            <br />
            Phone:
            <asp:Label ID="PhoneLabel" runat="server" Text='<%# Bind("Phone") %>' />
            <br />
            CGPA:
            <asp:Label ID="CGPALabel" runat="server" Text='<%# Bind("CGPA") %>' />
            <br />
            OutOfCGPA:
            <asp:Label ID="OutOfCGPALabel" runat="server" Text='<%# Bind("OutOfCGPA") %>' />
            <br />
            ACTScore:
            <asp:Label ID="ACTScoreLabel" runat="server" Text='<%# Bind("ACTScore") %>' />
            <br />
            SAT:
            <asp:Label ID="SATLabel" runat="server" Text='<%# Bind("SAT") %>' />
            <br />
            TOEFL:
            <asp:Label ID="TOEFLLabel" runat="server" Text='<%# Bind("TOEFL") %>' />
            <br />
            IELTS:
            <asp:Label ID="IELTSLabel" runat="server" Text='<%# Bind("IELTS") %>' />
            <br />
            UserName:
            <asp:Label ID="UserNameLabel" runat="server" Text='<%# Eval("UserName") %>' />
            <br />
            Sports:
            <asp:Label ID="SportsLabel" runat="server" Text='<%# Bind("Sports") %>' />
            <br />
            SocialActivities:
            <asp:Label ID="SocialActivitiesLabel" runat="server" Text='<%# Bind("SocialActivities") %>' />
            <br />
            FieldOfInterest1:
            <asp:Label ID="FieldOfInterest1Label" runat="server" Text='<%# Bind("FieldOfInterest1") %>' />
            <br />
            FieldOfInterest2:
            <asp:Label ID="FieldOfInterest2Label" runat="server" Text='<%# Bind("FieldOfInterest2") %>' />
            <br />
            FieldOfInterest3:
            <asp:Label ID="FieldOfInterest3Label" runat="server" Text='<%# Bind("FieldOfInterest3") %>' />
            <br />
            FieldOfInterest4:
            <asp:Label ID="FieldOfInterest4Label" runat="server" Text='<%# Bind("FieldOfInterest4") %>' />
            <br />
            PrefferedCities:
            <asp:Label ID="PrefferedCitiesLabel" runat="server" Text='<%# Bind("PrefferedCities") %>' />
            <br />
            <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" CommandName="Edit" Text="Edit" />
            &nbsp;<asp:LinkButton ID="DeleteButton" runat="server" CausesValidation="False" CommandName="Delete" Text="Delete" />
            &nbsp;<asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" CommandName="New" Text="New" />
        </ItemTemplate>
    </asp:FormView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:amalviy_LinkedUConnectionString %>" DeleteCommand="DELETE FROM [AcademicInformation1] WHERE [UserName] = @UserName" InsertCommand="INSERT INTO [AcademicInformation1] ([SchoolName], [SchoolAddressLine1], [SchoolAddressLine2], [SchoolCity], [SchoolState], [SchoolCountry], [Phone], [CGPA], [OutOfCGPA], [ACTScore], [SAT], [TOEFL], [IELTS], [UserName], [Sports], [SocialActivities], [FieldOfInterest1], [FieldOfInterest2], [FieldOfInterest3], [FieldOfInterest4], [PrefferedCities]) VALUES (@SchoolName, @SchoolAddressLine1, @SchoolAddressLine2, @SchoolCity, @SchoolState, @SchoolCountry, @Phone, @CGPA, @OutOfCGPA, @ACTScore, @SAT, @TOEFL, @IELTS, @UserName, @Sports, @SocialActivities, @FieldOfInterest1, @FieldOfInterest2, @FieldOfInterest3, @FieldOfInterest4, @PrefferedCities)" SelectCommand="SELECT * FROM [AcademicInformation1] WHERE ([UserName] = @UserName)" UpdateCommand="UPDATE [AcademicInformation1] SET [SchoolName] = @SchoolName, [SchoolAddressLine1] = @SchoolAddressLine1, [SchoolAddressLine2] = @SchoolAddressLine2, [SchoolCity] = @SchoolCity, [SchoolState] = @SchoolState, [SchoolCountry] = @SchoolCountry, [Phone] = @Phone, [CGPA] = @CGPA, [OutOfCGPA] = @OutOfCGPA, [ACTScore] = @ACTScore, [SAT] = @SAT, [TOEFL] = @TOEFL, [IELTS] = @IELTS, [Sports] = @Sports, [SocialActivities] = @SocialActivities, [FieldOfInterest1] = @FieldOfInterest1, [FieldOfInterest2] = @FieldOfInterest2, [FieldOfInterest3] = @FieldOfInterest3, [FieldOfInterest4] = @FieldOfInterest4, [PrefferedCities] = @PrefferedCities WHERE [UserName] = @UserName">
        <DeleteParameters>
            <asp:Parameter Name="UserName" Type="String" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="SchoolName" Type="String" />
            <asp:Parameter Name="SchoolAddressLine1" Type="String" />
            <asp:Parameter Name="SchoolAddressLine2" Type="String" />
            <asp:Parameter Name="SchoolCity" Type="String" />
            <asp:Parameter Name="SchoolState" Type="String" />
            <asp:Parameter Name="SchoolCountry" Type="String" />
            <asp:Parameter Name="Phone" Type="String" />
            <asp:Parameter Name="CGPA" Type="Double" />
            <asp:Parameter Name="OutOfCGPA" Type="Double" />
            <asp:Parameter Name="ACTScore" Type="Double" />
            <asp:Parameter Name="SAT" Type="Int32" />
            <asp:Parameter Name="TOEFL" Type="Int32" />
            <asp:Parameter Name="IELTS" Type="Double" />
            <asp:Parameter Name="UserName" Type="String" />
            <asp:Parameter Name="Sports" Type="String" />
            <asp:Parameter Name="SocialActivities" Type="String" />
            <asp:Parameter Name="FieldOfInterest1" Type="String" />
            <asp:Parameter Name="FieldOfInterest2" Type="String" />
            <asp:Parameter Name="FieldOfInterest3" Type="String" />
            <asp:Parameter Name="FieldOfInterest4" Type="String" />
            <asp:Parameter Name="PrefferedCities" Type="String" />
        </InsertParameters>
        <SelectParameters>
            <asp:SessionParameter Name="UserName" SessionField="studUserid" Type="String" />
        </SelectParameters>
        <UpdateParameters>
            <asp:Parameter Name="SchoolName" Type="String" />
            <asp:Parameter Name="SchoolAddressLine1" Type="String" />
            <asp:Parameter Name="SchoolAddressLine2" Type="String" />
            <asp:Parameter Name="SchoolCity" Type="String" />
            <asp:Parameter Name="SchoolState" Type="String" />
            <asp:Parameter Name="SchoolCountry" Type="String" />
            <asp:Parameter Name="Phone" Type="String" />
            <asp:Parameter Name="CGPA" Type="Double" />
            <asp:Parameter Name="OutOfCGPA" Type="Double" />
            <asp:Parameter Name="ACTScore" Type="Double" />
            <asp:Parameter Name="SAT" Type="Int32" />
            <asp:Parameter Name="TOEFL" Type="Int32" />
            <asp:Parameter Name="IELTS" Type="Double" />
            <asp:Parameter Name="Sports" Type="String" />
            <asp:Parameter Name="SocialActivities" Type="String" />
            <asp:Parameter Name="FieldOfInterest1" Type="String" />
            <asp:Parameter Name="FieldOfInterest2" Type="String" />
            <asp:Parameter Name="FieldOfInterest3" Type="String" />
            <asp:Parameter Name="FieldOfInterest4" Type="String" />
            <asp:Parameter Name="PrefferedCities" Type="String" />
            <asp:Parameter Name="UserName" Type="String" />
        </UpdateParameters>
    </asp:SqlDataSource>
    
 
</asp:Content>
