package com.azureshop.api.controller;

import com.azureshop.api.model.Product;
import com.azureshop.api.service.ProductService;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RestController
public class ProductController {

    private final ProductService productService;

    public ProductController(ProductService productService) {
        this.productService = productService;
    }

    @GetMapping("/api/products")
    public List<Product> getAllProducts() {
        return productService.getAllProducts();
    }

    @GetMapping("/api/products/{id}")
    public Product getProductById(@PathVariable Long id) {
        return productService.getProductById(id);
    }
}