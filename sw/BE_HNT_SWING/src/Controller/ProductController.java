/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Controller;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import Controller.JDBCController;
import Model.Product;
import java.math.BigDecimal;
import java.sql.Date;
import static java.util.Collections.list;

/**
 *
 * @author Tuan Nau
 */
public class ProductController {
    public Connection conn = new JDBCController().getJDBCConnection();
    public ArrayList<Product>getListProduct(){
    ArrayList<Product>list= new ArrayList<>();
    String select = "select * from products";
        try {
            PreparedStatement ps = conn.prepareStatement(select);
            ResultSet rs =ps.executeQuery();
            while (rs.next()){
            Product sp = new Product();
            sp.setId(rs.getInt("id"));
            sp.setBrand(rs.getString("brand"));
            sp.setDescription(rs.getString("description"));
            sp.setPrice(rs.getInt("price"));
            sp.setCategory(rs.getInt("category_id"));
            sp.setProductCode(rs.getString("product_code"));
            sp.setProductName(rs.getString("product_name"));
            sp.setImage(rs.getString("image"));
            sp.setStatus(rs.getInt("status"));
            list.add(sp);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return list;
    }
    public boolean addProduct(Product r) {
        String insert = "insert into products(brand,description,price,category_id,product_code,product_name,image,status) "
                + "values(?,?,?,?,?,?,?,?)";
        try {
            PreparedStatement ps = conn.prepareStatement(insert);
            ps.setString(1, r.getBrand());
            ps.setString(2, r.getDescription());
            ps.setInt(3, r.getPrice());
            ps.setInt(4, r.getCategory());
            ps.setString(5, r.getProductCode());
            ps.setString(6, r.getProductName());
            ps.setString(7, r.getImage());
            ps.setInt(8, r.getStatus());
            
            return ps.executeUpdate() > 0;
        } catch (Exception e) {
            e.printStackTrace();
        }
        return false;
    }
    public boolean editProduct(Product r, String id) {
        try {
            //Can them Trigger--------------------------------------------
            String editR = "update products set brand =?,description=?,price=?,category_id=?,product_code=?,product_name=?,image=?,status=? where id =?;";
            PreparedStatement ps = conn.prepareStatement(editR);
            ps.setString(1, r.getBrand());
            ps.setString(2, r.getDescription());
            ps.setInt(3, r.getPrice());
            ps.setInt(4, r.getCategory());
            ps.setString(5, r.getProductCode());
            ps.setString(6, r.getProductName());
            ps.setString(7, r.getImage());
            ps.setInt(8, r.getStatus());
            ps.setString(9, id); // id can sua = id sua  
            return ps.executeUpdate() > 0;
        } catch (Exception e) {
            e.printStackTrace();
        }
        return true;
    }
    public boolean deleteProduct(String id) {
        try {
            String delete = "delete from products where (id =?)";
            PreparedStatement ps = conn.prepareStatement(delete);
            ps.setString(1, id);
            return ps.executeUpdate() > 0;
        } catch (Exception e) {
            e.printStackTrace();
        }
        return true;
    }
    
    public ArrayList<Product> getListSearchProduct(String tk) {
        ArrayList<Product> list_TK = new ArrayList<>();
        try {
            String TK = "select * from products where product_name like ?";
            PreparedStatement ps = conn.prepareStatement(TK);
            ps.setString(1, "%" + tk + "%");
            //ps.setString(2, "%" + tk + "%");
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                Product sp = new Product();
                sp.setId(rs.getInt("id"));
                sp.setBrand(rs.getString("brand"));
                sp.setDescription(rs.getString("description"));
                sp.setPrice(rs.getInt("price"));
                sp.setCategory(rs.getInt("category_id"));
                sp.setProductCode(rs.getString("product_code"));
                sp.setProductName(rs.getString("product_name"));
                sp.setImage(rs.getString("image"));
                sp.setStatus(rs.getInt("status"));
                list_TK.add(sp);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }

        return list_TK;
    }
    
}
