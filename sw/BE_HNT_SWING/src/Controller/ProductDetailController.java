/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Controller;

import Model.Product;
import Model.ProductDetail;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

/**
 *
 * @author Tuan Nau
 */
public class ProductDetailController {
    public Connection conn = new JDBCController().getJDBCConnection();
    public ArrayList<ProductDetail>getListProductDetail(){
    ArrayList<ProductDetail>list= new ArrayList<>();
    String select = "select * from product_details";
        try {
            PreparedStatement ps = conn.prepareStatement(select);
            ResultSet rs =ps.executeQuery();
            while (rs.next()){
            ProductDetail sp = new ProductDetail();
            sp.setId(rs.getInt("id"));
            sp.setImage(rs.getString("image"));
            sp.setQuantify(rs.getInt("quantify"));
            sp.setSize(rs.getString("size"));
            sp.setProduct(rs.getInt("product_code"));
            list.add(sp);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return list;
    }
    public ArrayList<ProductDetail> getListSearchProduct(String tk) {
        ArrayList<ProductDetail> list_TK = new ArrayList<>();
        try {
            String TK = "select * from product_details where product_code = ?";
            PreparedStatement ps = conn.prepareStatement(TK);
            ps.setString(1, tk);
            //ps.setString(2, "%" + tk + "%");
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                ProductDetail sp = new ProductDetail();
            sp.setId(rs.getInt("id"));
            sp.setImage(rs.getString("image"));
            sp.setQuantify(rs.getInt("quantify"));
            sp.setSize(rs.getString("size"));
            sp.setProduct(rs.getInt("product_code"));
                list_TK.add(sp);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }

        return list_TK;
    }
    public boolean addProductDetail(ProductDetail r) {
        String insert = "insert into product_details(image,quantify,size,product_code) "
                + "values(?,?,?,?)";
        try {
            PreparedStatement ps = conn.prepareStatement(insert);
            ps.setString(1, r.getImage());
            ps.setInt(2, r.getQuantify());
            ps.setString(3, r.getSize());
            ps.setInt(4, r.getProduct());
            
            return ps.executeUpdate() > 0;
        } catch (Exception e) {
            e.printStackTrace();
        }
        return false;
    }
    public boolean editProductDetail(ProductDetail r, String id) {
        try {
            //Can them Trigger--------------------------------------------
            String editR = "update product_details set image=?,quantify=?,size=?,product_code=? where id =?;";
            PreparedStatement ps = conn.prepareStatement(editR);
            ps.setString(1, r.getImage());
            ps.setInt(2, r.getQuantify());
            ps.setString(3, r.getSize());
            ps.setInt(4, r.getProduct());
            ps.setString(5, id); // id can sua = id sua  
            return ps.executeUpdate() > 0;
        } catch (Exception e) {
            e.printStackTrace();
        }
        return true;
    }
    public boolean deleteProductDetail(String id) {
        try {
            String delete = "delete from product_details where (id =?)";
            PreparedStatement ps = conn.prepareStatement(delete);
            ps.setString(1, id);
            return ps.executeUpdate() > 0;
        } catch (Exception e) {
            e.printStackTrace();
        }
        return true;
    }
    
}
