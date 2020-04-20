package gstbilling.app;

import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Service;

import javax.transaction.Transactional;
import java.util.ArrayList;
import java.util.List;
import java.util.Optional;

@Service
@Transactional
public class ProductService {

    ArrayList<Product> al=new ArrayList<Product>();
    private final ProductRepository productRepository;
    private final ProductRepository productRepository1;
    private final ProdRepository prodRepository;

    public ProductService(ProductRepository productRepository,ProductRepository productRepository1,ProdRepository prodRepository) {
        this.productRepository=productRepository;
        this.productRepository1=productRepository1;
        this.prodRepository=prodRepository;
    }

    public void saveProduct(Product product)
    {
        productRepository.save(product);
    }

    public void saveProduct1(Product product)
    {
        //productRepository1.save(product);
        Product product1=productRepository1.save(product);

    }

    public List<Product> showAllProducts(){
        List<Product> products = new ArrayList<Product>();
        for(Product product : productRepository.findAll()) {
            products.add(product);
        }

        return products;
    }


    public Product findByProductCodeOrProductname(String detail1,String detail2){
        Product products =productRepository.findByProductCodeOrProductname(detail1,detail2);

        return products;
    }

    /*public List<Product> showAllProducts1(){
        List<Product> products1 = new ArrayList<Product>();
        for(Product product : productRepository1.findAll()) {
            products1.add(product);

        }

        return products1;
    }*/
     public List<Product> showAllProducts1(Product product){


         boolean flag=false;



         for (Product pc : al) {
             if (product.getProductCode().equals(pc.getProductCode()) || product.getProductName().equals(pc.getProductName()))
                     flag = true;


         }
            if(al.isEmpty())
                al.add(product);
             else if(flag==false && al.size()>1)
                 al.add(product);
             else if(flag==false && (!al.isEmpty()))
                    al.add(product);

         return al;
    }
    public List<Product> showAllProductsExp(){
         return al;
    }

    public Product editProduct(String productCode) {
        return prodRepository.findByProductID(productCode);
    }





}


