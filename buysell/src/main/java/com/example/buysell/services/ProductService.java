package com.example.buysell.services;

import com.example.buysell.models.Image;
import com.example.buysell.models.Product;
import com.example.buysell.repositories.ProductRepository;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

@Service
@RequiredArgsConstructor
@Slf4j
public class ProductService {
    private final ProductRepository productRepository;
    private List<Product> products = new ArrayList<>();
    private long ID = 0;

//    {
//        products.add(new Product(++ID, "PlayStation 5", "Simple description", 67000, "Kremenets", "Liosha"));
//        products.add(new Product(++ID, "Iphone 8", "Simple description", 24000, "Ternopil", "Burlia"));
//    }

    public List<Product> listProducts(String title) {
        List<Product> products = productRepository.findAll();
        if(title != null){
           return products = productRepository.findByTitle(title);
        }
        else{
            products = productRepository.findAll();
        }
        return products; }

    public void saveProduct(Product product, MultipartFile file1, MultipartFile file2, MultipartFile file3) throws IOException {
        //product.setId(++ID);
        Image image1;
        Image image2;
        Image image3;
        if (file1.getSize() != 0) {
            image1 = toImageEntity(file1);
            image1.setPreviewImage(true);
            product.addImageToProduct(image1);
        }
        if (file2.getSize() != 0) {
            image2 = toImageEntity(file2);
            product.addImageToProduct(image2);
        }
        if (file3.getSize() != 0) {
            image3 = toImageEntity(file3);
            product.addImageToProduct(image3);
        }
        log.info("Saving new Product. Title: {}; Author: {}", product.getTitle(), product.getAuthor());
        Product productFromDb = productRepository.save(product);
        productFromDb.setPreviewImageId(productFromDb.getImages().get(0).getId());
        productRepository.save(product);


        //log.info("Saving product{}",product);
        //productRepository.save(product);
        //products.add(product);
    }

    private Image toImageEntity(MultipartFile file) throws IOException {
        Image image = new Image();
        image.setName(file.getName());
        image.setOriginalFileName(file.getOriginalFilename());
        image.setContentType(file.getContentType());
        image.setSize(file.getSize());
        image.setBytes(file.getBytes());
        return image;
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