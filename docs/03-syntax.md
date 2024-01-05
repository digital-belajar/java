Setiap bahasa pemrograman memiliki struktur dan aturan penulisan sintaks yang berbeda-beda.

Java merupakan bahasa pemrograman yang dikembangkan dari bahasa C dan tentunya akan banyak mengikuti gaya penulisan C.

Saat baru pertama kali melihat program Java, mungkin kamu akan bertanya-tanya.

Ini apa? itu apa?

Contoh:

Coba perhatikan program berikut:

```java
package com.ruangbelajar.java;

class HelloWorld {
    public static void main(String args[]){
        System.out.println("Hello World");
    }
}
```

Banyak hal yang kita belum ketahui.

Apa itu package?

Apa itu class?

…dan mengapa ditulis seperti itu?

Oleh sebab itu, kita perlu belajar sintaks dasar dan struktur program Java.

Mari kita mulai…


## Struktur Dasar Program Java
Struktur program Java secara umum dibagi menjadi 4 bagian:

1. Deklarasi Package
2. Impor Library
3. Bagian Class
4. Method Main

Mari kita lihat contohnya:

```java
package com.ruangbelajar.java; //<- 1. deklarasi package

import java.io.File; //<- 2. Impor library

class HelloWorld { //<- 3. Bagian class

    public static void main(String args[]){ //<- 4. Method main
        System.out.println("Hello World");
    }

}
```
Mari kita bahas, satu-per-satu…

### 1. Deklarasi Package
Package merupakan sebuah folder yang berisi sekumpulan program Java.

Deklarasi package biasanya dilakukan saat membuat program atau aplikasi besar.

Contoh deklarasi package:

```java
package com.ruangbelajar.java;
```

Biasanya nama package mengikuti nama domain dari sebuah vendor yang mengeluarkan program tersebut.  Pada contoh di atas, com.ruangbelajar adalah nama domain dari ruangbelajar.

Aturannya: nama domain dibalik, lalu diikuti nama programnya.

Bagaimana kalau kita tidak mendeklarasikan package? Boleh-boleh saja dan programnya akan tetap bisa jalan. Tapi nanti saat produksi -- misalnya saat membuat aplikasi Android -- kita wajib mendeklarasikan package.

### 2. Bagian Impor
Pada bagian ini, kita melakukan impor library yang dibutuhkan pada program.

Library merupakan sekumpulan class dan fungsi yang bisa kita gunakan dalam membuat program.

Contoh impor library:

```java
import java.util.Scanner;
```

Pada contoh tersebut, kita mengimpor class Scanner dari package java.util.

### 3. Bagian Class
Java merupakan bahasa pemrograman yang menggunakan paradigma OOP (Object Oriented Programming).

Setiap program harus dibungkus di dalam class agar nanti bisa dibuat menjadi objek.

Kalau kamu belum paham apa itu OOP?

Cukup pahami class sebagai deklarasi nama program.

```java
class HelloWorld {
    public static void main(String args[]){
        System.out.println("Hello World");
    }
}
```

Ini adalah blok class.

Blok class dibuka dengan tanda kurung kurawal { kemudian ditutup atau diakhiri dengan }.

Di dalam blok class, kita dapat mengisinya dengan method atau fungsi-fungsi dan juga variabel.

Pada contoh di atas, terdapat method `main()`.

### 4. Method Main
Method `main()` atau fungsi `main()` merupakan blok program yang akan dieksekusi pertama kali.

Ini adalah entri point dari program.

Method `main()` wajib kita buat. Kalau tidak, maka programnya tidak akan bisa dieksekusi.

Contoh method `main()`.

```java
public static void main(String args[]){
    System.out.println("Hello World");
}
```

Penulisannya harus seperti ini…

Method `main()` memiliki parameter `args[]`. Parameter ini nanti akan menyimpan sebuah nilai dari argumen di command line.

Silahkan baca: Apa Fungsi String[] args pada Pemrograman Java?

Lalu di dalam method `main()`, terdapat statement atau fungsi:

```java
System.out.println("Hello World");
```

Ini adalah fungsi untuk menampilkan teks ke layar monitor.

## Statement dan Ekspresi pada Java
Statement dan eksrepsi adalah bagian terkecil dalam program. Setiap statement dan ekspresi di Java, harus diakhiri dengan titik koma (;).

Contoh statemen dan ekspresi:

```java
System.out.println("Hello World");
System.out.println("Apa kabar?");
var x = 3;
var y = 8;
var z = x + y;
```

Statemen dan ekspresi akan menjadi instruksi yang akan dikerjakan oleh komputer.

Pada contoh di atas, kita menyuruh komputer untuk menampilkan teks "Hello World", dan "Apa kabar?".

