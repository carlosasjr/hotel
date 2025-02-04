﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Content/Master/Principal.master" AutoEventWireup="true" CodeFile="listarCategoria.aspx.cs" Inherits="Paginas_Default3" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
  <!-- Se precisar, coloque os links para seus css aqui -->
  <!-- BootStrap já está na pagina master, então é só usar aqui... -->

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">

        <!-- Content Wrapper. Contains page content -->
    <div class="content-wrapper">
        <!-- Identificação da página, altere esses dados para a página correspondente. -->
        <section class="content-header">
            <h1>Categorias
            <small>Controle de Categorias</small>
            </h1>
            <ol class="breadcrumb">
                <li><a href="index.aspx"><i class="fa fa-dashboard"></i>Home</a></li>
                <li class="active">Categorias</li>
            </ol>
        </section>

        <section class="content">
           <!-- Seu conteúdo vai aqui -->
            <asp:LinkButton ID="lbCadastrar" runat="server" CssClass="btn btn-primary" OnClick="lbCadastrar_Click">Cadastrar</asp:LinkButton>
                <br />
                 <br />
                <asp:GridView ID="gdvCategoria" CssClass="table table-hover table-success tabela" runat="server" AutoGenerateColumns="false" OnRowCommand="gdvCategoria_RowCommand" >
                    <Columns>
                        <asp:BoundField HeaderText="ID" DataField="cat_id" />
                        <asp:BoundField HeaderText="Descrição" DataField="cat_descricao" />
                        <asp:BoundField HeaderText="Abreviacão" DataField="cat_abreviacao" />

                        <asp:TemplateField HeaderText="Ações">
                            <ItemTemplate>
                                <asp:LinkButton ID="lbAlterar" runat="server" CssClass="btn btn-primary" CommandName="Alterar" CommandArgument='<%# Bind("cat_id") %>'>Alterar</asp:LinkButton>
                                <asp:LinkButton ID="lbDeletar" runat="server" CssClass="btn btn-danger" CommandName="Deletar" CommandArgument='<%# Bind("cat_id") %>'>Deletar</asp:LinkButton>
                            </ItemTemplate>
                        </asp:TemplateField>
                    </Columns>
                </asp:GridView>


        </section>

    </div>

      <!-- Se precisar, coloque os links scripts js aqui -->
</asp:Content>

