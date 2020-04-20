package gstbilling.app;

import org.springframework.data.repository.query.Param;
import gstbilling.app.Product;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;

public interface ProductRepository extends JpaRepository<Product,String> {




    @Query("select p from Product p where p.productCode=:productCode or p.productName=:productName")
    Product findByProductCodeOrProductname(@Param("productCode") String productCode,@Param("productName") String productName);





}
/*public interface ProductRepository extends JpaRepository<Product, Integer> {

    @Query(value = "SELECT * FROM USERS WHERE EMAIL_ADDRESS = ?1", nativeQuery = true)
    Product findByEmailAddress(String emailAddress);
}*/
