// referensi: https://www.w3schools.com/java/java_files_read.asp

// pastikan Anda membuat file text1.txt sebelum menjalankan program ini
// file text1.txt bisa berisi sembarang tulisan.

import java.io.File;  // Import the File class
import java.util.Scanner; // Import the Scanner class to read text files

public class Hitung1 {
    public static void main(String[] args) {
        String data;
        try {
            File myObj = new File("text1.txt");
            Scanner myReader = new Scanner(myObj);
            while (myReader.hasNextLine()) {
                data = myReader.nextLine();
                System.out.println(data);
            }
            myReader.close();
        } catch (Exception e) {
            System.out.println("Terdapat kesalahan");
        }
    }
}