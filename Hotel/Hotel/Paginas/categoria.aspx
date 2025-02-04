﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Content/Master/Principal.master" AutoEventWireup="true" CodeFile="categoria.aspx.cs" Inherits="Paginas_Default3" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <!-- Se precisar, coloque os links para seus css aqui -->
    <!-- BootStrap já está na pagina master, então é só usar aqui... -->

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">

    <!-- Content Wrapper. Contains page content -->
    <div class="content-wrapper">
        <!-- Identificação da página, altere esses dados para a página correspondente. -->
        <section class="content-header">
            <h1>Categoria
            <small>Controle de Categorias</small>
            </h1>
            <ol class="breadcrumb">
                <li><a href="index.aspx"><i class="fa fa-dashboard"></i>Home</a></li>
                <li class="active">Categorias</li>
            </ol>
        </section>

        <section class="content">

            <!-- DADOS PRINCIPAIS -->
            <div class="box box-default">
                <div class="box-header with-border">
                    <h3 class="box-title">Dados Principais</h3>

                    <div class="box-tools pull-right">
                        <button type="button" class="btn btn-box-tool" data-widget="collapse"><i class="fa fa-minus"></i></button>
                        <button type="button" class="btn btn-box-tool" data-widget="remove"><i class="fa fa-remove"></i></button>
                        <asp:TextBox ID="txtID" runat="server" CssClass="form-control" Visible="False"></asp:TextBox>
                    </div>
                </div>

            <div class="box-body">
                <div class="form-group">
                    <label for="txtDescricao">Descrição</label>
                    <asp:TextBox ID="txtDescricao" runat="server" CssClass="form-control"></asp:TextBox>
                </div>
                <div class="form-group">
                    <label for="txtAbreviacao">Abreviação</label>
                    <asp:TextBox ID="txtAbreviacao" runat="server" CssClass="form-control"></asp:TextBox>
                </div>


                <div class="form-group">
                    <div class="row">
                        <div class="col-12 col-sm-6">
                            <label for="txtQtdAcomodacoes">Quantidade de Acomodações</label>
                            <asp:TextBox ID="txtQtdAcomodacoes" runat="server" CssClass="form-control"></asp:TextBox>
                        </div>
                        <div class="col-12 col-sm-6">
                            <label for="txtQtdApartamento">Quantidade de Apartamentos</label>
                            <asp:TextBox ID="txtQtdApartamento" runat="server" CssClass="form-control"></asp:TextBox>
                        </div>


                    </div>
                    <!-- /.box-body -->
                    <br>
                    <asp:Button runat="server" ID="btnSalvar" CssClass="btn btn-primary" Text="Salvar" OnClick="btnSalvar_Click" />
                    <br />
                    <br />
                    <br />
                    <div class="col-12 col-sm-12">
                        <asp:Label runat="server" CssClass="alert alert-info" Visible="false" ID="lblMensagem"></asp:Label>
                    </div>
                </div>
                <!-- /.box box-default -->
                <br />
                <br />
                <br />
            </div>


            </div>




        </section>

    </div>



    <!-- Se precisar, coloque os links scripts js aqui -->
</asp:Content>

