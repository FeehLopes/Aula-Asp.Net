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

    <asp:Label ID="Curso" runat="server" Text="Curso"></asp:Label>
    <asp:TextBox ID="txtCurso" runat="server"  CssClass="form-control"></asp:TextBox>


    <br />
    <asp:Button ID="btnCadastrar" runat="server" Text="Cadastrar" OnClick="BtnCadastrar_Click" CssClass="btn btn-info" />
    <asp:Button ID="btnLimpar" runat="server" Text="Limpar" OnClick="BtnLimpar_Click"   Cssclass="btn btn-success" Width="89px" />
    <asp:Button ID="btnListar" runat="server" Text="Listar" Cssclass="btn btn-primary" OnClick="btnListar_Click"/>
    <asp:Button ID="btnVoltar" runat="server" Text="Voltar"  OnClick="btnVoltar_Click" Width="74px"  Cssclass="btn btn-warning" />


</asp:Content>
