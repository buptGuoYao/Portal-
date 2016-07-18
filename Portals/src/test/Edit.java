package test;

import java.io.IOException;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.mysql.jdbc.Connection;
import com.mysql.jdbc.Statement;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Edit
 */
@WebServlet("/edit")
public class Edit extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Edit() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html;charset=utf-8");
		request.setCharacterEncoding("utf-8");
		
		HttpSession session = request.getSession();
		String result = "";
	
		String article_top = request.getParameter("article_top");
		String article_body = request.getParameter("article_body");
		
		if(article_top == "" || article_top == null || article_top.length()>20){
			try {
				result = "请输入文章名";
				session.setAttribute("message", result);
				response.sendRedirect("edit.jsp");
				return;
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
		
		if(article_body == "" || article_body == null){
			try {
				result = "请输入文章内容";
				session.setAttribute("message", result);
			    System.out.println(result);
				response.sendRedirect("edit.jsp");
				return;
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
		
		//登记JDBC驱动程序
		try {
			Class.forName("com.mysql.jdbc.Driver");
		} catch (Exception e) {
			System.out.print("Class Not Found Exception");
		}
		
		//链接URL
		String url = "jdbc:mysql://localhost:3306/demo";
		Connection conn = null;
		Statement stmt = null;
		ResultSet rs = null;
		
		try {
			conn = (Connection) DriverManager.getConnection(url,"root","");
			stmt = (Statement) conn.createStatement();
			if(conn!=null)
			{
				System.out.println("数据库连接成功！！！");
			}
			String sql = "INSERT INTO `article` (`title`, `body`) VALUES (?, ?)";
			PreparedStatement ps = conn.prepareStatement(sql);
			ps.setString(1, article_top);
			ps.setString(2, article_body);
			int row = ps.executeUpdate();
			if(row>0)
			{
				System.out.println("添加文章成功！！！");
				response.sendRedirect("index.jsp") ;
			}
		} catch (Exception e) {
			System.out.println(e);
	}
	}
}
