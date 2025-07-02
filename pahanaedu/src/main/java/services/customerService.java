package services;
import java.security.MessageDigest;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import controler.DBConnect;
import model.customer;

public class customerService {
	
	public String generateNextAccountNumber() {
		
		
	       
	    String prefix = "5501";
	    String nextAccount = prefix + "0001"; // default if no customer exists

	    try (Connection conn = DBConnect.getConnection();
	         PreparedStatement ps = conn.prepareStatement(
	        		 
	             "SELECT account_number FROM customers WHERE account_number LIKE '5501%' ORDER BY account_number DESC LIMIT 1");
	    		
	         ResultSet rs = ps.executeQuery()) {

	        if (rs.next()) {
	            String lastAccount = rs.getString("account_number"); // e.g. 55010023
	            int lastNum = Integer.parseInt(lastAccount.substring(4));
	            int newNum = lastNum + 1;
	            nextAccount = prefix + String.format("%04d", newNum); // e.g. 55010024
	        }

	    } catch (Exception e) {
	        e.printStackTrace();
	    }

	    return nextAccount;
	}

	public boolean addCustomer(customer c) {
	    try (Connection conn = DBConnect.getConnection();
	         PreparedStatement ps = conn.prepareStatement(
	             "INSERT INTO customers (account_number, name, address, telephone, email) VALUES (?, ?, ?, ?, ?)")) {

	        ps.setString(1, c.getAccountNumber());
	        ps.setString(2, c.getName());
	        ps.setString(3, c.getAddress());
	        ps.setString(4, c.getTelephone());
	        ps.setString(5, c.getEmail());

	        int rows = ps.executeUpdate();
	        return rows > 0;

	    } catch (Exception e) {
	        e.printStackTrace();
	        return false;
	    }
	}


}
