import java.util.ArrayList;
import java.util.Scanner;

public class WaitingList1 {
    public static void main(String[] args) {

        Scanner scan = new Scanner(System.in);
        ArrayList data = new ArrayList(); //??

        String pilih; //??
        String input; //??

        do {
            System.out.println();
            System.out.println("Program Waiting List");
            System.out.println("1. Tampilkan");
            System.out.println("2. Tambah");
            System.out.println("3. Fetch");
            System.out.println("4. Reset");
            System.out.println("5. Selesai");
            System.out.print("Pilih (1-5)?");

            // ??            
            pilih = scan.nextLine();

            if(pilih.equals("1")) {
                System.out.println();
                System.out.println("========================");
                //??
                for(int i=0; i<data.size(); i++) {
                    System.out.println((i+1)+". "+data.get(i));
                }
                System.out.println("========================");

                //??
                input = scan.nextLine();
            }

            if(pilih.equals("2")) {
                System.out.print("Nama?");
                //??
                input = scan.nextLine();
                data.add(input);
            }

            if(pilih.equals("3")) {
                System.out.println(data.get(0)+" dikeluarkan dari daftar");
                //??
                data.remove(0);
            }

            if(pilih.equals("4")) {
                //??
                data.clear();
                System.out.println("Data dikosongkan");                
            }

        } while(!pilih.equals("5")); //??

    }
}