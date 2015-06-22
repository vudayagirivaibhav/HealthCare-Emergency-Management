<%@ Page Title="Parking" Language="C#" MasterPageFile="~/Site.MasterProject.master" AutoEventWireup="true" CodeBehind="Parking.aspx.cs" Inherits="CMPE285HealthProject.Parking" %>

<asp:Content ID="FeaturedContent" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="top-nav">
						<div class="wrap">
							<ul>
                                <!-- to be added links-->
								<li><a href="Home.aspx">Home</a></li>
                                <li><a href="HealthTips.aspx">Hopital List</a></li>
								<li><a href="Hospital.aspx">Hospital</a></li>
								<li><a href="Physician.aspx">Physician</a></li>
								<li><a href="New_Appointment.aspx">Appointment</a></li>
								<li><a href="Helpline.aspx">Helpline</a></li>
								<li><a href="Ambulance.aspx">Ambulance</a></li>
								
								<li  class="active"><a href="Parking.aspx">Parking</a></li>
								
							</ul>
                            <div class="clear"> </div>
						</div>
					</div>
    <div class="content">
        <div class="wrap">
            <div class="content-top-grid">
                <div class="content-top-grid-header">
                    <div class="content-top-grid-menu-title">

                        <h3>PARKING</h3>
                    </div>
                </div>
            </div>
            <div class="content-menu-grid">
                <br />

                <p>
                    Select a Hospital : &nbsp;&nbsp;&nbsp;
                     <asp:DropDownList ID="HospitalList" runat="server" Width="200px" AppendDataBoundItems="true" AutoPostBack="true" >
                         <asp:ListItem Value="">Please Select</asp:ListItem>
                     </asp:DropDownList>
                    <br />
                    <br />

                    <asp:Button ID="search_button" runat="server" Text="Search for parking slot" OnClick="search_button_Click" />
                </p>
                <br />
                <br />
                <asp:Label ID="parkingslots_label" runat="server" Text="Total Parking Slots:       " Visible="False" Font-Bold="True" Font-Size="Large" ForeColor="Black"></asp:Label>
                <asp:Label ID="parkingslots_value" runat="server" Visible="False" Font-Bold="True" Font-Size="XX-Large" ForeColor="Blue"></asp:Label>
                <br />
                <br />
                <br />
                <asp:Label ID="parkingdisable_label" runat="server" Text="Total Parking Slots available:       " Visible="False" Font-Bold="True" Font-Size="Large" ForeColor="Black"></asp:Label>
                <asp:Label ID="parkingdisable_value" runat="server" Text="" Visible="false" Font-Bold="True" Font-Size="XX-Large" ForeColor="Blue"></asp:Label>
                <br />
                <br />
                <br />
                <asp:Label ID="parkingcost_label" runat="server" Text="Parking cost :       " Visible="False" Font-Bold="True" Font-Size="Large" ForeColor="Black"></asp:Label>
                <asp:Label ID="parkingcostcurr_label" runat="server" Text="$" Visible="false" Font-Bold="True" Font-Size="XX-Large" ForeColor="Blue"></asp:Label>
                <asp:Label ID="parkingcost_value" runat="server" Text="" Visible="false" Font-Bold="True" Font-Size="XX-Large" ForeColor="Blue"></asp:Label>
                <br />
                <br />
            </div>


        </div>
        <div class="clear"></div>
    </div>
</asp:Content>

