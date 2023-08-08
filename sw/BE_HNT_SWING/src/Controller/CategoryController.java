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
import Model.Category;
import Model.Product;
import java.math.BigDecimal;
import java.sql.Date;
import static java.util.Collections.list;

/**
 *
 * @author Tuan Nau
 */
public class CategoryController {
    public Connection conn = new JDBCController().getJDBCConnection();
    public ArrayList<Category>getListCategory(){
    ArrayList<Category>list= new ArrayList<>();
    String select = "select * from category";
        try {
            PreparedStatement ps = conn.prepareStatement(select);
            ResultSet rs =ps.executeQuery();
            while (rs.next()){
            Category sp = new Category();
            sp.setId(rs.getInt("id"));
            sp.setCategoryCode(rs.getString("category_code"));
            sp.setCategoryName(rs.getString("category_name"));
            list.add(sp);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return list;
    }
    public ArrayList<Category> getListSearchCategory(String tk) {
        ArrayList<Category> list_TK = new ArrayList<>();
        try {
            String TK = "select * from category where category_name like ?";
            PreparedStatement ps = conn.prepareStatement(TK);
            ps.setString(1, "%" + tk + "%");
            //ps.setString(2, "%" + tk + "%");
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                 Category sp = new Category();
                sp.setId(rs.getInt("id"));
                sp.setCategoryCode(rs.getString("category_code"));
                sp.setCategoryName(rs.getString("category_name"));
                list_TK.add(sp);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }

        return list_TK;
    }
    public boolean addCategory(Category r) {
        String insert = "insert into category(category_code,category_name) "
                + "values(?,?)";
        try {
            PreparedStatement ps = conn.prepareStatement(insert);
            ps.setString(1, r.getCategoryCode());
            ps.setString(2, r.getCategoryName());
            return ps.executeUpdate() > 0;
        } catch (Exception e) {
            e.printStackTrace();
        }
        return false;
    }
     public boolean editCategory(Category r, String id) {
        try {
            //Can them Trigger--------------------------------------------
            String editR = "update category set category_code=?,category_name=? where id =?;";
            PreparedStatement ps = conn.prepareStatement(editR);
            ps.setString(1, r.getCategoryCode());
            ps.setString(2, r.getCategoryName());
            ps.setString(3, id); // id can sua = id sua  
            return ps.executeUpdate() > 0;
        } catch (Exception e) {
            e.printStackTrace();
        }
        return true;
    }
     public boolean deleteCategory(String id) {
        try {
            String delete = "delete from category where (id =?)";
            PreparedStatement ps = conn.prepareStatement(delete);
            ps.setString(1, id);
            return ps.executeUpdate() > 0;
        } catch (Exception e) {
            e.printStackTrace();
        }
        return true;
    }
}
