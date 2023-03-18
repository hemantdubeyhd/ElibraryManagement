<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="homepage.aspx.cs" Inherits="ElibraryManagement.homepage" %>
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
                   <div class="row">
            <div class="col-12">
                <center>
                    <input id="dogButton" type="button" value="I'm a Dog person" onClick="ChangeImageDog()" />
                    <input id="catButton" type="button" value="I'm a Cat person" onClick="ChangeImageCat()" />
                   <h2>WHO WE ARE</h2>
                </center>
            </div>
        </div>
                    <div class="row">
                <div class="col-12">
                    <center>
                        <img id="image" width="200px" src="imgs/pg2Dog.jpg" />
                        
                    </center>
                </div>
            </div>

                </center>
            </div>
        </div>
        <br />
        <div class="row">
            <div class="col-12">
                <center>
                   <h2>WHO WE ARE</h2>
                </center>
            </div>
        </div>
        <br />

        <div class="row">
             <div class="col-12">
                <center>
                 
                    <p><b>The Friendly Vet Surgery opened in May 1989, with myself (Bruno) my wife Mars (as vet nurse and receptionist) AND our 3 month 
                        old daughter, Tebetha, in a bassinet behind the reception desk! It was certainly a family atmosphere as we also LIVED in the surgery,
                        with our bedroom coming off of the consult room, and no kitchen to speak of (just a microwave on top of the dog cages…oh, 
                        and a kettle!!!). A year later our son, Burkley, joined the team. 
                        Ten years later we moved to our current purpose-renovated building, previously a medical clinic. Being designed as a vet surgery 
                        has meant that it is highly functional and very pleasing and efficient to work in.
                        We rapidly grew and now have a dedicated group of full-time veterinarians and veterinary 
                        nurses to provide a vet service I am very proud of.
                    </b></p>
                    <p><b>At Friendly Vet Surgery, we offer a wide range of services for pet and livestock owners, 
                        from preventative health management through to diagnostics, surgical procedures, management of complex medical 
                        cases and farm consultancy services.
                        Our goal is to work together with you to achieve the best possible outcome, whether it’s at our two purpose 
                        built clinics or on your farm.  We are passionate about your animal’s welfare and are committed to building a strong,
                        trusting relationship with our clients.
                    </b></p>
                </center>
            </div>
            
        </div>
    </div>
    <script src="dogorcat.js" type="text/javascript"></script>
</asp:Content>
