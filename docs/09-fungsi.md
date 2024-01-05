# Fungsi dan Prosedur

Pada contoh program di pembahasan sebelumnya, kita hanya menulis kode intruksi pada fungsi `main()` saja. Fungsi `main()` adalah fungsi utama dalam program Java. Semua kode yang kita tulis di dalamnya, akan langsung dieksekusi.

Ketika program kita semakin bertambah besar, kita tidak mungkin menulis semua kode program di dalam fungsi `main()`. Hal itu akan menyebabkan penambahan program dan pencarian kesalahan semakin sulit. Untuk mengatasi masalah ini, kita akan membagi-bagi program menjadi _potongan-potongan_ kecil, membungkusnya sesuai dengan fungsi masing-masing sebagai sub program. Sub program inilah yang kita sebut _fungsi_, _prosedur_ dan _method_.

Sederhananya, prosedur, Fungsi, dan Method adalah sama, ia hanya dibedakan oleh beberapa hal:
* _Prosedur_ adalah sebutan untuk fungsi yang tidak mengembalikan nilai. Prosedur biasanya ditandai dengan kata kunci `void`.
* _Fungsi_ adalah sebutan untuk fungsi yang mengembalikan nilai.
* _Method_ adalah fungsi yang berada di dalam Class. Sebutan ini, biasanya digunakan pada OOP.

## Procedure

Perhatikan program berikut:
```java
public class LoopBintang1 {
    public static void main(String[] args) {
        // BAGIAN 1
        for(int baris=1; baris<=5; baris++) {
            for(int kolom=1; kolom<=baris; kolom++) {
                System.out.print("*");
            }
            System.out.println();
        }
        System.out.println();

        // BAGIAN 2
        for(int baris=1; baris<=5; baris++) {
            for(int kolom=1; kolom<=baris; kolom++) {
                System.out.print("*");
            }
            System.out.println();
        }
        System.out.println();

        // BAGIAN 3
        for(int baris=1; baris<=3; baris++) {
            for(int kolom=1; kolom<=baris; kolom++) {
                System.out.print("*");
            }
            System.out.println();
        }
        System.out.println();

        // BAGIAN 4
        for(int baris=1; baris<=3; baris++) {
            for(int kolom=1; kolom<=baris; kolom++) {
                System.out.print("X");
            }
            System.out.println();
        }
        System.out.println();

    }
}
```

Program diatas, terdiri empat bagian. Masing-masing bagiannya memiliki kemiripan, bahkan bagian 1 dan 2 merupakan bagian yang sama persis. Redundansi/pengulangan penulisan sekumpulan kode program merupakan sesuatu yang dihindari dalam penyusunan program, karena jika memang bagian program itu mengerjakan hal yang sama, modifikasi pada satu bagian program berarti juga perubahan pada bagian lain. Jika bagian program yang merupakan pengulangan ini tersebar di berbagai tempat pada program, maka ini tentu akan menjadi sesuatu yang merepotkan. Oleh sebab itu kita akan _membungkus_ bagian program yang sama ini menjadi prosedur. Sekarang perhatikan program `LoopBintang2`:

```java
public class LoopBintang2 {
    static void bintang() {
        for(int baris=1; baris<=5; baris++) {
            for(int kolom=1; kolom<=baris; kolom++) {
                System.out.print("*");
            }
            System.out.println();
        }
        System.out.println();
    } // akhir fungsi bintang()

    public static void main(String[] args) {
        // BAGIAN 1
        bintang();

        // BAGIAN 2
        bintang();

        // BAGIAN 3
        for(int baris=1; baris<=3; baris++) {
            for(int kolom=1; kolom<=baris; kolom++) {
                System.out.print("*");
            }
            System.out.println();
        }
        System.out.println();

        // BAGIAN 4
        for(int baris=1; baris<=3; baris++) {
            for(int kolom=1; kolom<=baris; kolom++) {
                System.out.print("X");
            }
            System.out.println();
        }
        System.out.println();

    }
}
```

