

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Credentials.Creds;

/**
 * Servlet implementation class Q37
 */
public class Q37 extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Q37() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		float answer = Float.parseFloat(request.getParameter("answer"));
		Creds.setQ37(answer);
		System.out.println("q37"+Creds.getQ37());
		System.out.println(answer);
		Connection con = DBConnector.connect();
		try{
		String query = "update useranswers set csn7=? where email=? and userid=?";
		PreparedStatement pstmt = con.prepareStatement(query);
		pstmt.setFloat(1, answer);
		pstmt.setString(2, Creds.getEmail());
		pstmt.setInt(3, Creds.getUserid());
		int i = pstmt.executeUpdate();
		if(i > 0){
			System.out.println("q37 added");
			response.sendRedirect("Q38.html");
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