

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Credentials.Creds;

/**
 * Servlet implementation class Q10
 */
public class Q10 extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Q10() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		float answer = Float.parseFloat(request.getParameter("answer"));
		Creds.setQ10(answer);
		System.out.println("q10"+Creds.getQ10());
		System.out.println(answer);
		Connection con = DBConnector.connect();
		try{
		String query = "update useranswers set ext10=? where email=? and userid=?";
		PreparedStatement pstmt = con.prepareStatement(query);
		pstmt.setFloat(1, answer);
		pstmt.setString(2, Creds.getEmail());
		pstmt.setInt(3, Creds.getUserid());
		int i = pstmt.executeUpdate();
		if(i > 0){
			System.out.println("q10 added");
			response.sendRedirect("Q11.html");
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
