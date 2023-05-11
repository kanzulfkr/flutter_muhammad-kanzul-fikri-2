# **UI Testing**

UI testing merupakan pengujian yang dilakukan pada tampilan suatu aplikasi untuk memastikan aplikasi dapat menerima interaksi dan memberi respon kepada pengguna. UI testing di Flutter disebut widget testing, sehingga pengujian dilakukan pada widgets dengan menuliskan script yang dapat dijalankan secara otomatis.

## Keuntungan
Beberapa keuntungan melakukan UI testing adalah memastikan seluruh widget memberi tampilan yang sesuai, memastikan seluruh interaksi dapat diterima dengan baik, serta menjadi ketentuan yang harus diikuti saat diperlukan perubahan pada widget.

## Penggunaan
Sama seperti saat melakukan unit testing, UI testing harus menggunakan package testing. Selanjutnya, pada struktur script, harus memuat skenario pengujian widget yang dilakukan. Misalnya, untuk melakukan pengujian AboutScreen, maka test case diawali dengan testWidgets dan diberi judul. Lalu, dilakukan simulasi proses dalam mengaktifkan halaman AboutScreen. Dan terakhir, memeriksa apakah di halaman tersebut terdapat teks “About Screen” dengan menggunakan find().

###### 14.32 WIB Malang, 9 Mei
