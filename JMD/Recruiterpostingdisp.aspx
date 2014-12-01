<%@ Page Title="" Language="C#" MasterPageFile="~/Site2.Master" AutoEventWireup="true" CodeBehind="Recruiterpostingdisp.aspx.cs" Inherits="JMD.WebForm6" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    </InsertItemTemplate>
    <asp:FormView ID="FormView1" runat="server" DataKeyNames="UserName" DataSourceID="SqlDataSource1">
        <EditItemTemplate>
            PUniversityName:
            <asp:TextBox ID="PUniversityNameTextBox" runat="server" Text='<%# Bind("PUniversityName") %>' />
            <br />
            PCity:
            <asp:TextBox ID="PCityTextBox" runat="server" Text='<%# Bind("PCity") %>' />
            <br />
            PState:
            <asp:TextBox ID="PStateTextBox" runat="server" Text='<%# Bind("PState") %>' />
            <br />
            PZip:
            <asp:TextBox ID="PZipTextBox" runat="server" Text='<%# Bind("PZip") %>' />
            <br />
            MinAct:
            <asp:TextBox ID="MinActTextBox" runat="server" Text='<%# Bind("MinAct") %>' />
            <br />
            MinSAT:
            <asp:TextBox ID="MinSATTextBox" runat="server" Text='<%# Bind("MinSAT") %>' />
            <br />
            MinTOEFL:
            <asp:TextBox ID="MinTOEFLTextBox" runat="server" Text='<%# Bind("MinTOEFL") %>' />
            <br />
            MinIELTS:
            <asp:TextBox ID="MinIELTSTextBox" runat="server" Text='<%# Bind("MinIELTS") %>' />
            <br />
            MinCGPA:
            <asp:TextBox ID="MinCGPATextBox" runat="server" Text='<%# Bind("MinCGPA") %>' />
            <br />
            OutCGPA:
            <asp:TextBox ID="OutCGPATextBox" runat="server" Text='<%# Bind("OutCGPA") %>' />
            <br />
            ExtracurricularRequired:
            <asp:TextBox ID="ExtracurricularRequiredTextBox" runat="server" Text='<%# Bind("ExtracurricularRequired") %>' />
            <br />
            SOP:
            <asp:TextBox ID="SOPTextBox" runat="server" Text='<%# Bind("SOP") %>' />
            <br />
            NumberOfLOR:
            <asp:TextBox ID="NumberOfLORTextBox" runat="server" Text='<%# Bind("NumberOfLOR") %>' />
            <br />
            Transcript:
            <asp:TextBox ID="TranscriptTextBox" runat="server" Text='<%# Bind("Transcript") %>' />
            <br />
            Resume:
            <asp:TextBox ID="ResumeTextBox" runat="server" Text='<%# Bind("Resume") %>' />
            <br />
            Fall:
            <asp:TextBox ID="FallTextBox" runat="server" Text='<%# Bind("Fall") %>' />
            <br />
            Spring:
            <asp:TextBox ID="SpringTextBox" runat="server" Text='<%# Bind("Spring") %>' />
            <br />
            Summer:
            <asp:TextBox ID="SummerTextBox" runat="server" Text='<%# Bind("Summer") %>' />
            <br />
            Deadline1:
            <asp:TextBox ID="Deadline1TextBox" runat="server" Text='<%# Bind("Deadline1") %>' />
            <br />
            Deadline2:
            <asp:TextBox ID="Deadline2TextBox" runat="server" Text='<%# Bind("Deadline2") %>' />
            <br />
            DeadLine3:
            <asp:TextBox ID="DeadLine3TextBox" runat="server" Text='<%# Bind("DeadLine3") %>' />
            <br />
            MonthlySubscription:
            <asp:TextBox ID="MonthlySubscriptionTextBox" runat="server" Text='<%# Bind("MonthlySubscription") %>' />
            <br />
            MonthlySubscriptionPeriod:
            <asp:TextBox ID="MonthlySubscriptionPeriodTextBox" runat="server" Text='<%# Bind("MonthlySubscriptionPeriod") %>' />
            <br />
            HighlightSubscription:
            <asp:TextBox ID="HighlightSubscriptionTextBox" runat="server" Text='<%# Bind("HighlightSubscription") %>' />
            <br />
            HighlightSubscriptionPeriod:
            <asp:TextBox ID="HighlightSubscriptionPeriodTextBox" runat="server" Text='<%# Bind("HighlightSubscriptionPeriod") %>' />
            <br />
            UserName:
            <asp:Label ID="UserNameLabel1" runat="server" Text='<%# Eval("UserName") %>' />
            <br />
            <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
            &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
        </EditItemTemplate>
        <InsertItemTemplate>
            PUniversityName:
            <asp:TextBox ID="PUniversityNameTextBox" runat="server" Text='<%# Bind("PUniversityName") %>' />
            <br />
            PCity:
            <asp:TextBox ID="PCityTextBox" runat="server" Text='<%# Bind("PCity") %>' />
            <br />
            PState:
            <asp:TextBox ID="PStateTextBox" runat="server" Text='<%# Bind("PState") %>' />
            <br />
            PZip:
            <asp:TextBox ID="PZipTextBox" runat="server" Text='<%# Bind("PZip") %>' />
            <br />
            MinAct:
            <asp:TextBox ID="MinActTextBox" runat="server" Text='<%# Bind("MinAct") %>' />
            <br />
            MinSAT:
            <asp:TextBox ID="MinSATTextBox" runat="server" Text='<%# Bind("MinSAT") %>' />
            <br />
            MinTOEFL:
            <asp:TextBox ID="MinTOEFLTextBox" runat="server" Text='<%# Bind("MinTOEFL") %>' />
            <br />
            MinIELTS:
            <asp:TextBox ID="MinIELTSTextBox" runat="server" Text='<%# Bind("MinIELTS") %>' />
            <br />
            MinCGPA:
            <asp:TextBox ID="MinCGPATextBox" runat="server" Text='<%# Bind("MinCGPA") %>' />
            <br />
            OutCGPA:
            <asp:TextBox ID="OutCGPATextBox" runat="server" Text='<%# Bind("OutCGPA") %>' />
            <br />
            ExtracurricularRequired:
            <asp:TextBox ID="ExtracurricularRequiredTextBox" runat="server" Text='<%# Bind("ExtracurricularRequired") %>' />
            <br />
            SOP:
            <asp:TextBox ID="SOPTextBox" runat="server" Text='<%# Bind("SOP") %>' />
            <br />
            NumberOfLOR:
            <asp:TextBox ID="NumberOfLORTextBox" runat="server" Text='<%# Bind("NumberOfLOR") %>' />
            <br />
            Transcript:
            <asp:TextBox ID="TranscriptTextBox" runat="server" Text='<%# Bind("Transcript") %>' />
            <br />
            Resume:
            <asp:TextBox ID="ResumeTextBox" runat="server" Text='<%# Bind("Resume") %>' />
            <br />
            Fall:
            <asp:TextBox ID="FallTextBox" runat="server" Text='<%# Bind("Fall") %>' />
            <br />
            Spring:
            <asp:TextBox ID="SpringTextBox" runat="server" Text='<%# Bind("Spring") %>' />
            <br />
            Summer:
            <asp:TextBox ID="SummerTextBox" runat="server" Text='<%# Bind("Summer") %>' />
            <br />
            Deadline1:
            <asp:TextBox ID="Deadline1TextBox" runat="server" Text='<%# Bind("Deadline1") %>' />
            <br />
            Deadline2:
            <asp:TextBox ID="Deadline2TextBox" runat="server" Text='<%# Bind("Deadline2") %>' />
            <br />
            DeadLine3:
            <asp:TextBox ID="DeadLine3TextBox" runat="server" Text='<%# Bind("DeadLine3") %>' />
            <br />
            MonthlySubscription:
            <asp:TextBox ID="MonthlySubscriptionTextBox" runat="server" Text='<%# Bind("MonthlySubscription") %>' />
            <br />
            MonthlySubscriptionPeriod:
            <asp:TextBox ID="MonthlySubscriptionPeriodTextBox" runat="server" Text='<%# Bind("MonthlySubscriptionPeriod") %>' />
            <br />
            HighlightSubscription:
            <asp:TextBox ID="HighlightSubscriptionTextBox" runat="server" Text='<%# Bind("HighlightSubscription") %>' />
            <br />
            HighlightSubscriptionPeriod:
            <asp:TextBox ID="HighlightSubscriptionPeriodTextBox" runat="server" Text='<%# Bind("HighlightSubscriptionPeriod") %>' />
            <br />
            UserName:
            <asp:TextBox ID="UserNameTextBox" runat="server" Text='<%# Bind("UserName") %>' />
            <br />
            <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
            &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
        </InsertItemTemplate>
        <ItemTemplate>
            PUniversityName:
            <asp:Label ID="PUniversityNameLabel" runat="server" Text='<%# Bind("PUniversityName") %>' />
            <br />
            PCity:
            <asp:Label ID="PCityLabel" runat="server" Text='<%# Bind("PCity") %>' />
            <br />
            PState:
            <asp:Label ID="PStateLabel" runat="server" Text='<%# Bind("PState") %>' />
            <br />
            PZip:
            <asp:Label ID="PZipLabel" runat="server" Text='<%# Bind("PZip") %>' />
            <br />
            MinAct:
            <asp:Label ID="MinActLabel" runat="server" Text='<%# Bind("MinAct") %>' />
            <br />
            MinSAT:
            <asp:Label ID="MinSATLabel" runat="server" Text='<%# Bind("MinSAT") %>' />
            <br />
            MinTOEFL:
            <asp:Label ID="MinTOEFLLabel" runat="server" Text='<%# Bind("MinTOEFL") %>' />
            <br />
            MinIELTS:
            <asp:Label ID="MinIELTSLabel" runat="server" Text='<%# Bind("MinIELTS") %>' />
            <br />
            MinCGPA:
            <asp:Label ID="MinCGPALabel" runat="server" Text='<%# Bind("MinCGPA") %>' />
            <br />
            OutCGPA:
            <asp:Label ID="OutCGPALabel" runat="server" Text='<%# Bind("OutCGPA") %>' />
            <br />
            ExtracurricularRequired:
            <asp:Label ID="ExtracurricularRequiredLabel" runat="server" Text='<%# Bind("ExtracurricularRequired") %>' />
            <br />
            SOP:
            <asp:Label ID="SOPLabel" runat="server" Text='<%# Bind("SOP") %>' />
            <br />
            NumberOfLOR:
            <asp:Label ID="NumberOfLORLabel" runat="server" Text='<%# Bind("NumberOfLOR") %>' />
            <br />
            Transcript:
            <asp:Label ID="TranscriptLabel" runat="server" Text='<%# Bind("Transcript") %>' />
            <br />
            Resume:
            <asp:Label ID="ResumeLabel" runat="server" Text='<%# Bind("Resume") %>' />
            <br />
            Fall:
            <asp:Label ID="FallLabel" runat="server" Text='<%# Bind("Fall") %>' />
            <br />
            Spring:
            <asp:Label ID="SpringLabel" runat="server" Text='<%# Bind("Spring") %>' />
            <br />
            Summer:
            <asp:Label ID="SummerLabel" runat="server" Text='<%# Bind("Summer") %>' />
            <br />
            Deadline1:
            <asp:Label ID="Deadline1Label" runat="server" Text='<%# Bind("Deadline1") %>' />
            <br />
            Deadline2:
            <asp:Label ID="Deadline2Label" runat="server" Text='<%# Bind("Deadline2") %>' />
            <br />
            DeadLine3:
            <asp:Label ID="DeadLine3Label" runat="server" Text='<%# Bind("DeadLine3") %>' />
            <br />
            MonthlySubscription:
            <asp:Label ID="MonthlySubscriptionLabel" runat="server" Text='<%# Bind("MonthlySubscription") %>' />
            <br />
            MonthlySubscriptionPeriod:
            <asp:Label ID="MonthlySubscriptionPeriodLabel" runat="server" Text='<%# Bind("MonthlySubscriptionPeriod") %>' />
            <br />
            HighlightSubscription:
            <asp:Label ID="HighlightSubscriptionLabel" runat="server" Text='<%# Bind("HighlightSubscription") %>' />
            <br />
            HighlightSubscriptionPeriod:
            <asp:Label ID="HighlightSubscriptionPeriodLabel" runat="server" Text='<%# Bind("HighlightSubscriptionPeriod") %>' />
            <br />
            UserName:
            <asp:Label ID="UserNameLabel" runat="server" Text='<%# Eval("UserName") %>' />
            <br />
            <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" CommandName="Edit" Text="Edit" />
            &nbsp;<asp:LinkButton ID="DeleteButton" runat="server" CausesValidation="False" CommandName="Delete" Text="Delete" />
            &nbsp;<asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" CommandName="New" Text="New" />
        </ItemTemplate>
    </asp:FormView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:amalviy_LinkedUConnectionString %>" DeleteCommand="DELETE FROM [RecruiterPosting] WHERE [UserName] = @UserName" InsertCommand="INSERT INTO [RecruiterPosting] ([PUniversityName], [PCity], [PState], [PZip], [MinAct], [MinSAT], [MinTOEFL], [MinIELTS], [MinCGPA], [OutCGPA], [ExtracurricularRequired], [SOP], [NumberOfLOR], [Transcript], [Resume], [Fall], [Spring], [Summer], [Deadline1], [Deadline2], [DeadLine3], [MonthlySubscription], [MonthlySubscriptionPeriod], [HighlightSubscription], [HighlightSubscriptionPeriod], [UserName]) VALUES (@PUniversityName, @PCity, @PState, @PZip, @MinAct, @MinSAT, @MinTOEFL, @MinIELTS, @MinCGPA, @OutCGPA, @ExtracurricularRequired, @SOP, @NumberOfLOR, @Transcript, @Resume, @Fall, @Spring, @Summer, @Deadline1, @Deadline2, @DeadLine3, @MonthlySubscription, @MonthlySubscriptionPeriod, @HighlightSubscription, @HighlightSubscriptionPeriod, @UserName)" SelectCommand="SELECT * FROM [RecruiterPosting] WHERE ([UserName] = @UserName)" UpdateCommand="UPDATE [RecruiterPosting] SET [PUniversityName] = @PUniversityName, [PCity] = @PCity, [PState] = @PState, [PZip] = @PZip, [MinAct] = @MinAct, [MinSAT] = @MinSAT, [MinTOEFL] = @MinTOEFL, [MinIELTS] = @MinIELTS, [MinCGPA] = @MinCGPA, [OutCGPA] = @OutCGPA, [ExtracurricularRequired] = @ExtracurricularRequired, [SOP] = @SOP, [NumberOfLOR] = @NumberOfLOR, [Transcript] = @Transcript, [Resume] = @Resume, [Fall] = @Fall, [Spring] = @Spring, [Summer] = @Summer, [Deadline1] = @Deadline1, [Deadline2] = @Deadline2, [DeadLine3] = @DeadLine3, [MonthlySubscription] = @MonthlySubscription, [MonthlySubscriptionPeriod] = @MonthlySubscriptionPeriod, [HighlightSubscription] = @HighlightSubscription, [HighlightSubscriptionPeriod] = @HighlightSubscriptionPeriod WHERE [UserName] = @UserName">
        <DeleteParameters>
            <asp:Parameter Name="UserName" Type="String" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="PUniversityName" Type="String" />
            <asp:Parameter Name="PCity" Type="String" />
            <asp:Parameter Name="PState" Type="String" />
            <asp:Parameter Name="PZip" Type="String" />
            <asp:Parameter Name="MinAct" Type="Int32" />
            <asp:Parameter Name="MinSAT" Type="Int32" />
            <asp:Parameter Name="MinTOEFL" Type="Int32" />
            <asp:Parameter Name="MinIELTS" Type="Int32" />
            <asp:Parameter Name="MinCGPA" Type="Double" />
            <asp:Parameter Name="OutCGPA" Type="Double" />
            <asp:Parameter Name="ExtracurricularRequired" Type="String" />
            <asp:Parameter Name="SOP" Type="String" />
            <asp:Parameter Name="NumberOfLOR" Type="Int32" />
            <asp:Parameter Name="Transcript" Type="String" />
            <asp:Parameter Name="Resume" Type="String" />
            <asp:Parameter Name="Fall" Type="String" />
            <asp:Parameter Name="Spring" Type="String" />
            <asp:Parameter Name="Summer" Type="String" />
            <asp:Parameter DbType="Date" Name="Deadline1" />
            <asp:Parameter DbType="Date" Name="Deadline2" />
            <asp:Parameter DbType="Date" Name="DeadLine3" />
            <asp:Parameter Name="MonthlySubscription" Type="String" />
            <asp:Parameter Name="MonthlySubscriptionPeriod" Type="String" />
            <asp:Parameter Name="HighlightSubscription" Type="String" />
            <asp:Parameter Name="HighlightSubscriptionPeriod" Type="String" />
            <asp:Parameter Name="UserName" Type="String" />
        </InsertParameters>
        <SelectParameters>
            <asp:SessionParameter Name="UserName" SessionField="recUserid" Type="String" />
        </SelectParameters>
        <UpdateParameters>
            <asp:Parameter Name="PUniversityName" Type="String" />
            <asp:Parameter Name="PCity" Type="String" />
            <asp:Parameter Name="PState" Type="String" />
            <asp:Parameter Name="PZip" Type="String" />
            <asp:Parameter Name="MinAct" Type="Int32" />
            <asp:Parameter Name="MinSAT" Type="Int32" />
            <asp:Parameter Name="MinTOEFL" Type="Int32" />
            <asp:Parameter Name="MinIELTS" Type="Int32" />
            <asp:Parameter Name="MinCGPA" Type="Double" />
            <asp:Parameter Name="OutCGPA" Type="Double" />
            <asp:Parameter Name="ExtracurricularRequired" Type="String" />
            <asp:Parameter Name="SOP" Type="String" />
            <asp:Parameter Name="NumberOfLOR" Type="Int32" />
            <asp:Parameter Name="Transcript" Type="String" />
            <asp:Parameter Name="Resume" Type="String" />
            <asp:Parameter Name="Fall" Type="String" />
            <asp:Parameter Name="Spring" Type="String" />
            <asp:Parameter Name="Summer" Type="String" />
            <asp:Parameter DbType="Date" Name="Deadline1" />
            <asp:Parameter DbType="Date" Name="Deadline2" />
            <asp:Parameter DbType="Date" Name="DeadLine3" />
            <asp:Parameter Name="MonthlySubscription" Type="String" />
            <asp:Parameter Name="MonthlySubscriptionPeriod" Type="String" />
            <asp:Parameter Name="HighlightSubscription" Type="String" />
            <asp:Parameter Name="HighlightSubscriptionPeriod" Type="String" />
            <asp:Parameter Name="UserName" Type="String" />
        </UpdateParameters>
    </asp:SqlDataSource>
</asp:Content>
