package com.example.task;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class authendication {
    static Connection conn;
    static PreparedStatement pst;

    public static int login(hotelBean u) {
        int status=0;
        try {
            conn = ConnectionProvider.getCon();
            pst = conn.prepareStatement("Select username,userpass from hotel where username=? and userpass=?");
            pst.setString(1, u.getUsername());
            pst.setString(2, u.getUserpass());
            ResultSet rs = pst.executeQuery();
            if (rs.next())
                status=1;
        } catch(Exception ex){
            System.out.println(ex);
        }
        return status;
    }
    public static int signup(hotelBean u){
        int status=0;
        try{
            conn=ConnectionProvider.getCon();
            pst=conn.prepareStatement("insert into guest values(?,?,?,?,?,?)");
            pst.setString(1,u.getGuestname());
            pst.setString(2, u.getGuestid());
            pst.setString(3, u.getEmail());
            pst.setInt(4, u.getContactno());
            pst.setString(5, u.getAddress());
            pst.setString(6,u.getGuestpass());
            status=pst.executeUpdate();
            conn.close();
        }catch(Exception ex){
            System.out.println(ex);
        }
        return status;
    }
    public static int guestlogin(hotelBean u) {
        int status=0;
        try {
            conn = ConnectionProvider.getCon();
            pst = conn.prepareStatement("Select guestid,guestpass from guest where guestid=? and guestpass=?");
            pst.setString(1, u.getGuestid());
            pst.setString(2, u.getGuestpass());
            ResultSet rs = pst.executeQuery();
            if (rs.next())
                status=1;
        } catch(Exception ex){
            System.out.println(ex);
        }
        return status;
    }
}