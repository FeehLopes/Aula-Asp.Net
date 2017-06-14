<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="CadastrarAluno.aspx.cs" Inherits="Projeto.Views.CadastrarAluno" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">


    <h1>Cadastro Aluno</h1>

    <asp:Label ID="lblNome" runat="server" Text="Nome :" Font-Bold="True"></asp:Label>
    <asp:TextBox ID="txtNome" runat="server" CssClass="form-control"></asp:TextBox>
    <br />

    <asp:Label ID="lblCPF" runat="server" Text="CPF :" Font-Bold="True"></asp:Label>
    <asp:TextBox ID="txtCPF" runat="server" CssClass="form-control"></asp:TextBox>
    <br />

    <asp:Label ID="lblRG" runat="server" Text="RG :" Font-Bold="True"></asp:Label>
    <asp:TextBox ID="txtRG" runat="server" CssClass="form-control"></asp:TextBox>
    <br />
    
    

    <br />
    <asp:Button ID="BtnCadastrar" runat="server" Text="Cadastrar" OnClick="BtnCadastrar_Click"  CssClass="btn btn-info" />
    <asp:Button ID="BtnLimpar" runat="server" Text="Limpar" OnClick="BtnLimpar_Click"  Cssclass="btn btn-success"/>
    <asp:Button ID="btnListar" runat="server" Text="Listar" Cssclass="btn btn-primary" OnClick="btnListar_Click"/>
    <asp:Button ID="btnVoltar" runat="server" Text="Volta" OnClick="btnVoltar_Click" Width="75px"  Cssclass="btn btn-warning" />



</asp:Content>
