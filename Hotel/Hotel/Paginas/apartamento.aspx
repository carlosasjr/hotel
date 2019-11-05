﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Content/Master/Principal.master" AutoEventWireup="true" CodeFile="apartamento.aspx.cs" Inherits="Paginas_Default3" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <!-- Se precisar, coloque os links para seus css aqui -->
    <!-- BootStrap já está na pagina master, então é só usar aqui... -->

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">

    <!-- Content Wrapper. Contains page content -->
    <div class="content-wrapper">
        <!-- Identificação da página, altere esses dados para a página correspondente. -->
        <section class="content-header">
            <h1>Dashboard
            <small>Control panel</small>
            </h1>
            <ol class="breadcrumb">
                <li><a href="index.aspx"><i class="fa fa-dashboard"></i>Home</a></li>
                <li class="active">Dashboard</li>
            </ol>
        </section>

        <section class="content">
            <!-- Seu conteúdo vai aqui -->
            <div class="box box-default">
                <div class="box-header with-border">
                    <h3 class="box-title">Dados Principais</h3>

                    <div class="box-tools pull-right">
                        <button type="button" class="btn btn-box-tool" data-widget="collapse"><i class="fa fa-minus"></i></button>
                        <button type="button" class="btn btn-box-tool" data-widget="remove"><i class="fa fa-remove"></i></button>
                    </div>
                </div>
            </div>
            <div class="box-body">
                <asp:TextBox ID="txtID" runat="server" CssClass="form-control" Visible="False"></asp:TextBox>

                <div class="form-group">
                    <label for="txtDescricao">Descrição</label>
                    <asp:TextBox ID="txtDescricao" runat="server" CssClass="form-control"></asp:TextBox>
                </div>
                <div class="form-group">
                    <label for="txtNumero">Numero</label>
                    <asp:TextBox ID="txtNumero" runat="server" CssClass="form-control"></asp:TextBox>
                </div>


                <div class="form-group">
                    <div class="row">
                        <div class="col-12 col-sm-6">
                            <label for="txtRamal">Ramal</label>
                            <asp:TextBox ID="txtRamal" runat="server" CssClass="form-control"></asp:TextBox>
                        </div>
                        <div class="col-12 col-sm-6">
                            <label for="txtAcessibilidade">Acessibilidade</label>
                            <asp:TextBox ID="txtAcessibilidade" runat="server" CssClass="form-control"></asp:TextBox>
                        </div>

                    </div>
                </div>
                <div class="form-group">
                    <div class="row">
                        <div class="col-12 col-sm-6">
                            <label for="txtBerco">Berço</label>
                            <asp:TextBox ID="txtBerco" runat="server" CssClass="form-control"></asp:TextBox>
                        </div>
                        <div class="col-12 col-sm-6">
                            <label for="txtPosicao">Posicão</label>
                            <asp:TextBox ID="txtPosicao" runat="server" CssClass="form-control"></asp:TextBox>
                        </div>
                    </div>
                </div>
                <div class="form-group">
                    <div class="row">
                        <div class="col-12 col-sm-6">
                            <label for="txtQtdCamaCasal">Cama de Casal</label>
                            <asp:TextBox ID="txtQtdCamaCasal" runat="server" CssClass="form-control"></asp:TextBox>
                        </div>
                        <div class="col-12 col-sm-6">
                            <label for="txtQtdCamaSolteiro">Cama de Solteiro</label>
                            <asp:TextBox ID="txtQtdCamaSolteiro" runat="server" CssClass="form-control"></asp:TextBox>
                        </div>
                    </div>
                </div>
                <div class="form-group">
                    <div class="row">
                        <div class="col-12 col-sm-6">
                            <label for="txtObservacoes">Observações</label>
                            <asp:TextBox ID="txtObservacoes" runat="server" CssClass="form-control"></asp:TextBox>
                        </div>
                        <div class="col-12 col-sm-6">
                            <label for="txtStatus">Status</label>
                            <asp:TextBox ID="txtStatus" runat="server" CssClass="form-control"></asp:TextBox>
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

