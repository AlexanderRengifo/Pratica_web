package com.productos.negocio;

import java.sql.ResultSet;
import java.sql.SQLException;
import com.productos.datos.Conexion;

public class consultas {

	
	public String mostrarCategoria() 	{
		
		String combo="<select name=cmbCategoria>";
		String sql="SELECT *FROM public.categoria";
		ResultSet rs=null;
		Conexion con=new Conexion();
		
		try	{
			
			rs=con.Consulta(sql);
			
			while(rs.next())	{
				
				combo+="<option value="+rs.getInt(1)+ ">"+rs.getString(2)+"</option>";
				
			}
			
			combo+="</select>";
			
		}	catch(SQLException e)	{
			
	System.out.print(e.getMessage());
	
	}
		return combo;
	}

	public String consultarTodo() {
	    String sql = "SELECT * FROM producto ORDER BY id_producto";
	    Conexion con = new Conexion();
	    String tabla = "<table border=2><th>ID</th><th>Producto</th><th>Cantidad</th><th>Precio</th>";
	    ResultSet rs = con.Consulta(sql);
	    try {
	      while (rs.next()) {
	        tabla += "<tr><td>" + rs.getInt(1) + "</td>" +
	          "<td>" + rs.getString(3) + "</td>" +
	          "<td>" + rs.getInt(4) + "</td>" +
	          "<td>" + rs.getDouble(5) + "</td>" +
	          "</td></tr>";
	      }
	    } catch (SQLException e) {
	      // TODO Auto-generated catch block
	      e.printStackTrace();
	      System.out.print(e.getMessage());
	    }
	    tabla += "</table>";
	    return tabla;
	  }
	
	public String buscarProductoCategoria(int cat) {
		String sentencia="SELECT descripcion, precio_pr FROM producto WHERE id_cat="+cat;
		Conexion con=new Conexion();
		ResultSet rs=null;
		String resultado="<table border=3>";
		try {
			rs=con.Consulta(sentencia);
			while(rs.next()){
				resultado+="<tr><td>"+ rs.getString(1)+"</td>"
						+ "<td>"+rs.getDouble(2)+"</td></tr>";
			}
			
			resultado+="</table>";
		}
		
		catch(SQLException e) {
			System.out.print(e.getMessage());
		}
		
		System.out.print(resultado);
		return resultado;
	}
	
	public String mostrarOfertas () {
		
		String sql = "SELECT id_producto, id_cat, descipcion_pr,cantidad,precio_pr,precio_oferta"
				+ "	FROM public.producto\r\n"
				+ "	where oferta_estado =1;";
	    Conexion con = new Conexion();
	    String tabla = "<table border=2><th>ID</th><th>Producto</th><th>Cantidad</th><th>Precio</th><th>Precio Oferta</th>";
	    ResultSet rs = con.Consulta(sql);
	    try {
	      while (rs.next()) {
	        tabla += "<tr><td>" + rs.getInt(1) + "</td>" +
	          "<td>" + rs.getString(3) + "</td>" +
	          "<td>" + rs.getInt(4) + "</td>" +
	          "<td>" + rs.getDouble(5) + "</td>" +
	          "<td>" + rs.getDouble(5) + "</td>" +
	          "</td></tr>";
	      }
	    } catch (SQLException e) {
	      // TODO Auto-generated catch block
	      e.printStackTrace();
	      System.out.print(e.getMessage());
	    }
	    tabla += "</table>";
	    return tabla;
	}
	
}
