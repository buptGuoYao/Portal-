package test;

import java.io.IOException;
import java.sql.DriverManager;
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
 * Servlet implementation class LoginTestServlet
 */
@WebServlet("/LoginTestServlet")
public class LoginTestServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public LoginTestServlet() {
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
	
		String username = request.getParameter("username");
		String pwd = request.getParameter("password");
		
		if(username == "" || username == null || username.length()>20){
			try {
				result = "�������û��������ܳ���20���ַ���";
				session.setAttribute("message", result);
				response.sendRedirect("fail.jsp");
				return;
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
		
		if(pwd == "" || pwd == null || pwd.length() > 20){
			try {
				result = "���������루���ܳ���20���ַ���";
				session.setAttribute("message", result);
			    System.out.println(result);
				response.sendRedirect("fail.jsp");
				return;
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
		
		//�Ǽ�JDBC��������
		try {
			Class.forName("com.mysql.jdbc.Driver");
		} catch (Exception e) {
			System.out.print("Class Not Found Exception");
		}
		
		//����URL
		String url = "jdbc:mysql://w.rdc.sae.sina.com.cn:3307/app_portalsbupt";
		Connection conn = null;
		Statement stmt = null;
		ResultSet rs = null;
		
		try {
			conn = (Connection) DriverManager.getConnection(url,"13ny31jzn1","xj5i4hl4lzlk04h2kxkx2l0l3w025m0l505100jh");
			stmt = (Statement) conn.createStatement();
			if(conn!=null)
			{
				System.out.println("���ݿ����ӳɹ�������");
			}
			String sql = "select * from userInfo where username='"+username+"' and userpwd= '"+pwd+"'";
			rs = stmt.executeQuery(sql);
		} catch (Exception e) {
			e.printStackTrace();
		}
		
	session.setAttribute("username", username);
		
	try {
		if(rs.next()){
		    session.setAttribute("age",rs.getString("age")) ;
		    session.setAttribute("weight",rs.getString("weight")) ;
		    System.out.println("ƥ��ɹ�������");
		    response.sendRedirect("success.jsp") ;
		    return;
		}else{
		    session.setAttribute("message", "�û��������벻ƥ�䡣");
		    System.out.println("��ƥ�䣡����");
		    response.sendRedirect("fail.jsp") ;
		    return;
		}
		
	} catch (Exception e) {
		e.printStackTrace();
	}
	}

}