Lalu kita menyuruhnya untuk menghitung nilai x + y.


## Blok Program Java
Blok program merupakan kumpulan dari statement dan ekspresi yang dibungkus menjadi satu.

Blok program selalu dibuka dengan kurung kurawal { dan ditutup dengan }.

Contoh blok program:

```java
// blok program main
public static void main(String args[]){
    System.out.println("Hello World");
    System.out.println("Hello Kode");

    // blok program if
    if( true ){
        System.out.println('True');
    }

    // blok program for
    for ( int i = 0; i<10; i++){
        System.out.println("Perulangan ke"+i);
    }
}
```
Intinya: jika kamu menemukan kurung { dan }, maka itu adalah sebuah blok program.

Blok program dapat juga berisi blok program yang lain (nested).

Pada contoh di atas, blok program `main()` berisi blok if dan for.


## Penulisan Komentar pada Java
Komentar merupakan bagian program yang tidak akan dieksekusi oleh komputer.

Komentar biasanya digunakan untuk:

* Memberi keterangan pada kode program;
* Menonaktifkan fungsi tertentu;
* Membuat dokumentasi;

Penulisan komentar pada java, sama seperti pada bahasa C. Yaitu menggunakan:

* Garis miring ganda (//) untuk komentar satu baris;
* Garis miring bintang (/*...*/) untuk komentar yang lebih dari satu baris.
* 
Contoh:

```java
public static void main(String args[]){
    // ini adalah komentar satu baris
    System.out.println("Hello World");
    
    // komentar akan diabaikan oleh komputer
    // berikut ini fungsi yang di-non-aktifkan dengan komentar 
    // System.out.println("Hello World");

    /*
    Ini adalah penulisan komentar
    yang lebih dari
    satu baris
    */
}
```

## Penulisan String dan Karakter
String merupakan kumpulan dari karakter. Kita sering mengenalnya dengan teks.

Contoh string: "Hello world"

Aturan penulisan string pada Java, harus diapit dengan tanda petik ganda seperti pada contoh di atas.

Apabila diapit dengan tanda petik tunggal, maka akan menjadi sebuah karakter.

Contoh: 'Hello world'.

Jadi harap dibedakan:

* Tanda petik ganda ("...") untuk membuat string;
* Sedangkan tanda petik tunggal ('...') untuk membuat karakter.


## Case Sensitive
Java bersifat Case Sensitive, artinya huruf besar atau kapital dan huruf kecil dibedakan.

Contoh:

```java
String nama = "Ruang Belajar";
String Nama = "ruangbelajar";
String NAMA = "github.com";

System.out.println(nama);
System.out.println(Nama);
System.out.println(NAMA);
```

Tiga variabel tersebut merupakan tiga variabel yang bebeda, mesikipun sama-sama bernam nama.

Banyak pemula yang sering salah pada hal ini. Karena tidak bisa membedakan mana variabel yang menggunakan huruf besar dan mana yang menggunakan huruf kecil.

Apabila kita membuat variabel seperti ini:

```java
String jenisKelamin = "Laki-laki";
```

Maka kita harus memanggilnya seperti ini:

```java
System.out.println(jenisKelamin);
```

Bukan seperti ini:

```java
System.out.println(jeniskelamin);
```

Perhatikan, huruf K adalah huruf kapital.

## Gaya Penulisan Case
Gaya penulisan case (case style) yang digunakan oleh Java adalah: camelCase, PascalCase, dan ALL UPPER.

Gaya penulisan camelCase digunakan pada nama variabel, nama objek, dan nama method.

Contoh:

```java
String namaSaya = "Dian";
```

Lalu untuk PascalCase digunakan pada penulisan nama class.

Contoh:

```java
class HelloWOrld {
    //...
}
```
Perhatikan nama class-nya, kita menggunakan huruf kapital di awal, dan huruf kapital pada huruf W untuk memisahkan dua suku kata.

Sedangkan camelCase huruf depannya menggunakan huruf kecil, dan awalan suku kata berikutnya menggunakan huruf besar.

```java
// ini camelCase
belajarJava

// ini PascalCase
BelajarJava
```
Lalu, penulisan ALL UPPER atau semaunya kapital digunakan pada pembuatan nama konstanta.

Contoh:

```java
public final String DB_NAME = "ruangbelajar";
```

Untuk penulisan dua suku kata atau lebih, ALL UPPER dipisah dengan garus bawah atau underscore (_).

Apakah boleh saya menulis sembarangan?

Misal untuk nama class menggunakan ALL UPPER?

Boleh-boleh saja, programnya tidak akan error. Tetapi kode program yang kamu tulis akan terlihat kotor dan keluar dari garis pandu yang sudah ditetapkan.

---
**Referensi:**
- https://www.petanikode.com/java-sintaks/