package services;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.sql.Timestamp;
import java.sql.Statement;

import java.sql.PreparedStatement;

import controler.DBConnect;
import model.Bill;
import model.billingItem;

public class billService {

	
	public int saveBill(String customerAccNum, double total, Timestamp dateTime, List<billingItem> items) throws SQLException {
		return 0;
	}
}

