<%@ Page Title="Ambulance" Language="C#"  MasterPageFile="~/Site.MasterProject.master" AutoEventWireup="true" CodeBehind="Ambulance.aspx.cs" Inherits="CMPE285HealthProject.Ambulance" %>

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
								<li><a href="Helpline.aspx">Helpline</a></li>
								<li  class="active"><a href="Ambulance.aspx">Ambulance</a></li>
								
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
                        <h3>Ambulance PROVIDER</h3>
                    </div>
                </div>
            </div>
             <div class="content-menu-grid">
                <br />
                <br />
              <p>
                  Search by Location:
                      <asp:DropDownList ID="LocationList" runat="server" AppendDataBoundItems="true" AutoPostBack="true" OnSelectedIndexChanged="Get_Provider" Width="200px">
                          <asp:ListItem Value="">Please Select</asp:ListItem>
                      </asp:DropDownList>
                    <br />
                    <br />
                    OR
                      <br />
                    <br />
                    Search by Provider:
                      <asp:DropDownList ID="ProviderList" runat="server" AutoPostBack="true" Width="200px">

                      </asp:DropDownList>
                           
                    <br />
                    <br />
                    <asp:Button ID="Search" runat="server" Text="Search" OnClick="Search_Click" />
                   </p>
                   <br />
                    <br />
                 <asp:Label ID="ambulancename_label" runat="server" Text="Ambulance Name:         " Visible="False" Font-Bold="True" Font-Size="Large" ForeColor="Black"></asp:Label>
                 <asp:Label ID="ambulancename_value" runat="server" Text="" Visible="false" Font-Bold="True" Font-Size="X-Large" ForeColor="Blue"></asp:Label>
                   <br />
                    <br />
                 <br />
                  <br />
                  <asp:Label ID="provideraddress_label" runat="server" Text="Provider Address:         " Visible="False" Font-Bold="True" Font-Size="Large" ForeColor="Black"></asp:Label>
                 <asp:Label ID="provideraddress_value" runat="server" Text="" Visible="false" Font-Bold="True" Font-Size="X-Large" ForeColor="Blue"></asp:Label>
                  <br />
                 <br />
                 <br />
                 <br />
                  <asp:Label ID="providerphoneno_label" runat="server" Text="Ambulance Phone No:        " Visible="False" Font-Bold="True" Font-Size="Large" ForeColor="Black"></asp:Label>
                 <asp:Label ID="providerphoneno_value" runat="server" Text="" Visible="false" Font-Bold="True" Font-Size="X-Large" ForeColor="Blue"></asp:Label>
                 <br />
                 <br />
                  </div>
            </div>

        <div class="clear"></div>
    </div>
</asp:Content>
   
