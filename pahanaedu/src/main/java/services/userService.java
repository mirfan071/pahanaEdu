package services;


import java.security.MessageDigest;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.Statement;

import controler.DBConnect;

import model.user;

public class userService {
	
public void regUser(user User){
	

	   Connection conn = null;
       PreparedStatement ps = null;

       try {
           // Hash the password
           String hashedPassword = hashPassword(User.getPassword());

           // Connect to the database
           conn = DBConnect.getConnection();

           // Use PreparedStatement (NO CASTING)
           String sql = "INSERT INTO users (fullname, username, email, password, role) VALUES (?, ?, ?, ?, ?)";
           ps = conn.prepareStatement(sql);
           ps.setString(1, User.getFullname());
           ps.setString(2, User.getUsername());
           ps.setString(3, User.getEmail());
           ps.setString(4, hashedPassword);
           ps.setString(5, User.getRole());

           int rowsInserted = ps.executeUpdate();
           System.out.println("Rows inserted: " + rowsInserted);

       } catch (Exception e) {
           e.printStackTrace();
       } finally {
           try {
               if (ps != null) ps.close();
               if (conn != null) conn.close();
           } catch (Exception e) {
               e.printStackTrace();
           }
       }
   }

   // SHA-256 password hashing
   private String hashPassword(String password) throws Exception {
       MessageDigest md = MessageDigest.getInstance("SHA-256");
       byte[] hash = md.digest(password.getBytes("UTF-8"));

       StringBuilder hex = new StringBuilder();
       for (byte b : hash) {
           String hexChar = Integer.toHexString(0xff & b);
           if (hexChar.length() == 1) hex.append('0');
           hex.append(hexChar);
       }
       return hex.toString();
   }
 }


//// PW hashing
//		private String hashPassword(String password) throws Exception {
//			
//		 MessageDigest md = MessageDigest.getInstance("SHA-256");
//		 byte[] hash = md.digest(password.getBytes("UTF-8"));
//		
//		 StringBuilder hex = new StringBuilder();
//		 for (byte b : hash) {
//		     String hexChar = Integer.toHexString(0xff & b);
//		     if (hexChar.length() == 1) hex.append('0');
//		     hex.append(hexChar);
//		 }
//		 return hex.toString();
//		}

