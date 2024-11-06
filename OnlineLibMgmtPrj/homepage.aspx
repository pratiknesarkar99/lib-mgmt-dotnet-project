<%--Copyright 2024. Pratik Nesarkar--%>

<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="homepage.aspx.cs" Inherits="OnlineLibMgmtPrj.homepage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <section>
        <img src="imgs/home-bg.png" class="img-fluid" />
    </section>

    <section>
        <div class="container">
            <div class="row">
                <div class="col-12">
                    <center>
                        <h2>Our Features</h2>
                        <p>Our three primary features</p>
                    </center>
                </div>
            </div>

            <div class="row">
                <div class="col-md-4">
                    <center>
                        <img src="imgs/img1.png" width="150" height="90" />
                        <h4>Digital Book Inventory</h4>
                        <p class="text-justify">
                            We have a great collection of digital books that can be accessed via your student id. The content of these e-books is not downloadable.
                        </p>
                    </center>
                </div>

                <div class="col-md-4">
                    <center>
                        <img src="imgs/img2.png" width="150" height="82" />
                        <h4>Search Books</h4>
                        <p class="text-justify">
                            Students can search for books through out extensive database. One can find plethora of books from multiple sections and also locate physical books in multiple sections.
                        </p>
                    </center>
                </div>

                <div class="col-md-4">
                    <center>
                        <img src="imgs/img3.png" width="200" height="90" />
                        <h4>Defaulters List</h4>
                        <p class="text-justify">
                            Check the list of defaulters that have failed to return the items. This has certain penalties that will be applied to the students account annually.
                        </p>
                    </center>
                </div>

            </div>

        </div>
    </section>

    <section>
        <img src="imgs/home-bg-2.png" class="img-fluid" />
    </section>

    <section>
        <div class="container">
            <div class="row">
                <div class="col-12">
                    <center>
                        <h2>Our Process</h2>
                        <p>We have a very simple process</p>
                    </center>
                </div>
            </div>

            <div class="row">
                <div class="col-md-4">
                    <center>
                        <img src="imgs/signup.png" width="90" height="80" />
                        <h4>Sign Up</h4>
                        <p class="text-justify">
                            Sign up to our online newsletter and website to get registered and stay notified.
                        </p>
                    </center>
                </div>

                <div class="col-md-4">
                    <center>
                        <img src="imgs/img2.png" width="150" height="82" />
                        <h4>Search Books</h4>
                        <p class="text-justify">
                            Students can search for books through out extensive database. 
                        </p>
                    </center>
                </div>

                <div class="col-md-4">
                    <center>
                        <img src="imgs/instn.png" width="150" height="90" />
                        <h4>Visit Us</h4>
                        <p class="text-justify">
                            Visit us in person and grab the books that you need. We are available at the Evans Library located behind the Main building at Texas A&M
                        </p>
                    </center>
                </div>

            </div>

        </div>
    </section>

</asp:Content>
