<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="puppyPlayDate.aspx.cs" Inherits="ElibraryManagement.puppyplay" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script type="text/javascript">
        
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
            <label for="Email">Email(s):</label>
         
            <asp:TextBox ID="Email" runat="server" ClientIDMode="Static"></asp:TextBox>
        </div>
        
        
       
           <div>
            <label for="Suject">Suject:</label>
            <asp:TextBox ID="Subject" runat="server" TextMode="MultiLine" ClientIDMode="Static"></asp:TextBox>
        </div>
        <div>
           
    
            <asp:Button ID="Button1" runat="server" Text="Send Invitation" OnClick="Button1_Click" ClientIDMode="Static" />
            <br />
            <br />
             <asp:label ID="lblMsg" runat="server" Text=""></asp:label>
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
