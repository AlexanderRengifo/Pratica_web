<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import ="com.productos.negocio.*"%>
<!DOCTYPE html>
<html>
   <head>
      <meta charset="ISO-8859-1">
      <title>Productos</title>
      <link href="css/style.css" rel="stylesheet">
   </head>
   <body>
   <main>
         <header>
         <div><img align="left" src="imagenes/logo.png" width="100" height="100" />
           </div>
          <h1>Power Motors</h1>
         </header>
         <nav>
         <a href="index.jsp">Inicio</a>
            <a href="consulta_todos.jsp">Consultar todos los productos</a>
            <a href="consulta_categoria.jsp">Consultar Por Categoria</a>
         </nav>
        <%
        consultas cos = new consultas ();
                	String consulta = cos.consultarTodo();
                	out.println(consulta);
        %>       	
      </main>
   </body>
</html>