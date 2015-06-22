<%@ Page Title="Appointment" Language="C#" MasterPageFile="~/Site.MasterProject.master" AutoEventWireup="true" CodeBehind="User_Appointments.aspx.cs" Inherits="CMPE285HealthProject.Appointment" %>
<asp:Content runat="server" ID="FeaturedContent" ContentPlaceHolderID="ContentPlaceHolder1">

    <div class="content">
        <div class="wrap">
            <div class="content-top-grid">
                <div class="content-top-grid-header">
                    <div class="content-top-grid-menu-title">
                      
                    </div>
                </div>
            </div>
            <div class="content-menu-grid">
                
                <asp:Label ID="header_label" runat="server" Text="Appointments for "></asp:Label>
                <asp:Label ID="name_label" runat="server" Text=""></asp:Label>
                
                
                <asp:SqlDataSource ID="SqlDataSource1" runat="server"></asp:SqlDataSource>
                <asp:GridView ID="GridView1" runat="server"></asp:GridView>
                
                <br />
                <br />

                <asp:Button ID="appointment_button" runat="server" Text="New Appointment" />
                &nbsp;&nbsp;&nbsp;
                <asp:Button ID="logout_button" runat="server" Text="Logout" />        
            </div>
            </div>
        <div class="clear"></div>
    </div>

</asp:Content>
