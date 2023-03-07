<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="catordog.aspx.cs" Inherits="ElibraryManagement.catordog" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <section>
      
        <img src="imgs/friendlyVet.jpg" class="img-fluid" />
    </section>

    <br />

    <div class="container">
         <div class="row">
            <div class="col-12">
                <center>
                   <h2><%--DOG or CAT --%></h2>

                </center>
            </div>
        </div>
        <br />
        <div class="row">
            <div class="col-12">
                <center>
                    <asp:Button ID="dogButton" runat="server" Text="I'm a Dog Person" />
                    <asp:Button ID="catButton" runat="server" Text="I'm a cat " />
                   <h2>WHO WE ARE</h2>
                </center>
            </div>
        </div>
        <br />

        <div class="row">
             <div class="col-12">
                <center>
                 
                </center>
            </div>
            
        </div>
    </div>
</asp:Content>
