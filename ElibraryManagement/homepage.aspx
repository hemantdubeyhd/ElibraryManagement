<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="homepage.aspx.cs" Inherits="ElibraryManagement.homepage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
    
    <section>
      
        <img src="imgs/friendlyVet.jpg" class="img-fluid" />
    </section>


    <div class="container">
        <div class="row">
            <div class="col-12">
                <center>
                   <h2>WELOCME</h2>
                    <p><b>All fur-Babies are welcome</b></p>
                </center>
            </div>
        </div>


        <div class="row">
            <div class="col-md-4">
                <center>
                    <img width="150px" src="imgs/digital-inventory.png" />
                    <h4> Our People</h4>
                    <p class="text-justify"> All furr babies are welcome </p>
                </center>
            </div>
            
            
            <div class="col-md-4">
                <center>
                    <img  width="150px" src="imgs/search-online.png" />
                  
                   
                    <h4> Services</h4>
                    <p class="text-justify"> All furr babies are welcome </p>
                </center>
            </div>
            
            
            <div class="col-md-4">
                <center>
                    <img width="150px" src="imgs/defaulters-list.png" />
                    <h4> Location</h4>
                    <p class="text-justify"> All furr babies are welcome </p>
                </center>
            </div>
        </div>
    </div>
</asp:Content>
