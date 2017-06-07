<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ListarTurma.aspx.cs" Inherits="Projeto.Views.ListarTurma" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <h1> Turmas </h1>
    <asp:GridView ID="gvTurmas" runat="server" Width="342px"></asp:GridView>
    <br />
    <asp:Label ID="lblId" runat="server" Text="Id:" Font-Bold="True"></asp:Label>
    <asp:TextBox ID="txtIdTurma" runat="server" CssClass="form-control" Width="117px"></asp:TextBox>
    <br />
    <asp:Label ID="lblTurno" runat="server" Text="Turno :" Font-Bold="True"></asp:Label>
    <asp:TextBox ID="txtTurno" runat="server" CssClass="form-control"></asp:TextBox>
    <br />

    <asp:Label ID="lblQuantAlunos" runat="server" Text="Quantidade de Alunos :" Font-Bold="True"></asp:Label>
    <asp:TextBox ID="txtQuantAlunos" runat="server" CssClass="form-control"></asp:TextBox>
    <br />

    <asp:Label ID="lblSala" runat="server" Text="Sala :" Font-Bold="True"></asp:Label>
    <asp:TextBox ID="txtSala" runat="server" CssClass="form-control"></asp:TextBox>
    <br />
    <br />
    <asp:Button ID="btnExcluir" runat="server" Text="Excluir" OnClick="btnExcluir_Click" CssClass="btn-default" />
    <asp:Button ID="btnEditar" runat="server" Text="Editar" OnClick="btnEditar_Click" style="margin-left: 20px" Width="63px" CssClass="btn-default" />
    <br />
    <br />
    <asp:Button ID="btnVoltar" runat="server" Text="Voltar" OnClick="btnVoltar_Click" CssClass="btn-default" />
</asp:Content>