Karena bagian 1 & 2 sama persis, maka kode program pada bagian tersebut _dibungkus_ ke dalam prosedur `bintang()`. Dengan demikian, jika kita perlu mencetak bintang, yang kita perlunya hanyalah memanggil prosedur tersebut. Ini membuat program utama kita menjadi lebih ringkas dan mudah dibaca.

Pembuatan prosedur dimulai dengan deklarasi dengan kata kunci `static void` yang diikut nama fungsi (contoh `bintang()`), diikuti dengan kode program yang akan dijalankan dengan diapit sepasang `{...}`.

## Parameter
Pada program `LoopBintang2` kita bisa perhatikan bahwa bagian 3 pun sebenarnya memiliki banyak kemiripan dengan bagian 1 dan 2, perbedaannya hanya pada angka `3` pada kode `baris<=3`. Untuk ini kita bisa menambahkan parameter pada prosedur `bintang()` kita. Perhatikan program `LoopBintang3`:

```java
public class LoopBintang3 {
    static void bintang(int banyak) {
        for(int baris=1; baris<=banyak; baris++) {
            for(int kolom=1; kolom<=baris; kolom++) {
                System.out.print("*");
            }
            System.out.println();
        }
        System.out.println();
    }
    public static void main(String[] args) {
        // BAGIAN 1
        bintang(5);

        // BAGIAN 2
        bintang(5);

        // BAGIAN 3
        bintang(3);

        // BAGIAN 4
        for(int baris=1; baris<=3; baris++) {
            for(int kolom=1; kolom<=baris; kolom++) {
                System.out.print("X");
            }
            System.out.println();
        }
        System.out.println();

    }
}
```

Dengan menambahkan parameter `int banyak`, kita bisa membuat sebuah prosedur melakukan sekumpulan kode, tapi setiap eksekusinya tidak sama persis, sesuai dengan parameter yang diberikan kepadanya.

Pada contoh diatas, angka `5` pada pemanggilan `bintang(5)` akan diteruskan kepada fungsi `bintang` sebagai parameter `banyak`, dan parameter `banyak` ini diperlakukan sebagai variabel lokal yang diolah di dalam prosedur.

Kata kunci `int` merupakan deklarasi yang menyatakan bahwa parameter `banyak` harus merupakan data bertipe _integer_

Kita juga bisa menambahkahkan lebih dari satu parameter. Misal, pada bagian 4, karakter yang dicetak berbeda dengan bagian 1,2, dan 3. Untuk ini kita bisa menggunakan parameter.

```java
public class LoopBintang4 {
    static void bintang(int banyak, String simbol) {
        for(int baris=1; baris<=banyak; baris++) {
            for(int kolom=1; kolom<=baris; kolom++) {
                System.out.print(simbol);
            }
            System.out.println();
        }
        System.out.println();
    }
    public static void main(String[] args) {
        // BAGIAN 1
        bintang(5, "*");

        // BAGIAN 2
        bintang(5, "*");

        // BAGIAN 3
        bintang(3, "*");

        // BAGIAN 4
        bintang(4, "X")

    }
}
```

## Fungsi
Fungsi mirip dengan prosedur, fungsi membungkus sekumpulan kode, hanya saja bedanya fungsi mengembalikan suatu nilai.

Pengembalian nilai pada fungsi menggunakan kata kunci return.

Contoh:
```java
static int luasPersegi(int sisi){
    int luas = sisi * sisi;
    return luas;
}
```
Pada contoh tersebut, kita membuat sebuah parameter bernama sisi. Kemudian fungsi akan mengembalikan nilai dengan tipe int (integer) dari variabel luas.

Contoh pemanggilanya:
```java
System.out.println("Luas Persegi dengan panjang sisi 5 adalah " + luasPersegi(5));
```

Hasil Output:
```
Luas Persegi dengan panjang sisi 5 adalah 25
```

