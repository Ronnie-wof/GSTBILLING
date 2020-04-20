package gstbilling.app;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;

@org.springframework.web.bind.annotation.RestController
public class RestController {

    @Autowired
    private ProductService productService;
    @GetMapping("/saveproduct")
    public String saveProduct(@RequestParam String productCode, @RequestParam String productName, @RequestParam double productPrice,
                              @RequestParam double productGST) {
        Product product=new Product(productCode,productName,productPrice,productGST);
        productService.saveProduct(product);

        return "Product saved";
    }
}