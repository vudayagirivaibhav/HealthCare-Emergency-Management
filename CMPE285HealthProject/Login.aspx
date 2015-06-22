<%@ Page Title="Login" Language="C#" MasterPageFile="~/Site.MasterProject.master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="CMPE285HealthProject.Login" %>

<asp:Content runat="server" ID="FeaturedContent" ContentPlaceHolderID="ContentPlaceHolder1">
    <div class="top-nav">
						<div class="wrap">
							<ul>
                                <!-- to be added links-->
								<li class="active"><a href="Home.aspx">Home</a></li>
                                <li><a href="HealthTips.aspx">Hospital List</a></li>
								<li><a href="Hospital.aspx">Hospital</a></li>
								<li><a href="Physician.aspx">Physician</a></li>
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
                        <h3>Login</h3>
                    </div>
                </div>
            </div>
            <div class="content-menu-grid">
              <br />

                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

                <asp:Label ID="error_label" runat="server" Text="Username and/or Password is/are not correct" Visible="False" ForeColor="Red"></asp:Label>                        
                <br />
                <br />
                 <table class="auto-style1">
                    <tr>
                        <td class="auto-style3">Username</td>
                        <td class="auto-style5">
                            <asp:TextBox ID="username_text" runat="server"></asp:TextBox>
                        </td>
                        <td class="auto-style4">
                            <asp:RequiredFieldValidator ID="username_validator" runat="server" ControlToValidate="username_text" ErrorMessage="Please enter Username" ForeColor="Red"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style3">Password</td>
                        <td class="auto-style5">
                            <asp:TextBox ID="password_text" runat="server" TextMode="Password"></asp:TextBox>
                        </td>
                        <td class="auto-style4">
                            <asp:RequiredFieldValidator ID="password_validator" runat="server" ControlToValidate="password_text" ErrorMessage="Please enter Password" ForeColor="Red"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style7"></td>
                        <td class="auto-style8">
                            <asp:Button ID="login_button" runat="server" OnClick="login_button_Click1" Text="Login" Width="58px" />
&nbsp;&nbsp;
                            <asp:Button ID="signup_button" runat="server" Text="New User" Width="76px" OnClick="signup_button_Click" />
                        </td>
                        <td class="auto-style9"></td>
                    </tr>
                    <tr>
                        <td class="auto-style2">&nbsp;</td>
                        <td class="auto-style6">&nbsp;</td>
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
            width: 119px;
        }
        .auto-style3 {
            width: 119px;
            height: 40px;
        }
        .auto-style4 {
            height: 40px;
            text-align: left;
        }
        .auto-style5 {
            height: 40px;
            width: 168px;
        }
        .auto-style6 {
            width: 168px;
        }
        .auto-style7 {
            width: 119px;
            height: 31px;
        }
        .auto-style8 {
            width: 168px;
            height: 31px;
        }
        .auto-style9 {
            height: 31px;
        }
    </style>
</asp:Content>