## Pemanggilan Fungsi di Fungsi Lain
Fungsi-fungsi dapat saling memanggil untuk memproses data.

Contoh, sebuah program Kalkulator Bangun Ruang memiliki fungsi-fungsi: luasPersegi(), luasPersegiPanjang(), luasSegitiga(), luasBalok(), luasKubus() dsb.

Fungsi-fungsi tersebut dapat saling membantu, contoh fungsi luasKubus() membutuhkan fungsi luasPersegi().

Rumus:
```
Luas Kubus = 6 *  luasPersegi;
Luas Persegi = sisi * sisi;
```

Maka programnya bisa dibuat seperti ini:
```java
public class BangunRuang {

    public static void main(String[] args) {
        int s = 12;
        int luas = luasKubus(s);

        System.out.println(luas);
    }

    // membuat fungsi luasPersegi()
    static int luasPersegi(int sisi){
        return sisi * sisi;
    }

    // membuat fungsi luasKubus(), menghitung luas permukaan kubus
    static int luasKubus(int sisi){
        
        // memanggil fungsi luasPersegi
        return 6 * luasPersegi(sisi);
    }

}
```
Hasil output
```
864
```

## Fungsi Static dan Non-Static
Pada contoh-contoh diatas, kita menggunakan kata kunci `static` sebelum membuat fungsi.

Kata kunci `static` akan membuat fungsi dapat dieksekusi langsung, tanpa harus membuat instansiasi objek dari class.

Contoh:
```java
public class FungsiStatic {
    
    // Fungsi non-static
    void makan(String makanan){
        System.out.println("Hi!");
        System.out.println("Saya sedang makan " + makanan);
    }
    
    // fungsi static
    static void minum(String minuman){
        System.out.println("Saya sedang minum " + minuman);
    }
    
    // fungsi main
    public static void main(String[] args) {
        
        // pemanggilan fungsi static
        minum("Kopi");
        
        
        // mambuat instansiasi objek saya dari class FungsiStatic
        FungsiStatic saya = new FungsiStatic();
        // pemanggilan fungsi non-static
        saya.makan("Nasi Goreng");
        
    }
    
}
```
Pada contoh tersebut, fungsi `makan()` adalah fungsi non-static. Sedangkan fungsi `minum()` adalah fungsi static.

Hasil output dari program di atas:
```
Saya sedang minum Kopi
Hi!
Saya sedang makan Nasi Goreng
```

Apabila kita tidak membuat objek untuk memanggil fungsi non-static, maka akan terjadi error.

## Variabel Global dan Variabel Lokal pada Java
Variabel global adalah variabel yang bisa diakses dari semua fungsi. Sedangkan variabel lokal adalah variabel yang hanya bisa diakses dari dalam fungsi tempat variabel itu berada.


Perhatikan program berikut contohnya:
```java
class ProgramKu{

    // ini variabel global
    static String nama = "Programku";
    static String version = "1.0.0";

    static void help(){

        // ini variabel lokal
        String nama = "Belajar Java";

        // mengakses variabel global di dalam fungso help()
        System.out.println("Nama: " + nama);
        System.out.println("Versi: " + version);
    }

    public static void main(String args[]){
        
        // panggil fungsi help()
        help();
        
        System.out.println("Nama: " + nama);
        System.out.println("Versi: " + version);

    }

}
```
Hasil outputnya:
```
Nama: Belajar Java
Versi: 1.0.0
Nama: Programku
Versi: 1.0.0
```
Saat pemanggilan fungsi `help()` kita membuat ulang variabel nama. Sehingga variabel nama menjadi variabel lokal pada fungsi `help()` dan nilainya berubah menjadi "Belajar Java".

Sedangkan, saat kita akases lagi variabel nama melalui fungsi `main()` nilainya tetap sama seperti yang didefinisikan.

---
**Referensi:**
- https://www.petanikode.com/java-prosedur-dan-fungsi/