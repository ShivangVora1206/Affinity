

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Credentials.Creds;

/**
 * Servlet implementation class Q22
 */
public class Q22 extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Q22() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		float answer = Float.parseFloat(request.getParameter("answer"));
		Creds.setQ22(answer);
		System.out.println("q22"+Creds.getQ22());
		System.out.println(answer);
		Connection con = DBConnector.connect();
		try{
		String query = "update useranswers set agr2=? where email=? and userid=?";
		PreparedStatement pstmt = con.prepareStatement(query);
		pstmt.setFloat(1, answer);
		pstmt.setString(2, Creds.getEmail());
		pstmt.setInt(3, Creds.getUserid());
		int i = pstmt.executeUpdate();
		if(i > 0){
			System.out.println("q22 added");
			response.sendRedirect("Q23.html");
		}
		}catch(Exception e){
			e.printStackTrace();
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
