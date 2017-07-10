package sentiment;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.sql.Statement;

public class ProductInformation
{


	public int saveProductInfo(String productDomain, String productName, String productDescription, String companyName, String city, String state, String address, String zipcode, String phoneNumber, String email, String websiteAddress)
	{
		
		int rs = 0;
		
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
		     sql = "insert into productinformation(product_domain, product_name, product_description, company_name, city, state, address, zipcode, phone_number, email, website) values (\"" + productDomain + "\",\"" + productName +"\",\"" + productDescription + "\",\"" + companyName + "\", \"" + city + "\", \"" + state + "\", \"" + address + "\", \"" + zipcode + "\", \"" + phoneNumber + "\", \"" + email + "\", \"" + websiteAddress + "\")";
		     //System.out.println("Executing : "+ sql);
		      rs = stmt.executeUpdate(sql);
		     
			 //System.out.println(rs);
             //System.out.println("Varun");
		     //STEP 5: Extract data from result set
		   /*  while(rs.next()){
		        //Retrieve by column name
		        int id  = rs.getInt("id");
		        int age = rs.getInt("age");
		        String first = rs.getString("first");
		        String last = rs.getString("last");

		        //Display values
		        System.out.print("ID: " + id);
		        System.out.print(", Age: " + age);
		        System.out.print(", First: " + first);
		        System.out.println(", Last: " + last);
		     } */
		     //STEP 6: Clean-up environment
		     //rs.close();
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
		
		return rs;

		
	}

	
}