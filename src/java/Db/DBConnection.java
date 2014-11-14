package Db;


import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author aswin
 */
public class DBConnection {
    private String user_name = "root";
    private String password = "aswin005";
    private String connectionURL = "jdbc:mysql://localhost:3306/mducorp";
    public Connection con;
    public DBConnection() {
        try {
            Class.forName("com.mysql.jdbc.Driver");
            con = DriverManager.getConnection(connectionURL, user_name, password); 
        } catch (Exception ex) {
            Logger.getLogger(DBConnection.class.getName()).log(Level.SEVERE, null, ex);
        }
	
    }
    public void closeConnection() throws SQLException{
        con.close();
    }
    
}
