<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<%@page import="java.io.*"%>
<%
    HttpSession sesion = request.getSession(true);
    
    String usuario = request.getParameter("usu");
    String pass = request.getParameter("pass");
    String tipo = request.getParameter("tipo");
    
    Connection conexion=null;
    Statement sentencia = null;
    ResultSet resultado;
    String URL;
    String userName = "root";
    String contra = "n0m3l0";
    try{
        Class.forName("com.mysql.jdbc.Driver").newInstance();
        URL = "jdbc:mysql://localhost/lab3";
        conexion = DriverManager.getConnection(URL, userName, contra);
        sentencia = conexion.createStatement();
        System.out.println("Conexión establecida");
    }
    catch(Exception e){
        System.out.println("Conexión no establecida");
    }
    
    sentencia.executeUpdate("insert into Usuarios(email, password, tipo) values('"+usuario+"', '"+pass+"', "+tipo+");");

    String usu2 =usuario;
    String pass2 = pass;

    if (usuario.equals(usu2) && pass.equals(pass2) && sesion.getAttribute("usu") == null) {
        sesion.setAttribute("usu", usuario);
    }

%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" type="text/css" href="../css/css1.css">
        <link type="text/css" rel="stylesheet" href="css/styles.css">
        <link type="text/css" rel="stylesheet" href="css/estilo.css">    
        <title>Registro</title>
    </head>
    <body>
        <br>
        <h1 class="hola">Registro exitoso</h1>

        <section>
            <article<br><br>
                <form method="get" action="inde.jsp">
                    <input type="submit" value="Iniciar sesion" class="Boton btn">
                </form>
            </article>
        </section>
    </body>
</html>