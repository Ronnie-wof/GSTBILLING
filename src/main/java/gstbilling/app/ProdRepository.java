package gstbilling.app;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;

public interface ProdRepository extends CrudRepository<Product, String> {


    @Query("select p from Product p where p.productCode=:productCode")
    Product findByProductID(String productCode);
}