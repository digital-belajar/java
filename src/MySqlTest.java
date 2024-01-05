/*
   Contoh program sederhana membaca data dari database MySql

   Untuk contoh database, check file tokobuku.sql
   Pastikan juga Anda menambahkan library Mysql J Connector (file .jar)
*/

import java.sql.*;
 
public class MySqlTest {
    public static void main(String arg[])
    {
        Connection connection = null;
        try {
            // below two lines are used for connectivity.
            Class.forName("com.mysql.cj.jdbc.Driver");
            connection = DriverManager.getConnection(
                "jdbc:mysql://localhost:3306/tokobuku",
                "root", "");
 
 
            Statement statement;
            statement = connection.createStatement();
            ResultSet resultSet;
            resultSet = statement.executeQuery(
                "select * from barang");
            String kode;
            String nama;
            while (resultSet.next()) {
                kode = resultSet.getString("kode");
                nama = resultSet.getString("nama");
                System.out.println("kode : " + kode
                                   + " nama : " + nama);
            }
            resultSet.close();
            statement.close();
            connection.close();
        }
        catch (Exception exception) {
            System.out.println(exception);
        }
    } // function ends
} // class ends