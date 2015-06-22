<%@ Page Title="SignUp" Language="C#" MasterPageFile="~/Site.MasterProject.master" AutoEventWireup="true" CodeBehind="SignUp.aspx.cs" Inherits="CMPE285HealthProject.SignUp" %>
<asp:Content runat="server" ID="FeaturedContent" ContentPlaceHolderID="ContentPlaceHolder1">
    <div class="top-nav">
						<div class="wrap">
							<ul>
                                <!-- to be added links-->
								<li class="active"><a href="Home.aspx">Home</a></li>
                                <li><a href="HealthTips.aspx">Hospital List</a></li>
								<li ><a href="Hospital.aspx">Hospital</a></li>
								<li><a href="Physician.aspx">Physician</a></li>
								<li><a href="New_Appointment.aspx">Appointment</a></li>
								<li><a href="Helpline.aspx">Helpline</a></li>
								<li><a href="Ambulance.aspx">Ambulance</a></li>
								
								<li><a href="Parking.aspx">Parking</a></li>
								
							</ul>
                            <div class="clear"> </div>
						</div>
					</div>
    <link href="css/style.css" rel="stylesheet" type="text/css"  media="all" />
    <div class="content">
        <div class="wrap">
            <div class="content-top-grid">
                <div class="content-top-grid-header">
                    <div class="content-top-grid-menu-title">
                        <h3>Sign Up</h3>
                    </div>
                </div>
            </div>
            <div class="content-menu-grid">
                <br />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="already_user_label" runat="server" Text="Please fill the required(*) details." ForeColor="Blue" Font-Size="Medium" Font-Bold="True"></asp:Label>
                <br />
                <br />
                <table class="auto-style1">
                    <tr>
                        <td class="auto-style6">First Name*</td>
                        <td class="auto-style13">
                            <asp:TextBox ID="first_name_text" runat="server"></asp:TextBox>
                        </td>
                        <td class="auto-style2">
                            <asp:RequiredFieldValidator ID="first_name_validator" runat="server" ControlToValidate="first_name_text" ErrorMessage="Please enter First Name" ForeColor="Red"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style7">Last Name*</td>
                        <td class="auto-style11">
                            <asp:TextBox ID="last_name_text" runat="server"></asp:TextBox>
                        </td>
                        <td class="auto-style4">
                            <asp:RequiredFieldValidator ID="last_name_validator" runat="server" ControlToValidate="last_name_text" ErrorMessage="Please enter Last Name" ForeColor="Red"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style17">E-mail*</td>
                        <td class="auto-style18">
                            <asp:TextBox ID="email_text" runat="server" TextMode="Email"></asp:TextBox>
                        </td>
                        <td class="auto-style19">
                            <asp:RequiredFieldValidator ID="email_validator" runat="server" ControlToValidate="email_text" ErrorMessage="Please enter E-mail Address" ForeColor="Red"></asp:RequiredFieldValidator>
                            <br />
                            <asp:RegularExpressionValidator ID="email_expression_validator" runat="server" ControlToValidate="email_text" ErrorMessage="Enter valid e-mail address" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                            <br />
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style7">Create Password*</td>
                        <td class="auto-style11">
                            <asp:TextBox ID="password_text" runat="server" TextMode="Password"></asp:TextBox>
                        </td>
                        <td class="auto-style4">
                            <asp:RequiredFieldValidator ID="password_validator" runat="server" ControlToValidate="password_text" ErrorMessage="Please enter Password" ForeColor="Red"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style7">Confirm Password</td>
                        <td class="auto-style11">
                            <asp:TextBox ID="confirm_password_text" runat="server" TextMode="Password"></asp:TextBox>
                        </td>
                        <td class="auto-style4">
                            <asp:RequiredFieldValidator ID="confirm_password_validator" runat="server" ControlToValidate="confirm_password_text" ErrorMessage="Please confirm password" ForeColor="Red"></asp:RequiredFieldValidator>
                            <br />
                            <asp:CompareValidator ID="password_compare_validator" runat="server" ControlToCompare="password_text" ControlToValidate="confirm_password_text" ErrorMessage="Both Passwords must be same" ForeColor="Red"></asp:CompareValidator>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style7">Address</td>
                        <td class="auto-style11">
                            <asp:TextBox ID="address_text" runat="server"></asp:TextBox>
                        </td>
                        <td class="auto-style4"></td>
                    </tr>
                    <tr>
                        <td class="auto-style7">City</td>
                        <td class="auto-style11">
                            <asp:TextBox ID="city_text" runat="server"></asp:TextBox>
                        </td>
                        <td class="auto-style4"></td>
                    </tr>
                    <tr>
                        <td class="auto-style8">State</td>
                        <td class="auto-style12">
                            <asp:TextBox ID="state_text" runat="server"></asp:TextBox>
                        </td>
                        <td class="auto-style5"></td>
                    </tr>
                    <tr>
                        <td class="auto-style7">Zip</td>
                        <td class="auto-style11">
                            <asp:TextBox ID="zip_text" runat="server"></asp:TextBox>
                        </td>
                        <td class="auto-style4"></td>
                    </tr>
                    <tr>
                        <td class="auto-style8">Mobile#*</td>
                        <td class="auto-style12">
                            <asp:TextBox ID="mobile_text" runat="server"></asp:TextBox>
                        </td>
                        <td class="auto-style5">
                            <asp:RequiredFieldValidator ID="mobile_validator" runat="server" ControlToValidate="mobile_text" ErrorMessage="Please enter Mobile#" ForeColor="Red"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style7">Home Phone#</td>
                        <td class="auto-style11">
                            <asp:TextBox ID="home_phone_text" runat="server"></asp:TextBox>
                        </td>
                        <td class="auto-style4">
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style14"></td>
                        <td class="auto-style15">
                            <asp:Button ID="submit_button" runat="server" Text="Submit" OnClick="submit_button_Click" style="height: 26px" />
