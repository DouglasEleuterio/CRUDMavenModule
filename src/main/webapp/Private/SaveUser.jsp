<%-- 
    Document   : SaveUser
    Created on : 16/04/2018, 21:17:55
    Author     : douglas
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset=utf-8>
        <!-- CDN Bootstrap CSS -->
        <link rel=stylesheet href=https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css>
        <!-- CDN JS Bootstrap e JQuery -->
        <script src=https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js></script> 
        <script src=https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js></script> 

    </head>                               
    <body>                                

        <!-- Menu navegacao -->
        <nav class= navbar navbar-default navbar-static-top >
            <div class=container>
                <div id=navbar class=navbar-collapse collapse>
                    <ul class=nav navbar-nav>
                        <li><a href=index.html>Home</a></li>
                        <li class=active><a href=#>Salvar</a></li>
                        <li><a href=#>Listar Dados</a></li>
                    </ul>
                </div>
            </div>
        </nav>
        <!--//Fim Menu navegacao -->

        <!-- Cabecalho -->
        <div class=container> 
            <h2>Adicionar Pessoas</h2>
            <form class=form-horizontal method=post action=SaveServlet >

                <!-- Nome -->
                <div class=form-group>
                    <label class=control-label col-sm-2 > Nome </label>
                    <div class=col-sm-10>
                        <input type=text class=form-control id=id-nome name=nome placeholder="Digite seu Nome" required=reequired>
                    </div> 
                </div> 
                <!-- Fim  Nome -->

                <!-- Password -->
                <div class=form-group>
                    <label class=control-label col-sm-2 > Password </label>
                    <div class=col-sm-10>
                        <input type=password class=form-control id=id-nome name=password placeholder="Digite a Senha" required=required>
                    </div> 
                </div> 
                <!-- Fim  Password -->

                <!-- Email -->
                <div class=form-group>
                    <label class=control-label col-sm-2> E-mail: </label>
                    <div class=col-sm-10> 
                        <input type=email class=form-control id=id-email name=email placeholder="Digite seu E-mail" required=reequired >
                    </div> 
                </div> 
                <!-- Fim Email -->

                <!-- CPF -->
                <div class=form-group>
                    <label class=control-label col-sm-2> CPF </label>
                    <div class=col-sm-10> 
                        <input type=text class=form-control id=id-cpf name=cpf placeholder="Digite seu CPF " required=reequired>
                    </div>
                </div> 
                <!-- Fim CPF -->

                <!-- Submit -->
                <div class=form-group>
                    <div class=col-sm-offset-2 col-sm-10>
                        <button type=submit class= btn btn-success > Enviar </button>
                    </div>
                </div>
               
        </div> 
    </form> 
</div> 
</body>
</html>


