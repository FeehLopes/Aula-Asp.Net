<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="CadastroAluno.aspx.cs" Inherits="ProjetoTurma.Views.CadastroAluno" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <h1>Cadastrar Aluno</h1>

    <asp:UpdatePanel ID="UpdatePanel1" runat="server"> 

         <ContentTemplate>
             <div class="row">
    <asp:Label ID="lblNome" runat="server" Text="Nome: "></asp:Label>
    <asp:TextBox ID="txtNome" runat="server"></asp:TextBox>
             </div>

             <div class="row">
    <asp:Label ID="lblMatricula" runat="server" Text="Matricula: "></asp:Label>
    <asp:TextBox ID="txtMatricula" runat="server"></asp:TextBox>
             </div>

    <asp:Button ID="btnCadastrar" runat="server" Text="Cadastrar" OnClick="btnCadastrar_Click" />
             <br />
    <asp:Button ID="btnExcluir" runat="server" Text="Excluir" />
             <br />
    <asp:Button ID="btnAterar" runat="server" Text="Alterar" />
             <br />

             </ContentTemplate>






        </asp:UpdatePanel>

</asp:Content>

