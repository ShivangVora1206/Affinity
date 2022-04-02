
import Credentials.Creds;
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

/**
 * Servlet implementation class Register
 */
public class Register extends HttpServlet {
	private static final long serialVersionUID = 1L;

    /**
     * Default constructor. 
     */
	
	void initiateQuestions(){
		Connection con = DBConnector.connect();
		String query = "insert into useranswers values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
		try{
		PreparedStatement pstmt = con.prepareStatement(query);
		pstmt.setInt(1,  0);
		pstmt.setInt(2, Creds.getUserid());
		pstmt.setString(3, Creds.getEmail());
		pstmt.setFloat(4, 0.0f);
		pstmt.setFloat(5, 0);
		pstmt.setFloat(6, 0);
		pstmt.setFloat(7, 0);
		pstmt.setFloat(8, 0);
		pstmt.setFloat(9, 0);
		pstmt.setFloat(10, 0);
		pstmt.setFloat(11, 0);
		pstmt.setFloat(12, 0);
		pstmt.setFloat(13, 0);
		pstmt.setFloat(14, 0);
		pstmt.setFloat(15, 0);
		pstmt.setFloat(16, 0);
		pstmt.setFloat(17, 0);
		pstmt.setFloat(18, 0);
		pstmt.setFloat(19, 0);
		pstmt.setFloat(20, 0);
		pstmt.setFloat(21, 0);
		pstmt.setFloat(22, 0);
		pstmt.setFloat(23, 0);
		pstmt.setFloat(24, 0);
		pstmt.setFloat(25, 0);
		pstmt.setFloat(26, 0);
		pstmt.setFloat(27, 0);
		pstmt.setFloat(28, 0);
		pstmt.setFloat(29, 0);
		pstmt.setFloat(30, 0);
		pstmt.setFloat(31, 0);
		pstmt.setFloat(32, 0);
		pstmt.setFloat(33, 0);
		pstmt.setFloat(34, 0);
		pstmt.setFloat(35, 0);
		pstmt.setFloat(36, 0);
		pstmt.setFloat(37, 0);
		pstmt.setFloat(38, 0);
		pstmt.setFloat(39, 0);
		pstmt.setFloat(40, 0);
		pstmt.setFloat(41, 0);
		pstmt.setFloat(42, 0);
		pstmt.setFloat(43, 0);
		pstmt.setFloat(44, 0);
		pstmt.setFloat(45, 0);
		pstmt.setFloat(46, 0);
		pstmt.setFloat(47, 0);
		pstmt.setFloat(48, 0);
		pstmt.setFloat(49, 0);
		pstmt.setFloat(50, 0);
		pstmt.setFloat(51, 0);
		pstmt.setFloat(52, 0);
		pstmt.setFloat(53, 0);

		int i = pstmt.executeUpdate();
		if(i > 0){
			System.out.println("question initialted");
		}
		}catch(Exception e){
			e.printStackTrace();
		}
	}
	
	void getUserIdFromDB(String email){
		Connection con = DBConnector.connect();
		String query = "select id from userdetails where email=?";
		try{
		PreparedStatement pstmt = con.prepareStatement(query);
		pstmt.setString(1,  email);
		ResultSet rs = pstmt.executeQuery();
		if(rs.next()){
			Creds.setUserid(rs.getInt(1));
		}
		}catch(Exception e){
			e.printStackTrace();
		}
	}
	
	boolean ValidateEmail(String e){
		String email = e;
		boolean flag = false;
		DBConnector d = new DBConnector();
		Connection con = d.connect();
		try{
			String query = "select * from userdetails where email=?";
			PreparedStatement pstmt2 = con.prepareStatement(query);
			pstmt2.setString(1, email);
			ResultSet rs = pstmt2.executeQuery();
			if(rs.next()){
				flag = true;
			}else{
				flag=false;
			}
			
		}catch(Exception ea){
			ea.printStackTrace();
		}
		return flag;
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
	
	
    public Register() {

    }


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String fname = request.getParameter("firstName");
		String lname = request.getParameter("lastName");
		String email = request.getParameter("email");
		String password = request.getParameter("password");
		String pwd = hashPwd(password);
		String gender = request.getParameter("dropdown");
		String religion = request.getParameter("religion");
		int age = Integer.parseInt(request.getParameter("age"));
		String lookingfor = request.getParameter("dropdown2");
		String community = request.getParameter("community");
		String contact = request.getParameter("contact");
		String aboutme = request.getParameter("aboutme");
		String location = request.getParameter("location");
		
		try{
			if(ValidateEmail(email)){
				response.sendRedirect("RegistrationIssueE.html");
			}else{
				System.out.println(fname+lname+email);
				Connection con = DBConnector.connect();
				try{
					String query = "insert into userdetails values(?,?,?,?,?,?,?,?,?,?,?,?,?)";
					PreparedStatement pstmt = con.prepareStatement(query);
					pstmt.setInt(1,  0);
					pstmt.setString(2, fname);
					pstmt.setString(3, lname);
					pstmt.setString(4, email);
					pstmt.setString(5, pwd);
					pstmt.setString(6, gender);
					pstmt.setString(7, religion);
					pstmt.setInt(8,  age);
					pstmt.setString(9, lookingfor);
					pstmt.setString(10, community);
					pstmt.setString(11, contact);
					pstmt.setString(12, aboutme);
					pstmt.setString(13, location);
					int i = pstmt.executeUpdate();
					if(i>0){
						System.out.println(" added successfully");
						Creds.setEmail(email);
						getUserIdFromDB(email);
						initiateQuestions();
						response.sendRedirect("Q1.html");
					}else{
						System.out.println("no rows added");
					}
				}catch(Exception e){
					e.printStackTrace();
				}
			}
		
		}catch(Exception e){
			System.out.println("ERROR WHILE CREATING USER");
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
