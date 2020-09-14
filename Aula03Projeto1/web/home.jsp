<%-- 
    Document   : home.jsp
    Created on : 13 de set de 2020, 12:22:48
    Author     : felipe
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <%@include file="WEB-INF\jspf\head-references.jspf" %>
        <title>Projeto POO - Amortização</title>
        
    </head>
    <body>
        <%@include file="WEB-INF\jspf\menu.jspf" %>
        <div style="width:600px;margin:0 auto">
            <h1 align="center">
                <b>Projeto de amortização</b></h1>
            <p align="justify">
            <b>Integrantes do grupo: </b>Felipe Rocha Barros RA:1290481823013 e Alex de Andrade RA:1290481823002
            </p>
            <p align="justify">
                <b>O projeto consiste em três tipos de calculos de amortização, Amorização Constante,
                    Amortização Americana e Tabela-Price.</b>
            <p>
            <p align="justify">
                <b>Amortização constante</b> - O Sistema de Amortização Constante é o modelo de amortização em que ocorre o
                abatimento programado de valores de um empréstimo por um período determinado, onde o valor das parcelas a serem pagas
                é decrescente, sendo automaticamente descontado do valor inicial da dívida.
            </p>
            <p align="justify">
                <b>Amortização Americana</b> - é um sistema de amortização de dívidas onde os juros de um empréstimo são pagos periodicamente, 
                porém a quitação do empréstimo se dá por meio de uma única parcela que deverá ser paga ao final do contrato.
            </p>
            <p align="justify">
                <b>Tabela-price</b> - o cálculo das parcelas de uma prestação é feito de acordo com uma fórmula em que o valor da prestação é 
                determinado em função do valor presente do bem em questão, assim como a taxa de juros e o período de financiamento. Seu 
                resultado fornece uma tabela com os valores dos juros de cada prestação.
            </p>
        </div>
        <%@include file="WEB-INF\jspf\body-scripts.jspf" %>
        <%@include file="WEB-INF\jspf\rodape.jspf" %>
    </body>
</html>
