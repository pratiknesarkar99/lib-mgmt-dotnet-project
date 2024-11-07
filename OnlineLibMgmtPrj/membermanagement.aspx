<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="membermanagement.aspx.cs" Inherits="OnlineLibMgmtPrj.membermanagement" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
        <script type="text/javascript">
        $(document).ready( function () {
            $(".table").prepend($("<thead></thead>").append($(this).find("tr:first"))).dataTable();
        } );
        </script>
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
                                <h4>Member Details</h4>
                            </center>
                        </div>
                    </div>

                    <div class="row">
                        <div class="col">
                            <center>
                                <img src="imgs/user.png" width="100"/>
                            </center>
                        </div>
                    </div>
 
                   <div class="row">
                        <div class="col">
                            <hr />
                        </div>
                    </div>
                     
                   <div class="row">
                       <div class="col-md-2">
                            <label>Member ID</label>
                            <div class="form-group">
                                <div class="input-group">
                                    <asp:TextBox CssClass="form-control mr-1" ID="TextBox1" runat="server" placeholder="ID" />
                                    <asp:Button class="btn btn-info" ID="Button1" runat="server" Text="Go" OnClick="Button1_Click" />
                                </div>
                            </div>
                        </div>

                        <div class="col-md-4">
                            <label>Full name</label>
                            <div class="form-group">
                                <asp:TextBox CssClass="form-control" ID="TextBox2" runat="server" placeholder="Full name" ReadOnly="true" />
                            </div>
                        </div>

                             <div class="col-md-6">
                        <label>Account Status</label>
                        <div class="form-group">
                            <div class="input-group">
                                <asp:TextBox CssClass="form-control mr-1" ID="TextBox7" runat="server" placeholder="Account Status"  />
                                <asp:LinkButton class="btn btn-success mr-1" ID="Button5" runat="server" Text="S">
                                    <i class="fas fa-check-circle"></i>
                                </asp:LinkButton>
                                <asp:LinkButton class="btn btn-warning mr-1" ID="Button6" runat="server" Text="P">
                                    <i class="fas fa-pause-circle"></i>
                                </asp:LinkButton>
                                <asp:LinkButton class="btn btn-danger mr-1" ID="Button4" runat="server" Text="D">
                                    <i class="fas fa-times-circle"></i>
                                </asp:LinkButton>
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
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:eLibrarydbConnectionString %>" SelectCommand="SELECT [full_name], [dob], [contact_no], [email], [state], [city], [pincode], [full_address], [account_status] FROM [member_master_tbl]"></asp:SqlDataSource>
                        <asp:GridView class="table table-striped table-bordered" ID="GridView1" runat="server" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" AutoGenerateColumns="False" DataSourceID="SqlDataSource1">
                            <Columns>
                                <asp:BoundField DataField="full_name" HeaderText="full_name" SortExpression="full_name" />
                                <asp:BoundField DataField="dob" HeaderText="dob" SortExpression="dob" />
                                <asp:BoundField DataField="contact_no" HeaderText="contact_no" SortExpression="contact_no" />
                                <asp:BoundField DataField="email" HeaderText="email" SortExpression="email" />
                                <asp:BoundField DataField="state" HeaderText="state" SortExpression="state" />
                                <asp:BoundField DataField="city" HeaderText="city" SortExpression="city" />
                                <asp:BoundField DataField="pincode" HeaderText="pincode" SortExpression="pincode" />
                                <asp:BoundField DataField="full_address" HeaderText="full_address" SortExpression="full_address" />
                                <asp:BoundField DataField="account_status" HeaderText="account_status" SortExpression="account_status" />
                            </Columns>
                        </asp:GridView>
                      </div>
                  </div>
 
                </div>
              </div>
            </div>

        </div>
    </div>

</asp:Content>
