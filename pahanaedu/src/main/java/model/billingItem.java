package model;

public class billingItem {


	    private int bookId;
	    private int quantity;
	    private double unitPrice;
	    private double total;

	    public billingItem(int bookId, int quantity, double unitPrice, double total) {
	        this.bookId = bookId;
	        this.quantity = quantity;
	        this.unitPrice = unitPrice;
	        this.total = total;
	    }

	    // Getters and Setters
	    public int getBookId() { return bookId; }
	    public void setBookId(int bookId) { this.bookId = bookId; }

	    public int getQuantity() { return quantity; }
	    public void setQuantity(int quantity) { this.quantity = quantity; }

	    public double getUnitPrice() { return unitPrice; }
	    public void setUnitPrice(double unitPrice) { this.unitPrice = unitPrice; }

	    public double getTotal() { return total; }
	    public void setTotal(double total) { this.total = total; }
	}



