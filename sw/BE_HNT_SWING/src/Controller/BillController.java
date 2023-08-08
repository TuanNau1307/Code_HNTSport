/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Controller;

import Model.Bill;
import Model.Product;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

/**
 *
 * @author Tuan Nau
 */
public class BillController {
    public Connection conn = new JDBCController().getJDBCConnection();
    public ArrayList<Bill>getListBill(){
    ArrayList<Bill>list= new ArrayList<>();
    String select = "select * from bill where status =0";
        try {
            PreparedStatement ps = conn.prepareStatement(select);
            ResultSet rs =ps.executeQuery();
            while (rs.next()){
            Bill sp = new Bill();
            sp.setId(rs.getInt("id"));
            sp.setAmount(rs.getInt("amount"));
            sp.setCustomer(rs.getString("customer"));
            sp.setPhone(rs.getString("phone"));
            sp.setEmail(rs.getString("email"));
            sp.setAndress(rs.getString("andress"));
            sp.setStatus(rs.getString("status"));
            sp.setPayMethod(rs.getString("pay_method"));
            sp.setCreatedDate(rs.getDate("created_date"));
            
            
            list.add(sp);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return list;
    }
    public ArrayList<Bill>getListBillConfirm(){
    ArrayList<Bill>list= new ArrayList<>();
    String select = "select * from bill where status =1";
        try {
            PreparedStatement ps = conn.prepareStatement(select);
            ResultSet rs =ps.executeQuery();
            while (rs.next()){
            Bill sp = new Bill();
            sp.setId(rs.getInt("id"));
            sp.setAmount(rs.getInt("amount"));
            sp.setCustomer(rs.getString("customer"));
            sp.setPhone(rs.getString("phone"));
            sp.setEmail(rs.getString("email"));
            sp.setAndress(rs.getString("andress"));
            sp.setStatus(rs.getString("status"));
            sp.setPayMethod(rs.getString("pay_method"));
            sp.setCreatedDate(rs.getDate("created_date"));
            
            
            list.add(sp);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return list;
    }
    public ArrayList<Bill>getListBillShip(){
    ArrayList<Bill>list= new ArrayList<>();
    String select = "select * from bill where status =2";
        try {
            PreparedStatement ps = conn.prepareStatement(select);
            ResultSet rs =ps.executeQuery();
            while (rs.next()){
            Bill sp = new Bill();
            sp.setId(rs.getInt("id"));
            sp.setAmount(rs.getInt("amount"));
            sp.setCustomer(rs.getString("customer"));
            sp.setPhone(rs.getString("phone"));
            sp.setEmail(rs.getString("email"));
            sp.setAndress(rs.getString("andress"));
            sp.setStatus(rs.getString("status"));
            sp.setPayMethod(rs.getString("pay_method"));
            sp.setCreatedDate(rs.getDate("created_date"));
            
            
            list.add(sp);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return list;
    }
    public ArrayList<Bill>getListBillSuccess(){
    ArrayList<Bill>list= new ArrayList<>();
    String select = "select * from bill where status =3";
        try {
            PreparedStatement ps = conn.prepareStatement(select);
            ResultSet rs =ps.executeQuery();
            while (rs.next()){
            Bill sp = new Bill();
            sp.setId(rs.getInt("id"));
            sp.setAmount(rs.getInt("amount"));
            sp.setCustomer(rs.getString("customer"));
            sp.setPhone(rs.getString("phone"));
            sp.setEmail(rs.getString("email"));
            sp.setAndress(rs.getString("andress"));
            sp.setStatus(rs.getString("status"));
            sp.setPayMethod(rs.getString("pay_method"));
            sp.setCreatedDate(rs.getDate("created_date"));
            
            
            list.add(sp);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return list;
    }
    public boolean editBill(Bill r, String id) {
        try {
            //Can them Trigger--------------------------------------------
            String editR = "update bill set customer=?,phone=?,email=?,status=? where id =?;";
            PreparedStatement ps = conn.prepareStatement(editR);
            ps.setString(1, r.getCustomer());
            ps.setString(2, r.getPhone());
            ps.setString(3, r.getEmail());
            ps.setString(4, r.getStatus());
            ps.setString(5, id); // id can sua = id sua  
            return ps.executeUpdate() > 0;
        } catch (Exception e) {
            e.printStackTrace();
        }
        return true;
    }
    
    
}
