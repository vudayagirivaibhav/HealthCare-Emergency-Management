<%@ Page Title="Helpline" Language="C#" MasterPageFile="~/Site.MasterProject.master" AutoEventWireup="true" CodeBehind="Helpline.aspx.cs" Inherits="CMPE285HealthProject.Helpline" %>
<asp:Content runat="server" ID="FeaturedContent" ContentPlaceHolderID="ContentPlaceHolder1">
    <div class="top-nav">
						<div class="wrap">
							<ul>
                                <!-- to be added links-->
								<li><a href="Home.aspx">Home</a></li>
                                <li><a href="HealthTips.aspx">Hospital List</a></li>
								<li><a href="Hospital.aspx">Hospital</a></li>
								<li><a href="Physician.aspx">Physician</a></li>
								<li><a href="New_Appointment.aspx">Appointment</a></li>
								<li  class="active"><a href="Helpline.aspx">Helpline</a></li>
								<li><a href="Ambulance.aspx">Ambulance</a></li>
								
								<li><a href="Parking.aspx">Parking</a></li>
								
							</ul>
                            <div class="clear"> </div>
						</div>
					</div>
    <div class="content">
        <div class="wrap">
            <div class="content-top-grid">
                <div class="content-top-grid-header">
                    <div class="content-top-grid-menu-title">
                        <h3>Helpline Numbers</h3>
                    </div>
                </div>
            </div>
            <div class="content-menu-grid">
                <br />
                <br />
              <p>
                  Search by Hospital:&nbsp;&nbsp;&nbsp;
                  <asp:DropDownList ID="HospitalList" runat="server" Width="200px" AppendDataBoundItems="true" AutoPostBack="true">
                       <asp:ListItem Value="">Please Select</asp:ListItem>
                  </asp:DropDownList>
                  <br />
                  <br />
                  <asp:Button ID="search_button" runat="server" Text="Helpline No." OnClick="search_button_Click" />
              </p>
                <br />
                <br />
                <asp:Label ID="helpline_label" runat="server" Text="Hospital Helpline No. " Visible="False" Font-Bold="True" Font-Size="Large" Font-Underline="True" ForeColor="Black"></asp:Label>
                &nbsp;&nbsp;&nbsp;
                <asp:Label ID="helpline_value" runat="server" Visible="False" Font-Bold="True" Font-Size="X-Large" ForeColor="Blue"></asp:Label>
                <br />
                <br />
                        
            </div>
            </div>
        <div class="clear"></div>
    </div>
</asp:Content>
