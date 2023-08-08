/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Controller;

import Model.Bill;
import Model.BillDetail;
import Model.Product;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

/**
 *
 * @author Tuan Nau
 */
public class BillDetailController {
     public Connection conn = new JDBCController().getJDBCConnection();
    public ArrayList<BillDetail> getDeatail(int tk) {
        ArrayList<BillDetail> list_TK = new ArrayList<>();
        try {
            String TK = "select c.brand,c.description,c.product_name,b.size,a.quantify,c.price from bill_detail a,product_details b,products c where a.product_detail_id = b.id and b.product_code =c.id and a.billid =?";
            PreparedStatement ps = conn.prepareStatement(TK);
            ps.setInt(1, tk );
            //ps.setString(2, "%" + tk + "%");
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                BillDetail sp = new BillDetail();
                //sp.setId(rs.getInt("id"));
                //sp.setBillID(rs.getInt("billid"));
                //sp.setProduct(rs.getInt("product"));
                sp.setQuantity(rs.getInt("quantify"));
                sp.setBrand(rs.getString("brand"));
                sp.setDescription(rs.getString("description"));
                sp.setName(rs.getString("product_name"));
                sp.setSize(rs.getString("size"));
                sp.setPrice(rs.getInt("price"));
                list_TK.add(sp);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }

        return list_TK;
    }
    
    
}
