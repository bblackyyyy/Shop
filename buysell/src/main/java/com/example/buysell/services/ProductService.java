package com.example.buysell.services;

import com.example.buysell.models.Product;
import com.example.buysell.repositories.ProductRepository;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;

@Service
@RequiredArgsConstructor
@Slf4j
public class ProductService {
    private final ProductRepository productRepository;
    private List<Product> products = new ArrayList<>();
    private long ID = 0;

    {
        products.add(new Product(++ID, "PlayStation 5", "Simple description", 67000, "Kremenets", "Liosha"));
        products.add(new Product(++ID, "Iphone 8", "Simple description", 24000, "Ternopil", "Burlia"));
    }

    public List<Product> listProducts(String title) {
        List<Product> products = productRepository.findAll();
        if(title != null){
           return products = productRepository.findByTitle(title);
        }
        else{
            products = productRepository.findAll();
        }
        return products; }

    public void saveProduct(Product product) {
        //product.setId(++ID);
        log.info("Saving product{}",product);
        productRepository.save(product);
        //products.add(product);
    }

    public void deleteProduct(Long id) {
        //products.removeIf(product -> product.getId().equals(id));
        productRepository.deleteById(id);
    }

    public Product getProductById(Long id) {
//        for (Product product : products) {
//            if (product.getId().equals(id)) return product;
//        }
//        return null;
        return productRepository.findById(id).orElse(null);
    }




}