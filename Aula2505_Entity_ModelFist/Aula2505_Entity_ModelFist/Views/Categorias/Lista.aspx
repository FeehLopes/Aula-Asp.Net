<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Lista.aspx.cs" Inherits="Aula2505_Entity_ModelFist.Views.Categorias.Lista" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <h1>Categorias</h1>
    <asp:GridView ID="gvCategorias" runat="server"></asp:GridView>
    <h1>Excluidas</h1>
    <asp:GridView ID="gvExcluir" runat="server"></asp:GridView>

</asp:Content>
