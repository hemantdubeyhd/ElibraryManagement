<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="puppyPlayDate.aspx.cs" Inherits="ElibraryManagement.puppyplay" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script type="text/javascript">
        /*$(document).ready(function () {
            $(".table").prepend($("<thead></thead>").append($(this).find("tr:first"))).datatable();
    });*/
        $(document).ready(function () {
            $(".table").prepend($("<thead></thead>").append($(this).find("tr:first"))).DataTable();
        });
    </script>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
    <div class="container">
        <div class="row">
            <div class="col mx-auto">

                <div class="card">
                    <div class="card-body">
                        <div class="row">
                            <div class="col">
                                <center>
                                    <img width="150px" src="imgs/vet.jpg" />
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

                        <div class="row">
                            <div class="col">
                                <center>
                                    <h3> Search and Invite</h3>
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

                        <div class="row">
                            <div class="col">
                                <center>
                                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:customerManagementConnectionString %>" ProviderName="<%$ ConnectionStrings:customerManagementConnectionString.ProviderName %>" SelectCommand="SELECT [postcode], [petname], [petbreed], [petage], [petgender] FROM [detailsMaster]"></asp:SqlDataSource>
                                    <asp:GridView ID="GridView1" class="table table-striped table-bordered" runat="server" DataSourceID="SqlDataSource1"></asp:GridView>

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
              
                    </div>

<%-----------------------------------------------------------------------------------------%>
<%-----------------------------------------------------------------------------------------%>
<%-----------------------------------------------------------------------------------------%>
<%-----------------------------------------------------------------------------------------%>
<%-----------------------------------------------------------------------------------------%>
<%-----------------------------------------------------------------------------------------%>

<div class="container">
     <div>
            <label for="eventName">Event Name:</label>
            <asp:TextBox ID="eventName" runat="server"></asp:TextBox>
        </div>
        <div>
            <label for="eventDate">Event Date:</label>
            <asp:TextBox ID="eventDate" runat="server"></asp:TextBox>
        </div>
        <div>
            <label for="eventTime">Event Time:</label>
            <asp:TextBox ID="eventTime" runat="server"></asp:TextBox>
        </div>
        <div>
            <label for="eventLocation">Event Location:</label>
            <asp:TextBox ID="eventLocation" runat="server"></asp:TextBox>
        </div>
        <div>
            <label for="attendees">Attendees:</label>
            <asp:TextBox ID="attendees" runat="server"></asp:TextBox>
        </div>
        <div>
             <asp:Button ID="sendInvitationButton" runat="server" Text="Send Invitation" OnClick="sendInvitationButton_Click" />
        </div>
                </div>
                <a href="homepage.aspx"><< Back to Home</a>
                <br />
                <br />

            </div>

        </div>

    </div>
                   





<%-----------------------------------------------------------------------------------------%>
<%-----------------------------------------------------------------------------------------%>
<%-----------------------------------------------------------------------------------------%>
<%-----------------------------------------------------------------------------------------%>
<%-----------------------------------------------------------------------------------------%>
<%-----------------------------------------------------------------------------------------%>
<%-----------------------------------------------------------------------------------------%>
                </div><%--  CARD---------------------------------------------------------------------------------------%>
                <a href="homepage.aspx"><< Back to Home</a>
                <br />
                <br />

            </div>

        </div>
         <div class="row">
                            <div class="col">
                                <center>
                                    <hr />
                                </center>

                            </div>
                        </div>


    </div>
</asp:Content>
