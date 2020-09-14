<%-- 
    Document   : amortizaConst
    Created on : 12 de set de 2020, 19:54:21
    Author     : felip
--%>

<%@page import="java.text.DecimalFormat"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
    Exception requestException = null;
    int valor;
    int meses;
    double juros;
    try{
        valor = Integer.parseInt(request.getParameter("valor"));
        meses = Integer.parseInt(request.getParameter("meses"));
        juros = Double.parseDouble(request.getParameter("juros"));
    }catch(Exception ex){
        valor = 0;
        meses = 0;
        juros = 0;
        requestException = ex;
    }
%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <%@include file="WEB-INF\jspf\head-references.jspf" %>
        <title>JSP Page</title>
    </head>
    <body>
         <%@include file="WEB-INF\jspf\menu.jspf" %>
         <div style="width:500px;margin:0 auto">
            <div class="container-fluid">
                <form>
                    <h1 align="center">Amortização Americana</h1>
                    Valor:
                    <div class="input-group mb-3">
                        <div class="input-group-prepend">
                          <span class="input-group-text">$</span>
                        </div>
                        <input type="text" name="valor" class="form-control" aria-label="Amount (to the nearest dollar)">
                        <div class="input-group-append">
                          <span class="input-group-text">.00</span>
                        </div>
                    </div>
                    Quantidade de meses:
                    <div class="input-group mb-3">
                        <input type="text" name="meses" class="form-control">
                    </div>
                    Taxa de juros:
                    <div class="input-group mb-3">
                        <input type="text" name="juros" class="form-control">
                        <div class="input-group-append">
                          <span class="input-group-text">%</span>
                        </div>
                    </div>
                    <input type="submit" value="Gerar"/>
                </form> 
            </div>
        </div>
        <div style="width:500px;margin:0 auto">
            <div class="container-fluid" align="center">
                <table>
                    <%DecimalFormat decimal = new DecimalFormat("00.00");%>
                    <%if(request.getParameter("valor")==null){ %>
                    <tr><td colspan="2">Não há parâmetro</td></tr>
                    <%}else if(requestException!=null){%>
                    <tr><td colspan="2">Parâmetro inválido</td></tr>
                    <%}else{%>
                        <th align="center">Período</th>
                        <th align="center">Valor parcela</th>
                        <%Double vl = Double.parseDouble(request.getParameter("valor")); %>
                        <%int mes = Integer.parseInt(request.getParameter("meses")); %>
                        <%double juro = Double.parseDouble(request.getParameter("juros")); %>
                        <%double amortiz = vl/mes; %>
                        <%double j = juro * (vl / 100); %>
                        <%double vlt = 0; %>
                        <%double parc = 0; %>
                        <% for(int i=1; i<=mes;i++){%>
                            <%if(i == mes){
                                parc = j * 2 + vlt ;
                            }else{
                                parc = j;
                                vlt = vlt + j;
                            }
                            %>
                        <tr>
                            <td align="center"><%= i%></td>
                            <td align="center">R$<%= decimal.format(parc)%></td>
                        </tr>
                        <%}%>
                    <%}%>
                </table>
            </div>
        </div>
        <%@include file="WEB-INF\jspf\body-scripts.jspf" %>
        <%@include file="WEB-INF\jspf\rodape.jspf" %>
    </body>
</html>
