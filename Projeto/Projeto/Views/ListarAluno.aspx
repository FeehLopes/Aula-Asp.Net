<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ListarAluno.aspx.cs" Inherits="Projeto.Views.ListarAluno" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

     <h1>Alunos</h1>
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
   
    <br />
    <br />
    <br />

    <asp:Button ID="btnExcluir" runat="server" Text="Exluir" OnClick="btnExcluir_Click" Width="85px"  Cssclass="btn btn-danger" />
    <asp:Button ID="btnEditar" runat="server" Text="Editar" OnClick="btnEditar_Click" Width="85px" Cssclass="btn btn-info" />
    <asp:Button ID="btnVoltar" runat="server" Text="Voltar" OnClick="btnVoltar_Click"   Width="85px" Cssclass="btn btn-primary"/>


    <br />
    
    <br />
    

</asp:Content>
