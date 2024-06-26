package model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;

public class MyCon {

    private static Connection connection;
    
    static {
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/cms", "root", "12345");
        } catch (Exception e) {
            
        }
    }

    public static ResultSet execute(String query) {
        try {
            Statement statement = connection.createStatement();

            if (query.startsWith("SELECT")) {
                ResultSet resultSet = statement.executeQuery(query);
                return resultSet;
            } else {
                int  result= statement.executeUpdate(query);
                return null;
            }
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }
}
