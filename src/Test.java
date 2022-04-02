import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import Credentials.Creds;
public class Test {
	public static void main(String[] args) {
		Connection con = DBConnector.connect();
		float openstart = Creds.getOpen() - 0.2f;
		float openclose = Creds.getOpen() + 0.2f;
		float consstart = Creds.getOpen() - 0.2f;
		float consclose = Creds.getOpen() + 0.2f;
		float extrostart = Creds.getOpen() - 0.2f;
		float extroclose = Creds.getOpen() + 0.2f;
		float agrstart = Creds.getOpen() - 0.2f;
		float agrclose = Creds.getOpen() + 0.2f;
		float neurostart = Creds.getOpen() - 0.2f;
		float neuroclose = Creds.getOpen() + 0.2f;
		String query = "SELECT * FROM `oceanscores` where openness BETWEEN ? and ? and conscientiousness BETWEEN ? and ? and extroversion BETWEEN ? and ? and agreeableness BETWEEN ? and ? and neuroticism BETWEEN ? and ?";
		try{
		PreparedStatement pstmt = con.prepareStatement(query);
		pstmt.setFloat(1, openstart);
		pstmt.setFloat(2, openclose);
		pstmt.setFloat(3, consstart);
		pstmt.setFloat(4, consclose);
		pstmt.setFloat(5, extrostart);
		pstmt.setFloat(6, extroclose);
		pstmt.setFloat(7, agrstart);
		pstmt.setFloat(8, agrclose);
		pstmt.setFloat(9, neurostart);
		pstmt.setFloat(10, neuroclose);
		ResultSet rs = pstmt.executeQuery();
		while(rs.next()){
			System.out.println(rs.getString(3));
		}
		}catch(Exception e){
			e.printStackTrace();
		}
	}

}
