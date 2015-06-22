<%@ Page Title="Physician" Language="C#" MasterPageFile="~/Site.MasterProject.master" AutoEventWireup="true" CodeBehind="Physician.aspx.cs" Inherits="CMPE285HealthProject.Physician" %>

<asp:Content runat="server" ID="FeaturedContent" ContentPlaceHolderID="ContentPlaceHolder1">
    <div class="top-nav">
						<div class="wrap">
							<ul>
                                <!-- to be added links-->
								<li><a href="Home.aspx">Home</a></li>
                                <li><a href="HealthTips.aspx">Hospital List</a></li>
								<li><a href="Hospital.aspx">Hospital</a></li>
								<li class="active"><a href="Physician.aspx">Physician</a></li>
								<li><a href="New_Appointment.aspx">Appointment</a></li>
								<li><a href="Helpline.aspx">Helpline</a></li>
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
                        <h3>PHYSICIAN</h3>
                    </div>
                </div>
            </div>
            <div class="content-menu-grid">
                <p>
                    Search by Specialization:
                    <asp:DropDownList ID="SpecializationList" runat="server" AutoPostBack="true" AppendDataBoundItems="true" OnSelectedIndexChanged="SpecializationList_SelectedIndexChanged" Width="150px">
                        <asp:ListItem Value="">Please Select</asp:ListItem>
                    </asp:DropDownList>
                <br />
                <br />
                    AND
                <br />
                <br />
                    Search by Physician:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp
                    <asp:DropDownList ID="SpecialistList" runat="server" AutoPostBack="true" Width="150px"></asp:DropDownList>
                <br />
                <br />
                    <asp:Button ID="Search" runat="server" Text="Get Physician Details" OnClick="Search_Click"/>
                <br />
                </p>
                <br />
                <asp:Label ID="name_label" runat="server" Text="Physician's Name:" Visible="False" Font-Bold="True" ForeColor="Black"></asp:Label>
                <asp:Label ID="specialist_name" runat="server" Visible="false"></asp:Label>
                <br />
                <br />
                <asp:Label ID="specialization_label" runat="server" Text="Specialist in:" Visible="false" Font-Bold="True" ForeColor="Black"></asp:Label>
                <asp:Label ID="specialization" runat="server" Visible="false"></asp:Label>
                <br />
                <br />
                <asp:Label ID="hospital_label" runat="server" Text="Hospital:" Visible="False" Font-Bold="True" ForeColor="Black"></asp:Label>
                <asp:Label ID="hospital" runat="server" Visible="false"></asp:Label>
                <br />
                <br />
                <asp:Label ID="description_label" runat="server" Text="Description:" Visible="false" Font-Bold="True" ForeColor="Black"></asp:Label>
                <asp:Label ID="description" runat="server" Visible="false"></asp:Label>
                <br />
                <br />
                <asp:Label ID="rating_label" runat="server" Text="Rating(out of 10):" Visible="False" Font-Bold="True" ForeColor="Black"></asp:Label>
                <asp:Label ID="rating" runat="server" Visible="false"></asp:Label>
                <br />
                <br />
                <asp:Button ID="appointment_button" runat="server" Text="Request Appointment" Visible="false" OnClick="appointment_button_Click" />
            </div>
        </div>
        <div class="clear"></div>
    </div>
</asp:Content>
