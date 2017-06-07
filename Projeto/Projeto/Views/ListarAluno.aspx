<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ListarAluno.aspx.cs" Inherits="Projeto.Views.ListarAluno" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

     <h1>Alunos Ativos</h1>
    <asp:GridView ID="gvAlunos" runat="server"></asp:GridView>

    <br />
    <asp:Label ID="lblId" runat="server" Text="Id :" Font-Bold="True"></asp:Label>
    <asp:TextBox ID="txtIdTurma" runat="server" CssClass="form-control" Width="117px"></asp:TextBox>
    <br />

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
    <br />
    <br />

    <asp:Button ID="BtnExcluir" runat="server" Text="Exluir" OnClick="BtnExcluir_Click" Width="53px" />
    <asp:Button ID="BtnEditar" runat="server" Text="Editar" OnClick="BtnEditar_Click" Width="72px" />
    <br />
    <br />
    <br />
    <asp:Button ID="BtnVoltar" runat="server" Text="Voltar" OnClick="BtnVoltar_Click" />


</asp:Content>
