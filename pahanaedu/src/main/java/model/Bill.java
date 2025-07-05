package model;

import java.sql.Timestamp;
import java.util.List;

public class Bill {
    private int id;
    private String accountNumber;
    private double totalAmount;
    private Timestamp billingTime;
    private List<billingItem> items;

    // Getters and setters
    public int getId() { return id; }
    public void setId(int id) { this.id = id; }

    public String getAccountNumber() { return accountNumber; }
    public void setAccountNumber(String accountNumber) { this.accountNumber = accountNumber; }

    public double getTotalAmount() { return totalAmount; }
    public void setTotalAmount(double totalAmount) { this.totalAmount = totalAmount; }

    public Timestamp getBillingTime() { return billingTime; }
    public void setBillingTime(Timestamp billingTime) { this.billingTime = billingTime; }

    public List<billingItem> getItems() { return items; }
    public void setItems(List<billingItem> items) { this.items = items; }
}
