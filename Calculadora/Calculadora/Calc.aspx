<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Calc.aspx.cs" Inherits="Calculadora.Calc" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">


    <div class ="row"> 
    <asp:Label ID="lblValo1" runat="server" Text="Valor1: "></asp:Label>
        <asp:TextBox ID="txtValor1" runat="server" ></asp:TextBox>
        <asp:Button ID="btnSoma" runat="server" Text="+" OnClick="btnSoma_Click" />
       

         </div>
    <div class ="row">
    <asp:Label ID="lblValor2" runat="server" Text="Valor2: "></asp:Label>
        <asp:TextBox ID="txtValor2" runat="server"></asp:TextBox>
       <asp:Button ID="btnIgual" runat="server" Text="=" OnClick="btnIgual_Click" />
            </div>
    <div class ="row">
       

                <asp:Label ID="lblResultado" runat="server" Text="Resultado: "></asp:Label>
         <asp:TextBox ID="txtResultado" runat="server" ></asp:TextBox>
    </div>
</asp:Content>
