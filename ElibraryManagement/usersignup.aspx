<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="usersignup.aspx.cs" Inherits="ElibraryManagement.usersignup" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
   
     <script src="JavaScript123.js" type="text/javascript"></script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
   
     <div class="container">
        <div class="row">
            <div class="col-md-8 mx-auto">

                <div class="card">
                    <div class="card-body">
                        <div class="row">
                            <div class="col">
                                <center>
                                    <img width="60px" src="imgs/generaluser.png" />
                                </center>

                            </div>
                        </div>
                        
                        <div class="row">
                            <div class="col">
                                <center>
                                    <h4> Member Sign Up</h4>
                                </center>

                            </div>
                        </div>

                        <div class="row">
                            <div class="col">
                                <center>
                                    <hr />
                                </center>

                            </div>

                        </div>

<%-- Designing SignUP form format----------------------------------------------------------------------------%>
                 <%--1st Row-------------------------------------------------------------------------%>

                        <div class="row">
                            <div class="col md-6">
                                <label>First Name</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox3" runat="server" placeholder="First Name"></asp:TextBox>
                                </div>
                            </div>


                            <div class="col md-6">
                                <label>Surname</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox4" runat="server" placeholder="Surname"></asp:TextBox>
                                </div>
                            </div>
                        </div>

                 <%--2nd Row-------------------------------------------------------------------------%>
                        <div class="row">
                            <div class="col md-6">
                                <label>Contact Ph No.</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox1" runat="server" placeholder="Conatct Ph No." TextMode="Phone"></asp:TextBox>
                                </div>
                            </div>


                            <div class="col md-6">
                                <label>Email Address</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox2" runat="server" placeholder="Email Address" TextMode="Email"></asp:TextBox>
                                </div>
                            </div>
                        </div>
                 <%--3rd Row-------------------------------------------------------------------------%>

         <%--                 
                              <div class="form-header">Suburb</div>
                                
                                    <asp:TextBox class="form-control" ID="suburb" runat="server" placeholder="Suburb"></asp:TextBox>
                               
                         

                         <div class="form-header">Postcode</div>
       
                        <asp:TextBox class="form-control" ID="postcode" runat="server" placeholder="Postcode"></asp:TextBox>
      --%>         

   
        
        <div class="form-header">Suburb</div>
        <input type="text" class="form-input" id="suburb" placeholder="Search Suburn/Postcade here..." />
        
        <div class="form-header">State</div>
        <input class="form-input" id="state" />
        
        <div class="form-header">Postcode</div>
        <input class="form-input" id="postcode" />
      
        
      
       
        

                        <div class="row">
                            <div class="col">
                                <center>
                                    <hr />
                                </center>
                            </div>
                        </div>

                 <%--4th Row-------------------------------------------------------------------------%>

                        <div class="row">
                            <div class="col md-6">
                                <label>Pet Name</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox7" runat="server" placeholder="Pet Name"></asp:TextBox>
                                </div>
                            </div>


                            <div class="col md-6">
                                <label>Pet Breed</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control"  runat="server" placeholder="Pet Breed" ></asp:TextBox>
                                </div>
                            </div>
                        </div>

                 <%--5th Row-------------------------------------------------------------------------%>

                        <div class="row">
                            <div class="col md-6">
                                <label>Pet Age</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox8" runat="server" placeholder="Pet age" ></asp:TextBox>
                                </div>
                            </div>


                            <div class="col md-6">
                                <label>Pet Gender</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control"  runat="server" placeholder="Pet Gender" ></asp:TextBox>
                                </div>
                            </div>
                        </div>
                 <%--6th Row-------------------------------------------------------------------------%>
                        <div class="row">
                            <div class="col">
                                <center>
                                    <hr />
                                </center>
                            </div>
                        </div>
                        
                        

 <%--7th Row-------------------------------------------------------------------------%>
                        <div class="row">
                            <div class="col">
                                <label>Photo/Image of Pet</label>
                                <div >
                                  <%--  <asp:FileUpload CssClass="form-control" ID="FileUpload1" runat="server" /> --%>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col">
                                <center>
                                    <hr />
                                   
                                </center>
                            </div>
                        </div>

 <%--8th Row-------------------------------------------------------------------------%>

                       

                        <div class="row">
                            <div class="col md-6">
                                <label>User Id</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox9" runat="server" placeholder="User Id" ></asp:TextBox>
                                </div>
                            </div>


                            <div class="col md-6">
                                <label>Password</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control"  runat="server" placeholder="Password" TextMode="Password"></asp:TextBox>
                                </div>
                            </div>
                        </div>


                         

<%--Sign Up botton---------------------------------------------------------------------------------------%>
                        <div class="row">
                            <div class="col">
                                
                                <div class="form-group">
                                    <asp:Button class="btn btn-success btn-block btn-lg" ID="Button1" runat="server" Text="Sign Up" OnClick="Button1_Click" />
                               </div>

                                

                            </div>
                        </div>



                    </div>

                </div>
                <a href="homepage.aspx"><< Back to Home</a>
                <br />
                <br />

            </div>

        </div>

    </div>

</asp:Content>
