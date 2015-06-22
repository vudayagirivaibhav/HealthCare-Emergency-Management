<%@ Page Title="Booking" Language="C#" MasterPageFile="~/Site.MasterProject.master" AutoEventWireup="true" CodeBehind="Booking.aspx.cs" Inherits="CMPE285HealthProject.Booking" %>
<asp:Content runat="server" ID="FeaturedContent" ContentPlaceHolderID="ContentPlaceHolder1">
    <div class="content">
        <div class="wrap">
            <div class="content-top-grid">
                <div class="content-top-grid-header">
                    <div class="content-top-grid-menu-title">
                        <h3>Appointment Booked</h3>
                    </div>
                </div>
            </div>
            <div class="content-menu-grid">
              <br />

                <asp:Label ID="booking_label" runat="server" Text="Your appointment has been successfully booked." Font-Size="Large" ForeColor="Blue"></asp:Label>  
            <br />
            <br />              
                <asp:Button ID="new_button" runat="server" Text="New Appointment" OnClick="new_button_Click" />  
                <br />
                <br />       
            </div>
            </div>
        <div class="clear"></div>
    </div>
</asp:Content>

