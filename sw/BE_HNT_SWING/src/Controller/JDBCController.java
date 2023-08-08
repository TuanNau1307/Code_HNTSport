/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Controller;
import java.sql.Connection;
import java.sql.DriverManager;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author Tuan Nau
 */
public class JDBCController {
    public static Connection getJDBCConnection(){
        String url ="jdbc:mysql://localhost:3306/hntsport";
        String user ="root";
        String password ="123456789";
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            return DriverManager.getConnection(url,user,password);
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(JDBCController.class.getName()).log(Level.SEVERE, null, ex);
        } catch (SQLException ex) {
            Logger.getLogger(JDBCController.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
        
    }
    public static void main(String[] args) {
        Connection conn = getJDBCConnection();
        if(conn !=null){
            System.out.println("Thanh cong");
        }else{
            System.out.println("That bai");
        }
        
    }
}
