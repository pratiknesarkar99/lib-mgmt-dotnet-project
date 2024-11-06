<%--Copyright 2024. Pratik Nesarkar--%>

<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="userlogin.aspx.cs" Inherits="OnlineLibMgmtPrj.userlogin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <div class="col-md-6  mx-auto">
            <div class="card">
                <div class="card-body">
                    <div class="row">
                        <div class="col">
                            <center>
                                <img src="imgs/login.png" width="150" />
                            </center>
                        </div>
                    </div>
 
                   <div class="row">
                        <div class="col">
                            <center>
                                <h3>Member Login</h3>
                            </center>
                        </div>
                    </div>
 
                   <div class="row">
                        <div class="col">
                            <hr />
                        </div>
                    </div>
                     
                   <div class="row">
                        <div class="col">
                            <label>Member ID</label>
                            <div class="form-group">
                                <asp:TextBox CssClass="form-control" ID="TextBox1" runat="server" placeholder="Member ID" />
                            </div>
                        </div>
                    </div>

                   <div class="row">
                        <div class="col">
                            <label>Password</label>
                            <div class="form-group">
                                <asp:TextBox CssClass="form-control" ID="TextBox2" runat="server" placeholder="Password" TextMode="Password" />
                            </div>
                        </div>
                    </div>

                    <div class="form-group">
                        <asp:Button class="btn btn-success btn-block btn-lg" ID="Button1" runat="server" Text="Login" />
                    </div>
                    
                    <div class="form-group">
                        <a href="usersignup.aspx">
                           <input class="btn btn-info btn-block btn-lg" ID="Button2" runat="server" Text="Sign Up" />
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
