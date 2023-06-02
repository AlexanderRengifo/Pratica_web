<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import ="com.productos.negocio.*"%>
<%@ page import="javax.servlet.http.HttpServletRequest" %>
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
            <a href="todos_prod.jsp">Ver Productos</a>
            <a href="con_productos.jsp">Buscar</a>
            <a href="registrar.jsp">Registrar Productos</a>
            <a href="consulta_oferta.jsp">Buscar Por ofertas</a>
         </nav>
   <img alt="Logo" src="imagenes/log_com.png" width="300" heigth ="300">
      <main>
         <header>
            <h1>Cliente</h1>
         </header>
         <nav>
            <a href="consulta_todos.jsp">Consultar todos los productos</a><br>
            <a href="consulta_categoria.jsp">Consultar Por Categoria</a>
         </nav>
         <%	consultas cos = new consultas ();
        	String consulta = cos.mostrarCategoria();
        	out.println(consulta);
        %>
        <script>
function obtenerValorSeleccionado() {
  
  var selectElement = document.getElementsByName(cos.mostrarCategoria())[1];

  
  var valorSeleccionado = selectElement.value;

  console.log("Valor seleccionado: " + valorSeleccionado);
  out.println(valorSeleccionado);
}
</script>


        
 
          
   
      </main>
   </body>
</html>
