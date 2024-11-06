﻿<%--Copyright 2024. Pratik Nesarkar--%>

<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="usersignup.aspx.cs" Inherits="OnlineLibMgmtPrj.usersignup" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
        <div class="container">
        <div class="col-md-8 mx-auto">
            <div class="card">
                <div class="card-body">
                    <div class="row">
                        <div class="col">
                            <center>
                                <img src="imgs/signup.png" width="150" />
                            </center>
                        </div>
                    </div>
 
                   <div class="row">
                        <div class="col">
                            <center>
                                <h4>Member Registration</h4>
                            </center>
                        </div>
                    </div>
 
                   <div class="row">
                        <div class="col">
                            <hr />
                        </div>
                    </div>
                     
                   <div class="row">
                        <div class="col-md-6">
                            <label>Full Name</label>
                            <div class="form-group">
                                <asp:TextBox CssClass="form-control" ID="TextBox1" runat="server" placeholder="Ful Name" />
                            </div>
                        </div>

                        <div class="col-md-6">
                            <label>Date of birth</label>
                            <div class="form-group">
                                <asp:TextBox CssClass="form-control" ID="TextBox2" runat="server" placeholder="Date of birth" TextMode="Date" />
                            </div>
                        </div>
                    </div>

                   <div class="row">
                        <div class="col-md-6">
                            <label>Contact</label>
                            <div class="form-group">
                                <asp:TextBox CssClass="form-control" ID="TextBox3" runat="server" placeholder="Contact" TextMode="Phone"/>
                            </div>
                        </div>

                        <div class="col-md-6">
                            <label>Email</label>
                            <div class="form-group">
                                <asp:TextBox CssClass="form-control" ID="TextBox4" runat="server" placeholder="Email" TextMode="Email" />
                            </div>
                        </div>
                    </div>


                    <div class="row">
                        <div class="col-md-4">
                            <label>State</label>
                            <div class="form-group">
                                <asp:DropDownList CssClass="form-control" ID="DropDownList1" runat="server"> 
                                    <asp:ListItem Text="Select" Value="Select"></asp:ListItem>
                                    <asp:ListItem Text="AL" Value="AL"></asp:ListItem>
                                    <asp:ListItem Text="AK" Value="AK"></asp:ListItem>
                                    <asp:ListItem Text="AZ" Value="AZ"></asp:ListItem>
                                    <asp:ListItem Text="AR" Value="AR"></asp:ListItem>
                                    <asp:ListItem Text="CA" Value="CA"></asp:ListItem>
                                    <asp:ListItem Text="CO" Value="CO"></asp:ListItem>
                                    <asp:ListItem Text="CT" Value="CT"></asp:ListItem>
                                    <asp:ListItem Text="DE" Value="DE"></asp:ListItem>
                                    <asp:ListItem Text="DC" Value="DC"></asp:ListItem>
                                    <asp:ListItem Text="FL" Value="FL"></asp:ListItem>
                                    <asp:ListItem Text="GA" Value="GA"></asp:ListItem>
                                    <asp:ListItem Text="HI" Value="HI"></asp:ListItem>
                                    <asp:ListItem Text="ID" Value="ID"></asp:ListItem>
                                    <asp:ListItem Text="IL" Value="IL"></asp:ListItem>
                                    <asp:ListItem Text="IN" Value="IN"></asp:ListItem>
                                    <asp:ListItem Text="IA" Value="IA"></asp:ListItem>
                                    <asp:ListItem Text="KS" Value="KS"></asp:ListItem>
                                    <asp:ListItem Text="KY" Value="KY"></asp:ListItem>
                                    <asp:ListItem Text="LA" Value="LA"></asp:ListItem>
                                    <asp:ListItem Text="ME" Value="ME"></asp:ListItem>
                                    <asp:ListItem Text="MD" Value="MD"></asp:ListItem>
                                    <asp:ListItem Text="MA" Value="MA"></asp:ListItem>
                                    <asp:ListItem Text="MI" Value="MI"></asp:ListItem>
                                    <asp:ListItem Text="MN" Value="MN"></asp:ListItem>
                                    <asp:ListItem Text="MS" Value="MS"></asp:ListItem>
                                    <asp:ListItem Text="MO" Value="MO"></asp:ListItem>
                                    <asp:ListItem Text="MT" Value="MT"></asp:ListItem>
                                    <asp:ListItem Text="NE" Value="NE"></asp:ListItem>
                                    <asp:ListItem Text="NV" Value="NV"></asp:ListItem>
                                    <asp:ListItem Text="NH" Value="NH"></asp:ListItem>
                                    <asp:ListItem Text="NJ" Value="NJ"></asp:ListItem>
                                    <asp:ListItem Text="NM" Value="NM"></asp:ListItem>
                                    <asp:ListItem Text="NY" Value="NY"></asp:ListItem>
                                    <asp:ListItem Text="NC" Value="NC"></asp:ListItem>
                                    <asp:ListItem Text="ND" Value="ND"></asp:ListItem>
                                    <asp:ListItem Text="OH" Value="OH"></asp:ListItem>
                                    <asp:ListItem Text="OK" Value="OK"></asp:ListItem>
                                    <asp:ListItem Text="OR" Value="OR"></asp:ListItem>
                                    <asp:ListItem Text="PA" Value="PA"></asp:ListItem>
                                    <asp:ListItem Text="RI" Value="RI"></asp:ListItem>
                                    <asp:ListItem Text="SC" Value="SC"></asp:ListItem>
                                    <asp:ListItem Text="SD" Value="SD"></asp:ListItem>
                                    <asp:ListItem Text="TN" Value="TN"></asp:ListItem>
                                    <asp:ListItem Text="TX" Value="TX"></asp:ListItem>
                                    <asp:ListItem Text="UT" Value="UT"></asp:ListItem>
                                    <asp:ListItem Text="VT" Value="VT"></asp:ListItem>
                                    <asp:ListItem Text="VA" Value="VA"></asp:ListItem>
                                    <asp:ListItem Text="WA" Value="WA"></asp:ListItem>
                                    <asp:ListItem Text="WV" Value="WV"></asp:ListItem>
                                    <asp:ListItem Text="WI" Value="WI"></asp:ListItem>
                                    <asp:ListItem Text="WY" Value="WY"></asp:ListItem>
                                </asp:DropDownList>
                            </div>
                        </div>

                        <div class="col-md-4">
                            <label>City</label>
                            <div class="form-group">
                                <asp:TextBox CssClass="form-control" ID="TextBox7" runat="server" placeholder="City"/>
                            </div>
                        </div>

                        <div class="col-md-4">
                            <label>Pincode</label>
                            <div class="form-group">
                                <asp:TextBox CssClass="form-control" ID="TextBox6" runat="server" placeholder="Pincode" TextMode="Number" />
                            </div>
                        </div>
                    </div>

                   <div class="row">
                        <div class="col">
                            <label>Full Address</label>
                            <asp:TextBox CssClass="form-control" ID="TextBox8" runat="server" placeholder="Full Address" TextMode="MultiLine" />
                        </div>
                    </div>

                   <div class="row">
                        <div class="col" style="padding: 12px">
                            <center>
                                <span class="badge badge-pill badge-info">Login Credentials</span>
                            </center>
                         </div>
                    </div>


                    <div class="row">
                        <div class="col-md-6">
                            <label>User ID</label>
                            <div class="form-group">
                                <asp:TextBox CssClass="form-control" ID="TextBox5" runat="server" placeholder="User ID"/>
                            </div>
                        </div>

                        <div class="col-md-6">
                            <label>Password</label>
                            <div class="form-group">
                                <asp:TextBox CssClass="form-control" ID="TextBox9" runat="server" placeholder="Password" TextMode="Password" />
                            </div>
                        </div>
                    </div>
                    
                    <div class="form-group">
                        <a href="usersignup.aspx">
                           <asp:Button class="btn btn-success btn-block btn-lg" ID="Button3" runat="server" Text="Sign Up" />
                        </a>
                    </div>
    
                </div>
            </div>

            <br />
            <a href="homepage.aspx"><< Return to Home page</a>
            <br /> <br />
        </div>
    </div>
</asp:Content>
