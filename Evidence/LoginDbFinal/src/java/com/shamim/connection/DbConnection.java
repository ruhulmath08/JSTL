package com.shamim.connection;

import java.sql.Connection;
import java.sql.DriverManager;

public class DbConnection {
    public static Connection getConnection(){
        Connection con = null;       
        try {
            Class.forName("com.mysql.jdbc.Driver");
            con = DriverManager.getConnection("jdbc:mysql://localhost:3306/test", "root", "root");
        } catch (Exception e) {
            e.printStackTrace();
        }       
        return con;       
    }
    public static void main(String[] args) {
        getConnection();
        System.out.println("Success");
    }
}
