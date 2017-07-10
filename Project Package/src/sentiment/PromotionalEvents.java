package sentiment;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.*;

public class PromotionalEvents {
	
	List<TimeLine> ls = new ArrayList<TimeLine>();
	
	public List selectEvents(String startMonth, String midMonth, String endMonth)
	{

	
		final String JDBC_DRIVER = "com.mysql.jdbc.Driver";  
	    final String DB_URL = "jdbc:mysql://localhost:3306/MastersProject";
	    
		 //  Database credentials
	     final String USER = "root";
	     final String PASS = "root";
		
		 Connection conn = null;
		 Statement stmt = null;
		 
		  
		try{
		     //STEP 2: Register JDBC driver
		     Class.forName("com.mysql.jdbc.Driver");

		     //STEP 3: Open a connection
		     //System.out.println("Connecting to database...");
		     conn = DriverManager.getConnection(DB_URL,USER,PASS);

		     //STEP 4: Execute a query
		     //System.out.println("Creating statement...");
		     stmt = conn.createStatement();
		     String sql;
		  
		     sql = "select month, event, most_positive_tweet from promotionalevents where number_positive_tweets in ( select max(number_positive_tweets) from promotionalevents where month in (\"" + startMonth + "\",\"" + midMonth + "\",\"" + endMonth + "\") group by month)";
		     
		     //System.out.println("Executing : "+ sql);
		     ResultSet rs = stmt.executeQuery(sql);

		     //STEP 5: Extract data from result set
		     
		     
		     while(rs.next())
		     {
		    	 
		    	 TimeLine timeline = new TimeLine();
		    	 
		    	 timeline.setMonth(rs.getString("month"));
		    	 timeline.setEvent(rs.getString("event"));
		    	 timeline.setMostPositiveTweet(rs.getString("most_positive_tweet"));
		    	 
		    	 
		    	 ls.add(timeline);
		    	 
		     }
		     
	   	 	     
		     //STEP 6: Clean-up environment
		     rs.close();
		     stmt.close();
		     conn.close();
		     
		  }catch(SQLException se){
		     //Handle errors for JDBC
		     se.printStackTrace();
		  }catch(Exception e){
		     //Handle errors for Class.forName
		     e.printStackTrace();
		  }finally{
		     //finally block used to close resources
		     try{
		        if(stmt!=null)
		           stmt.close();
		     }catch(SQLException se2){
		     }// nothing we can do
		     try{
		        if(conn!=null)
		           conn.close();
		     }catch(SQLException se){
		        se.printStackTrace();
		     }//end finally try
		  }//end try
		
		//System.out.println("Goodbye!");
		
		return ls;
		
	}

}
