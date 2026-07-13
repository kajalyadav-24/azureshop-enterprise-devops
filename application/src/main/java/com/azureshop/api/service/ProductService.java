package com.azureshop.api.service;

import com.azureshop.api.model.Product;
import com.azureshop.api.exception.ProductNotFoundException;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class ProductService {

    public List<Product> getAllProducts() {

        return List.of(

                new Product(
                        1L,
                        "Dell Inspiron 15",
                        "Laptop",
                        65999.0,
                        15
                ),

                new Product(
                        2L,
                        "Sony WH-1000XM5",
                        "Headphones",
                        24999.0,
                        25
                ),

                new Product(
                        3L,
                        "Samsung Galaxy S25",
                        "Mobile",
                        79999.0,
                        10
                )
        );
    }

    public Product getProductById(Long id) {

        return getAllProducts()
                .stream()
                .filter(product -> product.getId().equals(id))
                .findFirst()
                .orElseThrow(() -> new ProductNotFoundException(id));

    }
}