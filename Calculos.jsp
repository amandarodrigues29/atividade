<%@page import="Operacoes.operacao"%>
<%@page import="Operacoes.subtracao"%>
<%@page import="Operacoes.soma"%>
<%@page import="Operacoes.multiplicacao"%>
<%@page import="Operacoes.divisao"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" type="text/css" href="daniellindo.css">
        <title>JSP Page</title>
    </head>
    <!--- Declarando as variáveis para puxar os valores do form --->
    <% 
        String operacao, Valor1, Valor2;
      
        operacao = request.getParameter("op");
        Valor1 = request.getParameter("V1");
        Valor2 = request.getParameter("V2");
            
    %>

    <body>
        <div class="main">
            <div class="caixa-central">
                <!--- JSP - Soma --->
                <% if(operacao.equals("Soma")){ %>
                <h1><%= operacao %></h1>
                
                <hr />
                <!--- Instanciando a classe Soma --->
                <%
                    soma op1 = new soma();
                    op1.setValor1(Float.parseFloat(Valor1));
                    op1.setValor2(Float.parseFloat(Valor2));
                %>

                <!--- Puxando os valores e metodo da classe --->
                <h2>O Valor1 é: <%= op1.getValor1() %></h2>
                <h2>O Valor2 é: <%= op1.getValor2() %></h2>
                <h2>O resultado da <%= operacao %> é: <%= op1.somar() %></h2>
                <!------------------------------------------------------------->
                <!--- JSP - Subtracao --->
                <% } else if(operacao.equals("Subtracao")){ %>
                
                <h1><%= operacao %></h1>
                
                <hr />
                <!--- Instanciando a classe Subtracao --->
                <%
                    subtracao op1 = new subtracao();
                    op1.setValor1(Float.parseFloat(Valor1));
                    op1.setValor2(Float.parseFloat(Valor2));
                %>

                <!--- Puxando os valores e metodo da classe --->
                <h2>O Valor1 é: <%= op1.getValor1() %></h2>
                <h2>O Valor2 é: <%= op1.getValor2() %></h2>
                <h2>O resultado da <%= operacao %> é: <%= op1.subtrair() %></h2>
                <!------------------------------------------------------------->
                <!--- JSP - Multiplicacao --->
                <% } else if(operacao.equals("multiplicacao")){ %>
                <h1><%= operacao %></h1>
                
                <hr />
                <!--- Instanciando a classe Multiplicacao --->
                <%
                    multiplicacao op1 = new multiplicacao();
                    op1.setValor1(Float.parseFloat(Valor1));
                    op1.setValor2(Float.parseFloat(Valor2));
                %>

                <!--- Puxando os valores e metodo da classe --->
                <h2>O Valor1 é: <%= op1.getValor1() %></h2>
                <h2>O Valor2 é: <%= op1.getValor2() %></h2>
                <h2>O resultado da <%= operacao %> é: <%= op1.multiplicar() %></h2>
                <!------------------------------------------------------------->
                <!--- JSP - Divisao --->
                <% } else {%>
                
                <h1><%= operacao %></h1>
                
                <hr />
                <!--- Instanciando a classe Divisao --->
                <%
                    divisao op1 = new divisao();
                    op1.setValor1(Float.parseFloat(Valor1));
                    op1.setValor2(Float.parseFloat(Valor2));
                %>
                
                <!--- Puxando os valores e metodo da classe --->
                <h2>O Valor1 é: <%= op1.getValor1() %></h2>
                <h2>O Valor2 é: <%= op1.getValor2() %></h2>
                <h2>O resultado da <%= operacao %> é: <%= op1.dividir() %></h2>
                <% } %>
                <!--- excessão de erro --->
            </div>
        </div>   
    </body>
</html>
