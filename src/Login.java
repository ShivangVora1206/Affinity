

import java.io.IOException;
import java.math.BigInteger;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Credentials.Creds;

/**
 * Servlet implementation class Login
 */
public class Login extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Login() {
        super();
        // TODO Auto-generated constructor stub
    }
    void getOCEAN(String email){
    	Connection con = DBConnector.connect();
		try{
			String query = "select openness, conscientiousness, extroversion, agreeableness, neuroticism from oceanscores where email=?";
			PreparedStatement pstmt = con.prepareStatement(query);
			pstmt.setString(1,  email);
			ResultSet rs = pstmt.executeQuery();
			if(rs.next()){
				Creds.setOpen(rs.getFloat(1));
				Creds.setCons(rs.getFloat(2));
				Creds.setExtro(rs.getFloat(3));
				Creds.setAgree(rs.getFloat(4));
				Creds.setNeuro(rs.getFloat(5));
				System.out.println("creds set");
			}
		}catch(Exception e){
			e.printStackTrace();
		}
    }

    static String hashPwd(String input){
		 try {
	            MessageDigest md = MessageDigest.getInstance("MD5");
	            byte[] messageDigest = md.digest(input.getBytes());
	            BigInteger no = new BigInteger(1, messageDigest);
	            String hashtext = no.toString(16);
	            while (hashtext.length() < 32) {
	                hashtext = "0" + hashtext;
	            }
	            return hashtext;
	        } 
	  
	        catch (NoSuchAlgorithmException e) {
	            throw new RuntimeException(e);
	        }
	}
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String email = request.getParameter("email");
		Creds.setEmail(email);
		String pass = hashPwd(request.getParameter("password"));
		Connection con = DBConnector.connect();
		try{
			String query = "select * from userdetails where email=? and pwd=?";
			PreparedStatement pstmt = con.prepareStatement(query);
			pstmt.setString(1,  email);
			pstmt.setString(2,  pass);
			ResultSet rs = pstmt.executeQuery();
			if(rs.next()){
				getOCEAN(email);
				System.out.println("LOGIN SUCCESSFUL");
				response.sendRedirect("VieweProfile.jsp?email="+email);
			}else{
				response.sendRedirect("loginFailed.html");
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
