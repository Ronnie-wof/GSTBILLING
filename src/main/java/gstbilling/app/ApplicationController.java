package gstbilling.app;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;
import sun.misc.Request;

import javax.servlet.http.HttpServletRequest;
import java.util.*;

@Controller

public class ApplicationController {
    ArrayList<Product> searchP=new ArrayList<Product>();
    @Autowired
    private ProductService productService;
    @Autowired
    private ProductService productService1;

   @RequestMapping("/")
   public String func2(HttpServletRequest request){

       request.setAttribute("products", productService.showAllProducts());
       return "product";
       }

    @RequestMapping(value="/product")
    public String showProductPage(ModelMap model,HttpServletRequest request){
        request.setAttribute("products", productService.showAllProducts());
        return "product";
    }
    @PostMapping("/save-product")
    public String showProduct(@ModelAttribute Product product, BindingResult bindingResult,HttpServletRequest request)
    {

        productService.saveProduct(product);
        request.setAttribute("products", productService.showAllProducts());

        return "product";
    }
    @RequestMapping(value="/billing")
    public String showBillingPage(ModelMap model){

        return "billing";
    }
    @PostMapping("/search-product")
    public String showBillingProduct(@ModelAttribute Product product,@RequestParam(value="productCode") String productCode,Model model,HttpServletRequest request)
    {

        try {
            String productName = productCode;
            System.out.println(productCode);
            Product products = productService.findByProductCodeOrProductname(productCode, productName);
            productService1.saveProduct1(products);
            request.setAttribute("products1", productService1.showAllProducts1(products));
        }
        catch(Exception e){
            String x="Please enter valid product code or name.";
            request.setAttribute("Message",x );
            request.setAttribute("products1", productService1.showAllProductsExp());
            return "billing";
        }
        return "billing";
    }

    @RequestMapping("/edit-product")
    public String editProduct(@RequestParam(value="productCode") String productCode,HttpServletRequest request) {

        Product p= productService.editProduct(productCode);
        request.setAttribute("product", p);
        //request.setAttribute("mode", "MODE_UPDATE");
        return "billingEdit";
    }





}
