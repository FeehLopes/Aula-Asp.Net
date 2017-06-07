<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="CadastrarTurma.aspx.cs" Inherits="Projeto.Views.CadastrarTurma" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <h1>Cadastrar Turma</h1>

    <asp:Label ID="lblTurno" runat="server" Text="Turno :"></asp:Label>
    <asp:TextBox ID="txtTurno" runat="server" CssClass="form-control"></asp:TextBox>
    <br />

    <asp:Label ID="lblQuantAlunos" runat="server" Text="Quantidade de Alunos :"></asp:Label>
    <asp:TextBox ID="txtQuantAlunos" runat="server" CssClass="form-control"></asp:TextBox>
    <br />

    <asp:Label ID="lblSala" runat="server" Text="Sala :"></asp:Label>
    <asp:TextBox ID="txtSala" runat="server" CssClass="form-control"></asp:TextBox>
    <br />
    <br />
    <asp:Button ID="Btncadastrar" runat="server" Text="Cadastrar" OnClick="Btncadastrar_Click" CssClass="btn-default" />
    <asp:Button ID="Btncancelar" runat="server" Text="Limpar" OnClick="Btncancelar_Click" CssClass="btn-default" Width="75px" />
    <asp:Button ID="btnVoltar" runat="server" Text="Voltar" CssClass="btn-default" OnClick="btnVoltar_Click" Width="74px" />


</asp:Content>
