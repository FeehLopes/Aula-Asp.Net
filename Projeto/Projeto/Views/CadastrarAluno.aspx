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
    <asp:Label ID="lblIdade" runat="server" Text="Idade :" Font-Bold="True"></asp:Label>
    <asp:TextBox ID="txtIdade" runat="server" CssClass="form-control" Width="117px"></asp:TextBox>
    <br />
    <asp:Label ID="lblId" runat="server" Text="IdTurma :" Font-Bold="True"></asp:Label>
    <asp:TextBox ID="txtIdTurma" runat="server" CssClass="form-control" Width="117px"></asp:TextBox>
    <br />
    <br />
    <asp:Button ID="Btncadastrar" runat="server" Text="Cadastrar" OnClick="Btncadastrar_Click" CssClass="btn-default" />
    <asp:Button ID="Btncancelar" runat="server" Text="Limpar" OnClick="Btncancelar_Click" CssClass="btn-default" />
    <asp:Button ID="btnVoltar" runat="server" Text="Voltar" CssClass="btn-default" OnClick="btnVoltar_Click" Width="75px" />



</asp:Content>
