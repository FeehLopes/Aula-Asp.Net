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
     <br />

    <asp:Button ID="BtnExcluir" runat="server" Text="Exluir" OnClick="BtnExcluir_Click" Width="85px"  class="btn btn-danger" />
    <asp:Button ID="BtnEditar" runat="server" Text="Editar" OnClick="BtnEditar_Click" Width="85px" class="btn btn-info" />
    <asp:Button ID="BtnVoltar" runat="server" Text="Voltar" OnClick="BtnVoltar_Click"   Width="85px" class="btn btn-primary" />
</asp:Content>
