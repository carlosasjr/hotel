﻿using Hotel.Classes;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Paginas_Default3 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {
            if (Convert.ToString(Session["ID"]) != "")
            {
                Categoria categoria = CategoriaDB.Select(Convert.ToInt32(Session["ID"]));

                if (categoria != null)
                {
                    txtID.Text = categoria.id.ToString();
                    txtDescricao.Text = categoria.descricao;
                    txtAbreviacao.Text = categoria.abreviacao;
                    txtQtdApartamento.Text = Convert.ToString(categoria.qtdapartamento);
                    txtQtdAcomodacoes.Text = Convert.ToString(categoria.qtdacomodacoes);

                }
            }
        }
    }

    protected void btnSalvar_Click(object sender, EventArgs e)
    {
        Categoria cat = new Categoria();

        Hotel.Classes.Hotel hotel = HotelDB.Select(Convert.ToInt32(1));

        cat.hotel = hotel;
        cat.descricao = txtDescricao.Text;
        cat.abreviacao = txtAbreviacao.Text;
        cat.qtdacomodacoes = Convert.ToInt32(txtQtdAcomodacoes.Text);
        cat.qtdapartamento = Convert.ToInt32(txtQtdApartamento.Text);
        cat.ativo = 1;

        if (txtID.Text != "")
        {
            cat.id = Convert.ToInt32(txtID.Text);


        }

        int retorno = CategoriaDB.Store(cat);

        switch (retorno)
        {
            case 0:
                Response.Redirect("listarCategoria.aspx");
                break;

            case 1:
                lblMensagem.Visible = true;
                lblMensagem.Text = "Não foi possível realizar o cadastro.";
                break;

            case 2:
                lblMensagem.Visible = true;
                lblMensagem.Text = "Não foi possível realizar o cadastro.";
                break;

            default:
                break;
        }


    
}
}