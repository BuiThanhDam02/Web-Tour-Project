package vn.edu.hcmuaf.fit.bean;

import java.io.Serializable;
import java.util.Collection;
import java.util.HashMap;

public class Cart implements Serializable {

    HashMap<String, Product> listProduct;
    User customer;
    long totalMoney;
    int quantity;

    public Cart(){
        listProduct = new HashMap<>();
        customer = new User();
        totalMoney = 0;
        quantity = 0;
    }

    public Cart(HashMap<String, Product> listProduct, User customer, long totalMoney, int quantity) {
        this.listProduct = new Hashmap<>();
        this.customer = customer;
        this.totalMoney = totalMoney;
        this.quantity = quantity;
    }

    public long getTotalMoney(){
        return totalMoney;
    }

    public int getQuantity(){
        return quantity;
    }

    public void setQuantity(){
        if(quantity < 1) quantity=1;
        this.quantity =quantity;

    }

    public Collection<Product> getlistProducts(){
        return  listProduct.values();
    }

    public User getCustomer(){
        return customer;
    }

    public void setCustomer(User customer){
        this.customer = customer;
    }

    public void put(Product product){
        String key = product.setKey();
        if(listProduct.containsKey(key)){
            Product p = listProduct.get(key);
            p.setQuantity(p.getQuantity() = 1);
        }else{
            listProduct.put(key, product);
        }
        updateTotalMoneyAndQuantity();
    }

    public void update(String key, int quantity){
        if(listProduct.containsKey(key)){
            Product p = listProduct.get(key);
            p.setQuantity(quantity);
        }
        updateTotalMoneyAndQuantity();
    }

    public void remove(String key){
        listProduct.remove(key);
    }

    public void updateTotalMoneyAndQuantity(){
        totalMoney = 0;
        quantiy = 0;
        for(Product p : listProduct.values()){
            totalMoney += (long) p.getQuantity()*p.getSellPrice;
            quantity += p.getQuantity;
        }
    }
}

