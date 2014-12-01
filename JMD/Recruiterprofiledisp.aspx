<%@ Page Title="" Language="C#" MasterPageFile="~/Site2.Master" AutoEventWireup="true" CodeBehind="WebForm4.aspx.cs" Inherits="JMD.WebForm4" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <asp:FormView ID="FormView1" runat="server" AllowPaging="True" DataKeyNames="UserName" DataSourceID="SqlDataSource1">
        <EditItemTemplate>
            UserName:
            <asp:Label ID="UserNameLabel1" runat="server" Text='<%# Eval("UserName") %>' />
            <br />
            RFirstName:
            <asp:TextBox ID="RFirstNameTextBox" runat="server" Text='<%# Bind("RFirstName") %>' />
            <br />
            RLastName:
            <asp:TextBox ID="RLastNameTextBox" runat="server" Text='<%# Bind("RLastName") %>' />
            <br />
            RUniversityName:
            <asp:TextBox ID="RUniversityNameTextBox" runat="server" Text='<%# Bind("RUniversityName") %>' />
            <br />
            RCity:
            <asp:TextBox ID="RCityTextBox" runat="server" Text='<%# Bind("RCity") %>' />
            <br />
            RState:
            <asp:TextBox ID="RStateTextBox" runat="server" Text='<%# Bind("RState") %>' />
            <br />
            RZip:
            <asp:TextBox ID="RZipTextBox" runat="server" Text='<%# Bind("RZip") %>' />
            <br />
            REmailID:
            <asp:TextBox ID="REmailIDTextBox" runat="server" Text='<%# Bind("REmailID") %>' />
            <br />
            RPhone:
            <asp:TextBox ID="RPhoneTextBox" runat="server" Text='<%# Bind("RPhone") %>' />
            <br />
            <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
            &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
        </EditItemTemplate>
        <InsertItemTemplate>
            UserName:
            <asp:TextBox ID="UserNameTextBox" runat="server" Text='<%# Bind("UserName") %>' />
            <br />
            RFirstName:
            <asp:TextBox ID="RFirstNameTextBox" runat="server" Text='<%# Bind("RFirstName") %>' />
            <br />
            RLastName:
            <asp:TextBox ID="RLastNameTextBox" runat="server" Text='<%# Bind("RLastName") %>' />
            <br />
            RUniversityName:
            <asp:TextBox ID="RUniversityNameTextBox" runat="server" Text='<%# Bind("RUniversityName") %>' />
            <br />
            RCity:
            <asp:TextBox ID="RCityTextBox" runat="server" Text='<%# Bind("RCity") %>' />
            <br />
            RState:
            <asp:TextBox ID="RStateTextBox" runat="server" Text='<%# Bind("RState") %>' />
            <br />
            RZip:
            <asp:TextBox ID="RZipTextBox" runat="server" Text='<%# Bind("RZip") %>' />
            <br />
            REmailID:
            <asp:TextBox ID="REmailIDTextBox" runat="server" Text='<%# Bind("REmailID") %>' />
            <br />
            RPhone:
            <asp:TextBox ID="RPhoneTextBox" runat="server" Text='<%# Bind("RPhone") %>' />
            <br />
            <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
            &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
        </InsertItemTemplate>
        <ItemTemplate>
            UserName:
            <asp:Label ID="UserNameLabel" runat="server" Text='<%# Eval("UserName") %>' />
            <br />
            RFirstName:
            <asp:Label ID="RFirstNameLabel" runat="server" Text='<%# Bind("RFirstName") %>' />
            <br />
            RLastName:
            <asp:Label ID="RLastNameLabel" runat="server" Text='<%# Bind("RLastName") %>' />
            <br />
            RUniversityName:
            <asp:Label ID="RUniversityNameLabel" runat="server" Text='<%# Bind("RUniversityName") %>' />
            <br />
            RCity:
            <asp:Label ID="RCityLabel" runat="server" Text='<%# Bind("RCity") %>' />
            <br />
            RState:
            <asp:Label ID="RStateLabel" runat="server" Text='<%# Bind("RState") %>' />
            <br />
            RZip:
            <asp:Label ID="RZipLabel" runat="server" Text='<%# Bind("RZip") %>' />
            <br />
            REmailID:
            <asp:Label ID="REmailIDLabel" runat="server" Text='<%# Bind("REmailID") %>' />
            <br />
            RPhone:
            <asp:Label ID="RPhoneLabel" runat="server" Text='<%# Bind("RPhone") %>' />
            <br />
            <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" CommandName="Edit" Text="Edit" />
            &nbsp;<asp:LinkButton ID="DeleteButton" runat="server" CausesValidation="False" CommandName="Delete" Text="Delete" />
            &nbsp;<asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" CommandName="New" Text="New" />
        </ItemTemplate>
    </asp:FormView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:amalviy_LinkedUConnectionString %>" DeleteCommand="DELETE FROM [RecruiterProfile] WHERE [UserName] = @UserName" InsertCommand="INSERT INTO [RecruiterProfile] ([UserName], [RFirstName], [RLastName], [RUniversityName], [RCity], [RState], [RZip], [REmailID], [RPhone]) VALUES (@UserName, @RFirstName, @RLastName, @RUniversityName, @RCity, @RState, @RZip, @REmailID, @RPhone)" SelectCommand="SELECT * FROM [RecruiterProfile] WHERE ([UserName] = @UserName)" UpdateCommand="UPDATE [RecruiterProfile] SET [RFirstName] = @RFirstName, [RLastName] = @RLastName, [RUniversityName] = @RUniversityName, [RCity] = @RCity, [RState] = @RState, [RZip] = @RZip, [REmailID] = @REmailID, [RPhone] = @RPhone WHERE [UserName] = @UserName">
        <DeleteParameters>
            <asp:Parameter Name="UserName" Type="String" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="UserName" Type="String" />
            <asp:Parameter Name="RFirstName" Type="String" />
            <asp:Parameter Name="RLastName" Type="String" />
            <asp:Parameter Name="RUniversityName" Type="String" />
            <asp:Parameter Name="RCity" Type="String" />
            <asp:Parameter Name="RState" Type="String" />
            <asp:Parameter Name="RZip" Type="String" />
            <asp:Parameter Name="REmailID" Type="String" />
            <asp:Parameter Name="RPhone" Type="String" />
        </InsertParameters>
        <SelectParameters>
            <asp:SessionParameter Name="UserName" SessionField="recUserid" Type="String" />
        </SelectParameters>
        <UpdateParameters>
            <asp:Parameter Name="RFirstName" Type="String" />
            <asp:Parameter Name="RLastName" Type="String" />
            <asp:Parameter Name="RUniversityName" Type="String" />
            <asp:Parameter Name="RCity" Type="String" />
            <asp:Parameter Name="RState" Type="String" />
            <asp:Parameter Name="RZip" Type="String" />
            <asp:Parameter Name="REmailID" Type="String" />
            <asp:Parameter Name="RPhone" Type="String" />
            <asp:Parameter Name="UserName" Type="String" />
        </UpdateParameters>
    </asp:SqlDataSource>

</asp:Content>
