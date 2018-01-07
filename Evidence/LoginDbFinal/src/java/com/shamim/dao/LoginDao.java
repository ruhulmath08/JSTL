package com.shamim.dao;

import com.shamim.bean.LoginBean;
import com.shamim.connection.DbConnection;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class LoginDao {
    public static boolean validate(LoginBean b){
        boolean status = false;
        String sql = "select * from user2 where email = ? and pass = ?";
        try {
            Connection con = DbConnection.getConnection();
            PreparedStatement ps = con.prepareStatement(sql);
            ps.setString(1, b.getEmail());
            ps.setString(2, b.getPass());
            ResultSet rs = ps.executeQuery();
            status = rs.next();
        } catch (Exception e) {
            e.printStackTrace();
        }       
        return status;
    }
}
