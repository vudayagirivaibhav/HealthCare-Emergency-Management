<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.MasterProject.master" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="CMPE285HealthProject.Home" %>

<asp:Content runat="server" ID="FeaturedContent" ContentPlaceHolderID="ContentPlaceHolder1">
    <div class="top-nav">
						<%--<div class="wrap">--%>
							<ul>
                                <!-- to be added links-->
								<li class="active"><a href="Home.aspx">Home</a></li>
								<li><a href="Hospital.aspx">Hospital</a></li>
                                <li><a href="HealthTips.aspx">Hopital List</a></li>
								<li><a href="Physician.aspx">Physician</a></li>
								<li><a href="New_Appointment.aspx">Appointment</a></li>
								<li><a href="Helpline.aspx">Helpline</a></li>
								<li><a href="Ambulance.aspx">Ambulance</a></li>
								
								<li><a href="Parking.aspx">Parking</a></li>
								
							</ul>
                            <div class="clear"> </div>
						</div>
					</div>
			<div class="image-slider">
					    <ul class="rslides rslides1" id="slider1" style="max-width: 2500px;">
					      <li id="rslides1_s0" class="" style="display: block; float: none; position: absolute; opacity: 0; z-index: 1; -webkit-transition: opacity 600ms ease-in-out; transition: opacity 600ms ease-in-out;">
					      	<img src="images/slider3.png" alt=""/>
					      	<div class="slider-info">
					      		<p></p>
					      		
					      		<!--<a href="#">ReadMore</a>-->
					      	</div>
					      </li>
					      <li id="rslides1_s1" class="" style="float: none; position: absolute; opacity: 0; z-index: 1; display: list-item; -webkit-transition: opacity 600ms ease-in-out; transition: opacity 600ms ease-in-out;"><img src="images/slider2.png" alt=""/>
					      	<div class="slider-info">
					      		<p>HEM</p>
					      		<span>HealthCare Emergency Management</span>
					      		<!--<a href="#">ReadMore</a>-->
					      	</div>
					      </li>
					      <li id="rslides1_s2" class="rslides1_on" style="float: left; position: relative; opacity: 1; z-index: 2; display: list-item; -webkit-transition: opacity 600ms ease-in-out; transition: opacity 600ms ease-in-out;"><img src="images/slider2.png" alt=""/>
					      	<div class="slider-info">
					      		<p></p>
					      		
					      		<!--<a href="#">ReadMore</a>-->
					      	</div>
					      </li>
					    </ul>
					</div>
			<div class="content">
				<div class="content-top-grids">
					<div class="wrap">
					<div class="content-top-grid">
							<div class="content-top-grid-header">
								<div class="content-top-grid-pic">
									<a href="#"><img src="images/inject.png" title="image-name" /></a>
								</div>
								<div class="content-top-grid-title">
									<h3>EMERGENCY</h3>
								</div>
								<div class="clear"> </div>
							</div>
								<p>Get Hospital Helpline Numbers </p>
								<a class="grid-button" href="Helpline.aspx">Helpline NO.</a>
								<div class="clear"> </div>
						</div>
						
						<div class="content-top-grid">
							<div class="content-top-grid-header">
								<div class="content-top-grid-pic">
									<a href="#"><img src="images/tool.png" title="image-name" /></a>
								</div>
								<div class="content-top-grid-title">
									<h3>Near by Hospitals</h3>
								</div>
								<div class="clear"> </div>
							</div>
								<p>List of Near by Hospitals </p>
								<a class="grid-button" href="HealthTips.aspx">Near by Hospitals</a>
								<div class="clear"> </div>
						</div>
						
						<div class="content-top-grid">
							<div class="content-top-grid-header">
								<div class="content-top-grid-pic">
									<a href="#"><img src="images/timer.png" title="image-name" /></a>
								</div>
								<div class="content-top-grid-title">
									<h3>APPOINTMENT</h3>
								</div>
								<div class="clear"> </div>
							</div>
								<p>Request for an appointment with the physician</p>
								<a class="grid-button" href="New_Appointment.aspx">Book Appointment</a>
								<div class="clear"> </div>
						</div>											
						<div class="clear"> </div>
					</div>
				</div>
				<div class="clear"> </div>
		</div>
</asp:Content>



