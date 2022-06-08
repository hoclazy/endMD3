package service;

import model.Product;

import java.util.List;

public interface ProductService<T> {
    public void add(Product product);
    public List<T> findAll();

    public List<T> findByName(String findName);

    public List<T> findByPrice(int price);
}
