<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="location.aspx.cs" Inherits="ElibraryManagement.location" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script src="./dogorcat.js" type="text/javascript">
        
    </script>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">



    <section>      
        <img id="image" src="imgs/friendlyVet.jpg" class="img-fluid" />
     </section>
    
    <section>
      
<%-- 1st row, dog pic--%>
            <div class="row">
                <div class="col-12">
                    <center>
                        <img width="200px" src="imgs/pg2Dog.jpg" />
                        <h1>Location</h1>
                    </center>
                </div>
            </div>

        <div class="row">
                <div class="col-12">
                    <center>
                        <hr />
                        <hr />
                        <hr />
                    </center>
                </div>
            </div>
               <div class="row">
                <div class="col-12">
                    <center>
                        <h2>Lvl 4/45 Grenfell St</h2>
                        <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3271.281617632619!2d138.59928251499613!3d-34.92447348037775!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x6ab0ced6f9cb6209%3A0x3388668bf7819d29!2sLvl%204%2F45%20Grenfell%20St%2C%20Adelaide%20SA%205000!5e0!3m2!1sen!2sau!4v1676618326963!5m2!1sen!2sau" width="600" height="450" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>

                        <hr />
                        <hr />
                        <hr />
                    </center>
                </div>
            </div>
</asp:Content>
