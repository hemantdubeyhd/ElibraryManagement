<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="services.aspx.cs" Inherits="ElibraryManagement.services" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script src="./dogorcat.js" type="text/javascript"></script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">



    <section>      
        <img src="imgs/friendlyVet.jpg" class="img-fluid" />
     </section>
    
    <section>
      
<%-- 1st row, dog pic--%>
            <div class="row">
                <div class="col-12">
                    <center>
                        <img id="image" width="200px" src="imgs/pg2Dog.jpg" />
                        <h1>SERVICES</h1>
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



        <%-- 2nd row, 1st bio--%>
            <div class="row">
                <div class="col-12">
                    <center>
                        <img width="200px" src="imgs/Dental450x250.jpg" />
                        <%--<img width="200px" src="imgs/vet1.jpg" />--%>
                        <h3>Dental Care</h3>
                        <p> Can you imagine how your teeth would look and feel if you didn’t brush regularly, or at all? Tartar would build up on the visible surfaces of your teeth and potentially extend below the gum line causing gum infection or gingivitis. The infection could grow to affect the root and bony socket, causing periodontal disease.

The same process can affect cats and dogs. In fact, it is estimated that 85% of all dogs and 70% of all cats over 3 years old have some degree of periodontal disease.

In the early stage of the disease, many pets may show no symptoms, but as the disease progresses, animals may develop bad breath, bleeding gums, poor appetite, and signs of pain.

Eventually bacteria in the mouth can spread through the bloodstream to the rest of the body.

                        </p>
                    </center>
                </div>
            </div>

        <div class="row">
                <div class="col-12">
                    <center>
                        <hr />
                    </center>
                </div>
            </div>

        <%-- 3rd row, 2nd bio--%>
            <div class="row">
                <div class="col-12">
                    <center>
                        <img width="200px" src="imgs/kitten-play450x250.jpg" />
                        <h3>Emergency Care</h3>
                        <p> Our clinic is a primary care provider. During regular hours, we provide emergency vet care.
                            We will partner with you to determine whether referral to a specialty or emergency hospital is in 
                            your pet’s best interest, especially if your pet requires after hours emergency services.
                        </p>
                    </center>
                </div>
            </div>

        <div class="row">
                <div class="col-12">
                    <center>
                        <hr />
                    </center>
                </div>
            </div>

        <%-- 4th row, 3st bio--%>
            <div class="row">
                <div class="col-12">
                    <center>
                        <img width="200px" src="imgs/dogandvet450x250.jpg" />
                        <h3>General Surgery</h3>
                        <p> 
                          From spay and castration surgery to more complex veterinary surgical procedures, we always operate with safety in mind.
                            In fact, we use many of the same safety measures as human hospitals. Performing most of the pre-surgery blood work at our 
                            in-house lab, we are able to make sure your pet is healthy enough for the procedure.
                            Depending on the urgent nature of the surgery, pre-surgical abnormalities will be addressed, 
                            drug selections may be modified and sometimes surgeries are postponed or even cancelled until the surgery is safe to perform.
                            Once anaesthesia is deemed safe for the patient, we use specialised monitoring equipment to track vital 
                            signs and our dedicated Adelaide vet surgery nurse pays close attention throughout the anaesthetic to ensure the best 
                            possible outcome for your pet.

                        </p>
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
       
    </section>



</asp:Content>
