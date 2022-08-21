package service;

import model.Product;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

public class ProductServiceImpl implements ProductService {
    private static Map<Integer, Product> products;

    public ProductServiceImpl() {
        products.put(1,new Product(1, "Iphone 11", 500, "https://media.techz.vn/media2019/upload2019/2022/03/16/iphone-11-gia-t3_16032022120956.jpg"));
        products.put(2,new Product(2, "Iphone 11 ProMax", 600, "https://cdn1.viettelstore.vn/images/Product/ProductImage/medium/747846607.jpeg"));
        products.put(3,new Product(3, "Iphone 12", 650, "https://cdn1.viettelstore.vn/images/Product/ProductImage/medium/iPhone-12-Mini-Red-1.jpg"));
        products.put(4,new Product(4, "Iphone 12 ProMax", 700, "http://p-vn.ipricegroup.com/uploaded_83429c24e6175692249b6a9dbb2d9ba2.jpg"));
    }


    @Override
    public List<Product> findAll() {
        return new ArrayList<>(products.values());
    }

    @Override
    public void save(Product product) {
        products.put(product.getId(), product);
    }

    @Override
    public Product findById(int id) {
        return products.get(id);
    }

    @Override
    public void update(int id, Product product) {
        products.put(id, product);
    }

    @Override
    public void remove(int id) {
        products.remove(id);
    }
}
