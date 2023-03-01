<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="demo.aspx.cs" Inherits="ElibraryManagement.demo" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script type="text/javascript">
        function showValue() {
            alert(document.getElementById("txtName").value);
        }
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1>Trying javascript with AspTextBox</h1>
    <asp:TextBox ID="txtName" runat="server" ClientIDMode="Static"></asp:TextBox>
    <asp:Button ID="btnShowValue" text="show value" onClientClick="showValue()" runat="server" />
</asp:Content>
