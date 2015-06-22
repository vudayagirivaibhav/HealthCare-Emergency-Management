<%@ Page Title="Hospital" Language="C#" MasterPageFile="~/Site.MasterProject.master" AutoEventWireup="true" CodeBehind="Hospital.aspx.cs" Inherits="CMPE285HealthProject.Hospital" %>

<asp:Content runat="server" ID="FeaturedContent" ContentPlaceHolderID="ContentPlaceHolder1">
    <!---Code to be added here---->
    <div class="top-nav">
						<div class="wrap">
							<ul>
                                <!-- to be added links-->
								<li><a href="Home.aspx">Home</a></li>
                                <li><a href="HealthTips.aspx">Hospital List</a></li>
								<li class="active"><a href="Hospital.aspx">Hospital</a></li>
								<li><a href="Physician.aspx">Physician</a></li>
								<li><a href="New_Appointment.aspx">Appointment</a></li>
								<li><a href="Helpline.aspx">Helpline</a></li>
								<li><a href="Ambulance.aspx">Ambulance</a></li>
								
								<li><a href="Parking.aspx">Parking</a></li>
								
							</ul>
                            <div class="clear"> </div>
						</div>
					</div>
    <script type="text/javascript" src="http://maps.googleapis.com/maps/api/js?sensor=false"></script>
<script type="text/javascript">
    var directionsDisplay;
    var directionsService = new google.maps.DirectionsService();



    function InitializeMap() {

        directionsDisplay = new google.maps.DirectionsRenderer();
        var latlng = new google.maps.LatLng(-34.397, 150.644);
        var myOptions =
        {
            //zoom: 8,
            center: latlng,
            mapTypeId: google.maps.MapTypeId.ROADMAP
        };
        var map = new google.maps.Map(document.getElementById("map"), myOptions);

        directionsDisplay.setMap(map);
        directionsDisplay.setPanel(document.getElementById('directionpanel'));

        var control = document.getElementById('control');
        control.style.display = 'block';


    }

    function calcRoute() {
        var temp = $('.hospital_location').val();

        var start = document.getElementById('user_location').value;
        var end = temp;
        var request = {
            origin: start,
            destination: end,
            travelMode: google.maps.DirectionsTravelMode.DRIVING
        };
        directionsService.route(request, function (response, status) {
            if (status == google.maps.DirectionsStatus.OK) {
                directionsDisplay.setDirections(response);
            }
        });

    }



    function Button1_onclick() {
        calcRoute();
    }

    window.onload = InitializeMap;

</script>

    <div class="content">
        <div class="wrap">
            <div class="content-top-grid">
                <div class="content-top-grid-header">
                    <div class="content-top-grid-menu-title">
                        <h3>HOSPITAL</h3>
                    </div>
                </div>
            </div>
            <div class="content-menu-grid">
                <p>
                    Search by Location:
                      <asp:DropDownList ID="LocationList" runat="server" AppendDataBoundItems="true" AutoPostBack="true" OnSelectedIndexChanged="Get_Hospital" Width="200px">
                          <asp:ListItem Value="">Please Select</asp:ListItem>
                      </asp:DropDownList>
                    <br />
                    <br />
                    OR
                      <br />
                    <br />
                    Search by Hospital:
                      <asp:DropDownList ID="HospitalList" runat="server" AutoPostBack="true" Width="200px">
                      </asp:DropDownList>
                    <br />
                    <br />
                    <asp:Button ID="Search" runat="server" Text="Get Details" OnClick="Search_Click" />

                    <asp:Button id="get_direction" runat="server" Text="Get Direction" OnClick="get_direction_Click"/>

                    <label >Enter Your Location: </label>
                    <input  id="user_location" type="text" />
                    <input  type="button" id="go_button" value ="Go" onclick="Button1_onclick()" />
                    <input  runat="server" id="hospital_location" style="visibility:hidden" type="text" class="hospital_location"/>

                    <asp:TextBox ID="hidden_text" runat="server" Visible="false"></asp:TextBox>
                    
                    <br />
                </p>               
                             
                <br />
                <asp:Label ID="description_label" runat="server" Text="Description:" Visible="false" Font-Bold="True" ForeColor="Black"></asp:Label>
                <br />
                <asp:Label ID="description" runat="server" Visible="false"></asp:Label>
                <br />
                <br />
                <asp:Label ID="address_label" runat="server" Text="Address:" Visible="false" Font-Bold="True" ForeColor="Black"></asp:Label>
                <br />
                <asp:Label ID="address" runat="server" Visible="false"></asp:Label>
                <br />
                <br />
                <asp:Label ID="phone_label" runat="server" Text="Phone:" Visible="false" Font-Bold="True" ForeColor="Black"></asp:Label>
                <br />
                <asp:Label ID="phone1" runat="server" Visible="false"></asp:Label>
                <br />
                <asp:Label ID="phone2" runat="server" Visible="false"></asp:Label>
                <br />
                <br />
                <asp:Label ID="website_label" runat="server" Text="Website:" Visible="false" Font-Bold="True" ForeColor="Black"></asp:Label>
                <asp:HyperLink ID="HyperLink1" runat="server" Visible="false" Target="_blank"></asp:HyperLink>
                <br />
                <br />
                <asp:Label ID="rating_label" runat="server" Text="Rating(out of 10):  " Visible="false" Font-Bold="True" ForeColor="Black"></asp:Label>
                <asp:Label ID="rating" runat="server" Visible="false"></asp:Label>
                
                        <br />
                <div id ="directionpanel" style="height: 390px;overflow: auto;" ></div>
                <div id ="map" style="height: 1000px; width: 700px"></div>
            </div>
        </div>
        <div class="clear"></div>
    </div>
</asp:Content>



