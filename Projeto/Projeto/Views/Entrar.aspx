<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Entrar.aspx.cs" Inherits="Projeto.Views.Entrar" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
      <h1>Cadastrar Turma</h1>
    <asp:Button ID="btnEntrarTurma" runat="server" Text="Turma" OnClick="btnEntrarTurma_Click" CssClass="btn-default" />
    <br />
    <h1>Cadastrar Aluno</h1>
    <asp:Button ID="btnEntrarAluno" runat="server" Text="Aluno" OnClick="btnEntrarAluno_Click" CssClass="btn-default" />

</asp:Content>
