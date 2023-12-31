package JDBC;

import java.sql.*;

public class FirstConnect {
    public static void main(String[] args) throws SQLException {

        String dbUrl ="jdbc:oracle:thin:@54.144.137.19:1521:XE";
        String dbUsername ="hr";
        String dbPassword ="hr";

        Connection conn = DriverManager.getConnection(dbUrl,dbUsername,dbPassword);
        Statement stmt = conn.createStatement(ResultSet.TYPE_SCROLL_INSENSITIVE,ResultSet.CONCUR_READ_ONLY);
        ResultSet rs = stmt.executeQuery("select * from employees");

        rs.next();  // first row
        System.out.println(rs.getString(2));
        System.out.println(rs.getString("LAST_NAME"));
        System.out.println(rs.getInt(1));

        rs.next(); // second row
        System.out.println(rs.getString(2));
        System.out.println(rs.getString("LAST_NAME"));
        System.out.println(rs.getInt(1));

        while (rs.next()){ // start from 3rd row
            System.out.println(rs.getString(2));
            System.out.println(rs.getString("LAST_NAME"));
            System.out.println(rs.getInt(1));
        }

        rs.first();
        System.out.println(rs.getString(2));
        System.out.println(rs.getString("LAST_NAME"));
        System.out.println(rs.getInt(1));

        System.out.println("***************************************");
        rs.absolute(11);
        System.out.println(rs.getString(2));

        ResultSetMetaData rsmd = rs.getMetaData();
        System.out.println(rsmd.getColumnCount());
        System.out.println(rsmd.getColumnName(1));
        System.out.println(rsmd.getColumnName(5));



    }
}
