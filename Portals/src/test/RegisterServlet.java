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

/**
 * Servlet implementation class RegisterServlet
 */
@WebServlet("/registerServlet")
public class RegisterServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public RegisterServlet() {
        super();
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
	
		String registName = request.getParameter("registName");
		String registPwd = request.getParameter("registPwd");
		String registAge = request.getParameter("registAge");
		String registWeight= request.getParameter("registWeight");
		
		if(registName == "" || registName == null || registName.length()>20){
			try {
				result = "请输入用户名（不能超过20个字符）";
				session.setAttribute("message", result);
				response.sendRedirect("fail.jsp");
				return;
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
		
		if(registPwd == "" || registPwd == null || registPwd.length() > 20){
			try {
				result = "请输入密码（不能超过20个字符）";
				session.setAttribute("message", result);
			    System.out.println(result);
				response.sendRedirect("fail.jsp");
				return;
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
		
		//System.out.println(registName);
		//登记JDBC驱动程序
		try {
			Class.forName("com.mysql.jdbc.Driver");
		} catch (Exception e) {
			System.out.println("无法加载驱动！！！");
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
			String sql = "INSERT INTO `userinfo` (`username`, `userpwd`, `weight`, `age`)  VALUES (?, ?, ?, ? )";
			PreparedStatement ps = conn.prepareStatement(sql);
			ps.setString(1, registName);
			ps.setString(2, registPwd);
			ps.setInt(3, Integer.valueOf(registWeight).intValue());
			ps.setInt(4, Integer.valueOf(registAge).intValue());
			int row = ps.executeUpdate();
			if(row>0)
			{
				System.out.println("注册成功！！！");
				response.sendRedirect("login.jsp") ;
			}
		} catch (Exception e) {
			System.out.println(e);
		}
	}

}
