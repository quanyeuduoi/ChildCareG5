/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package context;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

/**
 *
 * @author admin
 */
public class DBContext {
    public Connection getConnection() throws Exception {
        String url = "jdbc:sqlserver://" + serverName + ":" + portNumber + "\\" + instance + ";databaseName=" + dbName;
        if (instance == null || instance.trim().isEmpty()) {
            url = "jdbc:sqlserver://" + serverName + ":" + portNumber + ";databaseName=" + dbName;
        }
        Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
        return DriverManager.getConnection(url, userID, password);
    }

    private final String serverName = "localhost";
    private final String dbName = "ChildCare";
    private final String portNumber = "1433";
    private final String instance = "";
    private final String userID = "sa";
    private final String password = "123";
   
    public static void main(String[] args) {
        DBContext context = new DBContext();
        
        try {
            Connection connection = context.getConnection();
            if (connection != null) {
                System.out.println("Connected to the database successfully!");
                connection.close();
            } else {
                System.out.println("Failed to connect to the database!");
            }
        } catch (SQLException | ClassNotFoundException ex) {
            System.err.println("Error: " + ex.getMessage());
        } catch (Exception ex) {
            System.err.println("Unexpected error: " + ex.getMessage());
        }
    }
}
