package gstbilling.app;

import javax.persistence.*;
import java.util.List;

@Entity
@Table(name="producttable")
public class Product  {

    @Id
    @Column(name="productcode")
    private String productCode;
    @Column(name="productname")
    private String productName;
    @Column(name="productprice")
    private double productPrice;
    @Column(name="productgst")
    private double productGST;
    //@Transient
    //private double quantity;
    public Product() {

    }

    public Product(String productCode, String productName, double productPrice, double productGST) {
        super();
        this.productCode=productCode;
        this.productName=productName;
        this.productPrice=productPrice;
        this.productGST=productGST;
    }


    public String getProductCode() {
        return productCode;
    }
    public void setProductCode(String productCode) {
        this.productCode = productCode;
    }
    public String getProductName() {
        return productName;
    }



    public void setProductName(String productName) {
        this.productName = productName;
    }

    public double getProductPrice() {
        return productPrice;
    }

    public void setProductPrice(double productPrice) {
        this.productPrice = productPrice;
    }

    public double getProductGST() {
        return productGST;
    }

    public void setProductGST(double productGST) {
        this.productGST = productGST;
    }

    @Override
    public String toString() {
        return "Product[Product Code="+productCode+",Product Name="+productName+",Product Price="+productPrice+",Product GST="+productGST+"]";
    }

}
