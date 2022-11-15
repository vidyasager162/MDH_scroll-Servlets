package com.MDH_scroll;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class learnerservlet
 */
@WebServlet("/login")
public class login extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
  	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		try {
			PrintWriter out=response.getWriter();
			HttpSession session = request.getSession();
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/mdh","root","Sairam123!");
			String n=request.getParameter("uname");
			String p=request.getParameter("pwd");
			PreparedStatement ps=con.prepareStatement("select * from login where username=? and password=?");
			ps.setString(1, n);
			ps.setString(2, p);
			ResultSet rs=ps.executeQuery();
			if (rs.next())
			{
				session.setAttribute("name", rs.getString("name"));
				session.setAttribute("username", rs.getString("username"));
				session.setAttribute("email", rs.getString("email_id"));
				RequestDispatcher rd= request.getRequestDispatcher("home.jsp");
				rd.forward(request, response);
			}
			else
			{
				RequestDispatcher rd= request.getRequestDispatcher("login.jsp");
				rd.forward(request, response);
			}
		} catch (ClassNotFoundException | SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

}

