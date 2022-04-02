

import java.io.IOException;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.lang.Runnable;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Credentials.Creds;

/**
 * Servlet implementation class Q50
 */
public class Q50 extends HttpServlet implements Runnable{
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Q50() {
        super();
        // TODO Auto-generated constructor stub
    }

	public void run(){
		apiFlask.callApi();
	}
    
	@SuppressWarnings("static-access")
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		float answer = Float.parseFloat(request.getParameter("answer"));
		Creds.setQ50(answer);
		System.out.println("q50"+Creds.getQ50());
		System.out.println(answer);
		Connection con = DBConnector.connect();
		try{
		String query = "update useranswers set opn10=? where email=? and userid=?";
		PreparedStatement pstmt = con.prepareStatement(query);
		pstmt.setFloat(1, answer);
		pstmt.setString(2, Creds.getEmail());
		pstmt.setInt(3, Creds.getUserid());
		int i = pstmt.executeUpdate();
		if(i > 0){
			System.out.println("q50 added");
			try {
				Q50 q = new Q50();
				Thread t1 = new Thread(q);
				t1.start();
				response.sendRedirect("Login.html");
			} catch (Exception e) {
				e.printStackTrace();
			}
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
