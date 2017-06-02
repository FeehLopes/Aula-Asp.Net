<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Curso.aspx.cs" Inherits="ProjetoTurma.Views.Curso" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <h1>Cadastrar Curso</h1>

    <asp:UpdatePanel ID="UpdatePanel1" runat="server"> 

         <ContentTemplate>
             <div class ="row">
    <asp:Label ID="lblInstituicao" runat="server" Text="Instituição de Ensino: "></asp:Label>
    <asp:TextBox ID="txtInstituicao" runat="server"></asp:TextBox>
             </div>

             <div class ="row">

    <asp:Label ID="lblCurso" runat="server" Text="Curso: "></asp:Label>
    <asp:TextBox ID="txtCurso" runat="server"></asp:TextBox>
             </div>

              

        <asp:Button ID="btnCadastrar" runat="server" Text="Button" />
             <br />
    <asp:Button ID="btnExcluir" runat="server" Text="Button" />
             <br />
    <asp:Button ID="btnAterar" runat="server" Text="Button" />
             <br />


        </ContentTemplate>

        </asp:UpdatePanel>
</asp:Content>
