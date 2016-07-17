package test;

import java.article;
import java.io.IOException;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.mysql.jdbc.Connection;
import com.mysql.jdbc.Statement;

/**
 * Servlet implementation class Find
 */
@WebServlet("/find")
public class Find extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Find() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doPost(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		try {
			Class.forName("com.mysql.jdbc.Driver");
		} catch (Exception e) {
			System.out.print("Class Not Found Exception");
		}
		
		
		HttpSession session = request.getSession();
		//链接URL
		String url = "jdbc:mysql://w.rdc.sae.sina.com.cn:3307/app_portalsbupt";
		Connection conn = null;
		Statement stmt = null;
		
		try {
			conn = (Connection) DriverManager.getConnection(url,"13ny31jzn1","xj5i4hl4lzlk04h2kxkx2l0l3w025m0l505100jh");
			stmt = (Statement) conn.createStatement();
			if(conn!=null)
			{
				System.out.println("数据库连接成功！！！");
			}

			
			String sql = "select * from article";
			ResultSet rs = stmt.executeQuery(sql);
			
			String []title_js= new String[5];
			String []body_js=new String [5];
			int i = 0;
			
			System.out.println("声明完毕！！！");
			
			while(rs.next() & i<5){
	
				title_js[i]=rs.getString("title");
				body_js[i]=rs.getString("body");
				i++;
			}
			
		
			session.setAttribute("title_js", title_js);
			session.setAttribute("body_js", body_js);
			System.out.println(title_js);
			
			response.sendRedirect("ArticleList.jsp") ;

		} 
		catch (Exception e) {
			e.printStackTrace();
		}

	}
}



