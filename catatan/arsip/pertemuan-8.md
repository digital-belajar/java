## Pertemuan 8
1. Pada menu bar di `Form Utama`, tambahkan menu:
  * Utility
    * `menuUtilityJamPublic`: _Jam (public)_
    * `menuUtilityJamPrivate`: _Jam (private)_
2. Buat `FormJamPrivate`
  * _jLabel_: `labelSalam`
  * _jLabel_: `labelHari`
  * tambahkan function berikut pada `FormJamPrivate`
    ```java
    public void tampilkan(String tanggal) {
        labelSalam.setText("Halo, "+Global.NAMA);
        labelHari.setText(tanggal);
        setVisible(true);
    }
    ```
  * Pada `menutUtilityJamPrivate`, ketika di klik, sisipkan kode berikut:
    ```java
    DateTimeFormatter dtf = DateTimeFormatter.ofPattern("dd MMM yyyy");  
    LocalDateTime now = LocalDateTime.now();  
    new FormJamPrivate().tampilkan(dtf.format(now));
    ```
3. Buat `FormJamPublic`
   * _jLabel_: `labelSalam`
   * _jLabel_: `labelHari`
     * klik kanan `labelHari`
     * _Customize code_
     * rubah _access_ dari _private_ menjadi _public_
   * Pada `menutUtilityJamPublic`, ketika di klik, sisipkan kode berikut:
     ```java
     FormJamPublic f = new FormJamPublic();
     DateTimeFormatter dtf = DateTimeFormatter.ofPattern("dd MMM yyyy");  
     LocalDateTime now = LocalDateTime.now();  
     f.labelHari.setText(dtf.format(now));
     f.labelSalam.setText("Halo, "+Global.NAMA);
     f.setVisible(true);
     ```