<%@ Page Title="Appointment" Language="C#" MasterPageFile="~/Site.MasterProject.master" AutoEventWireup="true" CodeBehind="New_Appointment.aspx.cs" Inherits="CMPE285HealthProject.New_Appointment" %>
<asp:Content runat="server" ID="FeaturedContent" ContentPlaceHolderID="ContentPlaceHolder1">
    <div class="top-nav">
						<div class="wrap">
							<ul>
                                <!-- to be added links-->
								<li><a href="Home.aspx">Home</a></li>
                                <li><a href="HealthTips.aspx">Hospital List</a></li>
								<li><a href="Hospital.aspx">Hospital</a></li>
								<li><a href="Physician.aspx">Physician</a></li>
								<li  class="active"><a href="New_Appointment.aspx">Appointment</a></li>
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
                        <h3>New Appointment</h3>
                    </div>
                </div>
            </div>
            <div class="content-menu-grid">
              <br />
                <div style="margin-left:350px;">
                <asp:Label ID="note_label" runat="server" Text="Only members can book appointment. " Font-Bold="False" Font-Size="Medium" ForeColor="#0000CC"></asp:Label> 
                <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/SignUp.aspx" Font-Bold="True">Click here</asp:HyperLink> 
                <asp:Label ID="note2_label" runat="server" Text=" to sign up." Font-Bold="False" Font-Size="Medium" ForeColor="#0000CC"></asp:Label>  
                  <br /> 
                <br />
                <br />
                </div> 
                <table class="auto-style1">
                    <tr>
                        <td class="auto-style4">Physician&#39;s Name</td>
                        <td class="auto-style5">
                            &nbsp;&nbsp;&nbsp;
                            <asp:DropDownList ID="SpecialistList" AppendDataBoundItems="true" AutoPostBack="true" runat="server" Width="150px">
                                <asp:ListItem Value="">Please Select</asp:ListItem>
                            </asp:DropDownList>
                        </td>
                        <td class="auto-style6"></td>
                    </tr>
                    <tr>
                        <td class="auto-style7">Date of Appointment</td>
                        <td class="auto-style8">
                            &nbsp;&nbsp;&nbsp;
                            <asp:TextBox ID="date_text" runat="server" TextMode="Date" Width="150px"></asp:TextBox>
                        </td>
                        <td class="auto-style9"></td>
                    </tr>
                    <tr>
                        <td class="auto-style7">Preferred Time</td>
                        <td class="auto-style8">
                            &nbsp;&nbsp;&nbsp;&nbsp;<asp:TextBox ID="time_text" runat="server" TextMode="Time" Width="150px"></asp:TextBox>
                        </td>
                        <td class="auto-style9">&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style4">Patient&#39;s E-mail</td>
                        <td class="auto-style5">
                            &nbsp;&nbsp;&nbsp;
                            <asp:TextBox ID="username_text" runat="server" Width="150px" TextMode="Email"></asp:TextBox>
                        </td>
                        <td class="auto-style6"></td>
                    </tr>
                    <tr>
                        <td class="auto-style4">Patient&#39;s Contact #</td>
                        <td class="auto-style5">
                            &nbsp;&nbsp;&nbsp;
                            <asp:TextBox ID="contact_text" runat="server" Width="150px" TextMode="Phone"></asp:TextBox>
                        </td>
                        <td class="auto-style6"></td>
                    </tr>
                    <tr>
                        <td class="auto-style2">&nbsp;</td>
                        <td class="auto-style3">
                            &nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:Button ID="submit_button" runat="server" OnClick="submit_button_Click" Text="Submit" />
&nbsp;&nbsp;&nbsp;
                            <asp:Button ID="change_button" runat="server" Text="Reset" OnClick="change_button_Click" />
                        </td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style2">&nbsp;</td>
                        <td class="auto-style3">&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style2">&nbsp;</td>
                        <td class="auto-style3">&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                </table>
              
                        
            </div>
            </div>
        <div class="clear"></div>
    </div>
</asp:Content>

<asp:Content ID="Content1" runat="server" contentplaceholderid="head">
    <style type="text/css">
    .auto-style1 {
        width: 100%;
        margin-left:350px;
    }
    .auto-style2 {
        width: 166px;
    }
    .auto-style3 {
            width: 222px;
        }
        .auto-style4 {
            width: 166px;
            height: 40px;
        }
        .auto-style5 {
            width: 222px;
            height: 40px;
        }
        .auto-style6 {
            height: 40px;
        }
        .auto-style7 {
            width: 166px;
            height: 41px;
        }
        .auto-style8 {
            width: 222px;
            height: 41px;
        }
        .auto-style9 {
            height: 41px;
        }
    </style>
</asp:Content>