&nbsp;&nbsp;&nbsp;
                            <asp:Button ID="reset_button" runat="server" Text="Reset" Height="25px" OnClick="reset_button_Click" style="margin-top: 3px" Width="59px" />
                        </td>
                        <td class="auto-style16"></td>
                    </tr>
                    <tr>
                        <td class="auto-style9">&nbsp;</td>
                        <td class="auto-style10">&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style9">&nbsp;</td>
                        <td class="auto-style10">&nbsp;</td>
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
            margin-left:400px;
        }
        .auto-style2 {
            height: 42px;
        }
        .auto-style4 {
            height: 40px;
        }
        .auto-style5 {
            height: 41px;
        }
        .auto-style6 {
            height: 42px;
            width: 145px;
            text-align: left;
        }
        .auto-style7 {
            height: 40px;
            width: 145px;
            text-align: left;
        }
        .auto-style8 {
            height: 41px;
            width: 145px;
            text-align: left;
        }
        .auto-style9 {
            width: 145px;
            text-align: left;
        }
        .auto-style10 {
            text-align: left;
            width: 167px;
        }
        .auto-style11 {
            height: 40px;
            text-align: left;
            width: 167px;
        }
        .auto-style12 {
            height: 41px;
            text-align: left;
            width: 167px;
        }
        .auto-style13 {
            height: 42px;
            text-align: left;
            width: 167px;
        }
        .auto-style14 {
            width: 145px;
            text-align: left;
            height: 36px;
        }
        .auto-style15 {
            text-align: left;
            width: 167px;
            height: 36px;
        }
        .auto-style16 {
            height: 36px;
        }
        .auto-style17 {
            height: 21px;
            width: 145px;
            text-align: left;
        }
        .auto-style18 {
            height: 21px;
            text-align: left;
            width: 167px;
        }
        .auto-style19 {
            height: 21px;
        }
    </style>
</asp:Content>


