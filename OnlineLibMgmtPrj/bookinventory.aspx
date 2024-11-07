﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="bookinventory.aspx.cs" Inherits="OnlineLibMgmtPrj.bookinventory" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container-fluid">
        <div class="row">
            <div class="col-md-5">
            <div class="card">
                <div class="card-body">
                   <div class="row">
                        <div class="col">
                            <center>
                                <h4>Book Details</h4>
                            </center>
                        </div>
                    </div>

                    <div class="row">
                        <div class="col">
                            <center>
                                <img src="imgs/literature.png" width="100"/>
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
                            <asp:FileUpload CssClass="form-control" ID="FileUpload1" runat="server" />
                        </div>
                    </div>
  
                   <div class="row">
                       <div class="col-md-9">
                            <label>Book ID</label>
                            <div class="form-group">
                                <div class="input-group">
                                    <asp:TextBox CssClass="form-control mr-1" ID="TextBox1" runat="server" placeholder="ID" />
                                    <asp:Button class="btn btn-info" ID="Button1" runat="server" Text="Go" />
                                </div>
                            </div>
                        </div>

                        <div class="col-md-3">
                            <label>Book name</label>
                            <div class="form-group">
                                <asp:TextBox CssClass="form-control" ID="TextBox2" runat="server" placeholder="Book name" ReadOnly="true" />
                            </div>
                        </div>
                    
                    </div>
                   </div>

                   <div class="row">
                        <div class="col-md-4">
                            <label>DOB</label>
                            <div class="form-group">
                                <asp:TextBox CssClass="form-control" ID="TextBox8" runat="server" placeholder="DOB" ReadOnly="true" />
                            </div>
                        </div>
                        <div class="col-md-4">
                            <label>Contact No</label>
                            <div class="form-group">
                                <asp:TextBox CssClass="form-control" ID="TextBox3" runat="server" placeholder="Contact No" ReadOnly="true" />
                            </div>
                        </div>

                        <div class="col-md-4">
                            <label>Email</label>
                            <div class="form-group">
                                <asp:TextBox CssClass="form-control" ID="TextBox4" runat="server" placeholder="Email" ReadOnly="true" />
                            </div>
                        </div>
                    </div>

                   <div class="row">
                        <div class="col-md-4">
                            <label>State</label>
                            <div class="form-group">
                                <asp:TextBox CssClass="form-control" ID="TextBox9" runat="server" placeholder="State" ReadOnly="true" />
                            </div>
                        </div>
                        <div class="col-md-4">
                            <label>City</label>
                            <div class="form-group">
                                <asp:TextBox CssClass="form-control" ID="TextBox10" runat="server" placeholder="City" ReadOnly="true" />
                            </div>
                        </div>

                        <div class="col-md-4">
                            <label>Pincode</label>
                            <div class="form-group">
                                <asp:TextBox CssClass="form-control" ID="TextBox11" runat="server" placeholder="Pincode" ReadOnly="true" />
                            </div>
                        </div>
                    </div>


                   <div class="row">
                        <div class="col-md-12">
                            <label>Full Address</label>
                            <div class="form-group">
                                <asp:TextBox CssClass="form-control" ID="TextBox5" runat="server" placeholder="Address" ReadOnly="true" TextMode="MultiLine" Rows="2"/>
                            </div>
                        </div>
                    </div>

                    <div class="row">
                        <div class="col-12 mx-auto">
                            <asp:Button class="btn btn-danger btn-lg btn-block" ID="Button2" runat="server" Text="Delete User Permanently" />
                        </div>
                    </div>
                </div>
            </div>

            <br />
            <a href="homepage.aspx"><< Return to Home page</a>
            <br /> <br />
        </div>

            <div class="col-md-7">
              <div class="card">
                <div class="card-body">
                  <div class="row">
                    <div class="col">   
                      <center>
                      <h4>Members List</h4>
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
                        <asp:GridView class="table table-striped table-bordered" ID="GridView1" runat="server"></asp:GridView>
                      </div>
                  </div>
 
                </div>
              </div>
            </div>

        </div>
    </div>
</asp:Content>
