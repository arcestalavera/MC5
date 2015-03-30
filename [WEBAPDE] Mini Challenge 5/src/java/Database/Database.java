/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Database;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

/**
 *
 * @author Arces
 */
public class Database {

    private Connection con;
    private String sql;
    private Statement stmt;
    private ResultSet rs;
    private static Database databaseInstance = new Database();

    private Database() {
        try {
            Class.forName("com.mysql.jdbc.Driver").newInstance();
            String host = "jdbc:mysql://127.0.0.1:3306/minichallenge5?user=root";
            String uUser = "root";
            String uPass = "admin";

            con = DriverManager.getConnection(host, uUser, uPass);
            stmt = con.createStatement();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public static Database getInstance() {
        return databaseInstance;
    }

    public void addUser(String username, String password) {
        int maxUser = 1;

        sql = "SELECT MAX(userID) FROM user";

        try {
            rs = stmt.executeQuery(sql);

            if (rs.next()) {
                maxUser = rs.getInt("MAX(userID)") + 1;
            }

            sql = "INSERT INTO user"
                    + " VALUES(" + maxUser + ", '" + username + "', '" + password + "')";

            stmt.executeUpdate(sql);
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    public boolean validateUsername(String username) {
        boolean isFound = false;

        sql = "SELECT username FROM user"
                + " WHERE username = '" + username + "'";

        try {
            rs = stmt.executeQuery(sql);
            if (rs.next()) {
                isFound = true;
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return isFound;
    }

    public void addPicture(String username, String path, String caption) {
        int userID = 1;
        int photoID = 1;

        sql = "SELECT userID from user where username = " + username;
        try {
            rs = stmt.executeQuery(sql);
            if (rs.next()) {
                userID = rs.getInt("userID");
            }

            sql = "SELECT MAX(photoID) FROM photo";
            rs = stmt.executeQuery(sql);

            if (rs.next()) {
                photoID = rs.getInt("MAX(photoID)") + 1;
            }

            sql = "INSERT INTO photo"
                    + " VALUES(" + photoID + ", " + userID + ", '" + path + "', '" + caption + "');";

            stmt.executeUpdate(sql);

        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
}
