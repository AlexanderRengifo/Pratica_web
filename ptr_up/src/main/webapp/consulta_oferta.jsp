<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import ="com.productos.negocio.*"%>
<!DOCTYPE html>
<html>
   <head>
      <meta charset="ISO-8859-1">
      <title>Productos</title>
   </head>
   <body>
   <img alt="Logo" src="imagenes/log_com.png" width="300" heigth="300">
      <main>
         <header>
            <h1>Cliente</h1>
         </header>
         <p>
         	<h3 align = "center" >estas son ofertas especiales por 24 de Mayo :</h3>
         </p>
         
        <%
        consultas cos = new consultas ();
                	String consulta = cos.mostrarOfertas();
                	out.println(consulta);
        %>    
           	
      </main>
   </body>
</html>