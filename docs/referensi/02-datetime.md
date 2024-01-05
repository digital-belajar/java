# Java Referensi: Date & Time


## Mengambil string tanggal hari ini
```java
DateTimeFormatter dtf = DateTimeFormatter.ofPattern("dd MMM yyyy");  
LocalDateTime now = LocalDateTime.now();  
String hariIni = dtf.format(now);
```