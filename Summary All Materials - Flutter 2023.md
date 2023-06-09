# **Summary All Materials Flutter 2023**
Semoga Bermanfaat :)

Ada banyak materi yang saya dapatkan ketika mengikuti Program MBKM di Alterra Academy sebagai Mobile Frontend Developer. Berikut dibawah ini saya sampaikan ringkasan dari semua materi yang telah saya dapatkan dan saya pelajari hingga seterusnya :

## 1. *Introduction Mobile App Development*
1. Software merupakan perangkat lunak yang tersimpan dan 	dikendalikan pada sistem komputer yang berisikan 	perintah - perintah kode.

2. 	Sofrware memiliki beberapa jenis, diantaranya ada :
	- Web, yang dapat diakses menggunakan web browser dan memerlukan internet untuk membukanya.
	- Dekstop, yang dapat diakses pada perangkat dekstop seperti Windows, dan macOs
	- dan Mobile, yang dapat diakses pada perangkat mobile.

3. Pada pengembangannya, terdapat 2 software yaitu :
	- Compiler, yang digunakan untuk membaca perintah -	 perintah dalam bahasa pemrograman dan mengubahnya ke bahasa pemrograman lain.
	- dan Interpreter, yang digunakan untuk membaca perintah-perintah dalam bahasa pemrograman dan menjalankan program tersebut.

## 2. *Basic Version and Branch Management (Git)*
Git merupakan version control system yang terdistribusi dan memiliki fungsi untuk mengelola source code dalam sebuah proyek. Git menggunakan konsep "Commit" untuk merekam dan menyimpan setiap aktivitas yang dilakukan pada file atau source code tersebut. Dengan fitur tersebut, developer dengan mudah melacak perubahan atau penambahan yang memungkinkan untuk berkolaborasi atau bekerja sama dengan developer lain.

Git memperbolehkan developer untuk membuat repository lokasi dan remote. Dengan membuat branch, developer dapat mengisolasi feture atau changes tertentu dalam source code, sehingga dapat menjaga stabilitas, keamanan, dan meningkatkan produktivitas dari project developer.

Merge merupakan proses penggabungan dua branch atau lebih ke dalam repository Git. Pada saat melakukan merge, terdapat kesalahan yang rentan apabila changes pada source code berada pada file dan line yang sama, sehingga harus dilakukan resolve conflict tersebut secara manual sebelum melakukan merge.]

## 3. *Fundamental Dart*
Pada fundamental dart, terdapat beberapa fundamental yang digunakan dalam sebuah operasi kode, seperti nilai konstan, seleksi kondisi, dan perulangan. berikut saya jelaskan beberapa diantaranya :
### Enum
Enum digunakan untuk mendefinisikan nama nilai yang bersifat konstant (tetap dan tidak dapat diubah). Penggunaan enumerasi yaitu untuk menyimpan data yang terbatas dibawah definisi tipe yang sama.
### Constanta
Constanta merupakan identifier yang nilainya tidak dapat diubah oleh program selama pelaksanaannya hingga selesai.
### If else
If else merupakan proses penentuan keputusan atau disebut dengan conditional statement. Pada dasarnya kita akan memerintahkan program untuk melakukan suatu aksi tertentu berdasarkan kondisi yang terpenuhi atau tidak terpenuhi menggunakan operator logic.
### Switch
Switch merupakan proses penenteuan atau pengambilan keputusan yang melibatkan sejumlah alternatif atau kondisi banyak dibandingkan dengan *if else*. Selain pengecekan menggunakan operator, switch case dapat menggunakan value yang tipenya berupa karakter dan integer. 
### For loop
For loop merupakan syntax pemrograman yang digunakan untuk mengulang kode program selama sebuh kondisi terpenuhi. Kode akan terus diulangi dan berhenti ketika saat kondisinya sudah tidak terpenuhi. 

## 4. *Branching, looping, and function*
### Collection
Collection merupakan sekumpulan obyek yang tidak mempunyai posisi yang tetap dan menerima duplikat.
### Map
Map merupakan kumpulan pasangan *Key* dan *Value* yang tidak berurutan, tetapi key-values saling berkaitan. Key harus bersifat unique dan tidak dapat diduplikasi, namun value dari beberapa keys dapat bernilai sama.
### Set
Set merupakan sekumpulan obyek dimana setiap objek hanya dapat muncul sekali atau digunakan hanya sekali saja. Set bersifat unique dan tidak berurutan.
### List
List merupakan untuk menyimpan satu atau lebih dari suatu nilai. Setiap elemen list memiliki posisi yang tetap, dimana saat kita gunakan list tersebut dengan objek menurut indeksnya.


## 5. *Advance Function - Async-Await - Collection*
### Async - Await
merupakan sabuah cara untuk menjalakan program secara bersama-sama, dimana terdapat dua atau lebih proses yang berjalan secara bersamaan. 

### Event Loop
Event loop merupakan proses yang memiliki satu thread dengan banyak proses pengulangan yang tidak terhingga atau terus menerus. Dengan event loop, kita hanya perlu mengerjakan satu task dan melakukan seleksi untuk memprioritaskan task mana yang harus dikerjakan dahulu tanpa tumpang tindih satu proses dengan proses lainnya.

### Concerrency
Concerrency merupakan tehnik yang digunakan untuk menyelesaian permasalahan dengan banyak request atau proses yang diselesaikan dalam waktu yang sama.

## 6. *Dart Objet Oriented Programming*
### Class
Class merupakan sebuah blueprint atau sebuah ruang yang digunakan untuk menampung method, objek, dan property. Property adalah variabel yang ada di dalam class sedangkan method adalah fungsi yang ada di dalam class.
### Constructor
Constructor merupakan fungsi khusus dari suatu class yang bertanggung jawab untuk menginisiasi nilai awal dari sebuah variabel yang ada pada class.

## 7. *Deep Dive Intro Dart Object Oriented Programming*
### Inhiritance
Inhiritance merupakan konsep OOP dimana sebuah class dapat menurunkan property dan method yang dimilikinya kepada class turunannya atau class lain. Konsep inhiritance digunakan untuk memanfaatkan fitur @ovveride atau code reuseble untuk menghindari redudancy kode program.

### Abstract
Abstract merupakan konsep OOP dimana kita menyembunyikan sebuah proses yang rumit, pengguna disini hanya sekadar tau mengenai fungsinya, tetapi tidak tahu bagaimana proses tersebut terjadi. Abstract juga digunakan untuk mengimplementasikan pattern template method.

### Method Overriding
Method overriding merupakan sebuah method yang bisa membuat dua atau lebih methode dengan nama yang sama dalam sebuah kelas, namun tipe dan jumlah parameternya harus berbeda satu sama lain.

## 8. *Introduction Flutter*
### Flutter
Flutter merupakan sebuah framework aplikasi mobile yang dikembangkan oleh google pada tahun 2007. Framework flutter ini digunakan dalam pengembangan aplikasi mobile untuk sistem operasi Android, iOS, Windows, Linux, dan MacOS. Framework ini sudah diminati banyak developer karena memiliki beberapa kelebihan dalam pengembangannya. Bahasa yang digunakan dalam framework Flutter ini adalah bahasa Dart.
### Widget 
Widget merupakan komponen-komponen pendukung pada Flutter seperti text, button, image, icon, dan lain sebagainya. Sering kita mendengar dengan istilah seperti stateless widget, dan stateful widget. Berikut merupakan penjelasan dari istilah tersebut :
- Stateless widget merupakan widget yang bersifat statis dimana seluruh konfigurasi yang dimuat didalamnya telah diinisiasi sejak awal. 
- Sedangkan, Stateful widget merupakan widget yang sifatnya dinamis, sehingga widget ini dapat diperbaharui kapanpun dibutuhkan berdasarkan aksi atau perubahan data.

## 9. *Installation Command Line Interface and Package Management in Flutter*
### Command Line Interface (CLI)
CLI merupakan alat yang digunakan untuk berinteraksi dengan Flutter SDK. Flutter CLI dapat digunakan dengan menggunakan command di dalam terminal. Berikut merupakan beberapa Command CLI :
        flutter version
        flutter packages get
        flutter pub get
        flutter pub remove
        flutter pub upgrade
        flutter build apk
        flutter clean
        flutter doctor
### Packages Management
Packages Management merupakan fitur yang digunakan untuk menambahkan packages dalam project, mendukung sharing packages, dan mempercepat sebuah pengembangan.

## 9. *Material App*
Material App merupakan widget dasar yang berisikan seluruh widget yang ada dalam sebuah aplikasi. Widget MaterialApp ini digunakan hanya untuk sistem operasi Android. Widget ini memiliki control untuk mengatur route, theme, dan lain sebagainya.
### Cupertino App
Cupertino App merupakan widget yang fungsinya sama dengan MaterialApp Widget. Namun pada widget ini digunakan hanya pada platform sistem operasi iOS saja. 
### Scaffold
Scaffold merupakan elemen yang memiliki peran untuk mengatur struktur visual layout dengan mengimplementasikan material design, dimana dia juga meiliki kemampuan untuk membuat app bars, drawers, dan lain sebagainya.

## 10. *Flutter Layout*
### Layout
Layout pada flutter merupakan schema untuk mengatur tata letak sebuah halaman. Layout berbentuk widget yang mengatur element atau widget didalamnya.
### Single-child-layout
Single-child-layout merupakan salah satu jenis widget yang hanya dapat memiliki satu widget anak didalam widget layout induknya. Terdapat 3 widget yang termasuk dalam single-child-layout, yaitu
- Container, digunakan untuk membuat sebuah box yang dapat membungkus widget lainnya. Container memiliki elemen margin, padding, dan border.
- Center, digunakan untuk membuat sebuah box juga, namun widget Center digunakan ketika menginginkan widget berada dibagian tengah sebuah halaman.
- SizedBox, digunakan untuk membuat sebuah box juga, namun lebih sederhana dari container atau dapat disebut lebih simple.
### Multi-child-layout
Sama halnya dengan Single-child-layout, namun widget ini dapat memiliki lebih dari satu child widget. Berikut jenis-jenis dari Multi-child-layout yaitu :
- Column, digunakan ketika menginginkan widget secara vertikal.
- Row, digunakan ketika menginginkan widget secara horizontal.
- Listview, digunakan untuk mengatur widget kedalam bentuk list dan memiliki kemampuan scroll terhadap valuenya.
- GridView, digunakan ketika menginginkan widget dalam bentuk galeri atau block-block yang ditentukan.

## 11. *Flutter Form (Form Input Button) and Advance Form*
### Form
Form merupakan sebuah widget yang digunakan untuk menerima input atau isian data dari user. Form dapat digunakan pada saat menggunakan StatefulWidget dan kondisi form disimpan menggunakan GlobalKey < FormState >
### Input
Input/isian yang digunakan untuk menerima data form dapat menggunakan :
- TextField, digunakan untuk menerima inputan berupa string atau text.
- Radio, digunakan untuk menerima inputan berupa opsi atau sebuah pilihan.
- Checkbox, hampir sama dengan radio namun dapat menerima lebih dari satu inputan atau opsi.
- DropdownButton, hampir sama dengan radio namun opsi akan tersembunyi sebelum button ditekan.
### Button
Button bersifat seperti tombol yang dapat melakukan sesuatu ketika ditekan. Terdapat beberapa jenis button diantaranya :
- ElevatedButton, jika menekan tombol akan menjalankan fungsi onPressed. Fungsi tersebut dapat digunakan untuk melakukan operasi logic.
- IconButton, hampir sama dengan ElevatedButton namun IconButton hanya menampilkan Icon sebagai tombolnya.

## 12. *Assets (Font & Image)*
### Assets
Assets merupakan semua file seperti gambar, font, dan icon. Asstes tersebut dapat digunakan untuk menampilkan UI yang menarik dan fungsional.
### Font
Font merupakan gaya tipografi yang digunakan dalam aplikasi flutter agar dapat menampilkan jenis font dan gaya yang akan digunakan dalam aplikasi tersebut. Font dapat dipanggil dalam bentuk assets package atau dapat dipanggil dalam bentuk assets file ekstensi TTF.
### Image
Image merupakan gambar yang digunakan dalam aplikasi dlutter. Image dapat ditampilkan dengan berbagai format, termasuk PNG, JPEG, SVG, dan GIF.

## 13. *Dialog Bottom Sheet*
### Task Management
Task Management merupakan proses mengelola tugas atau pekerjaan yang harus dilakukan dalam aplikasi Flutter. Dalam Flutter, tugas dapat dianggap sebagai proses atau fungsi yang harus dieksekusi dalam urutan tertentu.
### Alert Dialog
Alert Dialog merupakan kotak dialog yang muncul di halaman pengguna untuk menampilkan pesan atau informasi kepada pengguna. Alert Dialog sering digunakan dalam aplikasi Flutter untuk memberikan informasi penting kepada pengguna atau meminta konfirmasi dari pengguna sebelum melakukan tindakan tertentu.
### Bottom Sheet
Bottom Sheet merupakan panel yang muncul dari bawah layar untuk menampilkan informasi atau opsi tambahan kepada pengguna. Bottom Sheet biasanya digunakan dalam aplikasi Flutter untuk menampilkan konten yang lebih detail atau opsi tambahan yang tidak dapat ditampilkan di antarmuka utama.

## 14. *Flutter Navigation*
### Navigation
Navigation merupakan fungsi yang digunakan untuk proses berpindah antar halaman atau layar dalam suatu aplikasi. Navigation merupakan element penting dalam sebuah aplikasi, karena dapat memungkinkan pengguna melakukan interaksi dengan berbagai halaman atau layar.
### NamedRoutes
Navigation dengan NamedRoutes merupakan salah satu cara untuk melakukan navigation di Flutter dengan menggunakan rute yang sudah ditentukan dan diberi nama tertentu. 

## 15. *Flutter State Management*
### State
State merupakan data yang dapat berubah saat pembuatan widget berjalan. State ubu dfapat berupa variabel, objek, atau koleksi data lainnya yang digunakan oleh suatu widget untuk menampilkan informasi yang telah diproses atau diperbaharui. State ini hanya dapat dijalankan pada widget StatefulWidget.
### setState()
setState() merupakan metode bawaan Flutter yang digunakan untuk memperbarui state pada widget stateful. Flutter akan membangkitkan kembali tampilan yang berkaitan dengan widget tersebut dan memperbarui tampilannya sesuai dengan state terbaru.
### Provider
Provider merupakan paket manajemen state yang menyediakan cara mudah untuk berbagi data antara widget tanpa harus melalui hierarki widget yang kompleks.
### BLoC (Business Logic Component)
BLoC merupakan sebuah pola arsitektur yang terpisah dari tampilan (view) dalam aplikasi Flutter. BLoC bertanggung jawab untuk memproses logika bisnis pada aplikasi dan mengelola state pada widget.

## 16. *Flutter State Management - Bloc*
### State
State merupakan data yang dapat berubah saat pembuatan widget berjalan. State ubu dfapat berupa variabel, objek, atau koleksi data lainnya yang digunakan oleh suatu widget untuk menampilkan informasi yang telah diproses atau diperbaharui. State ini hanya dapat dijalankan pada widget StatefulWidget.
### BLoC (Business Logic Component)
BLoC merupakan sebuah pola arsitektur yang terpisah dari tampilan (view) dalam aplikasi Flutter. BLoC bertanggung jawab untuk memproses logika bisnis pada aplikasi dan mengelola state pada widget.
### BLoC memiliki beberapa keunggulan dibandingkan Provider:
1. BLoC memungkinkan untuk mengelola state aplikasi yang kompleks dan besar dengan mudah. Dengan memisahkan logika bisnis dari UI, BLoC membuat kode lebih mudah di-maintain dan diperbarui.

2. BLoC memungkinkan untuk memisahkan state management dari tampilan aplikasi, sehingga membuat kode reusable di berbagai aplikasi.

3. BLoC memungkinkan untuk memisahkan logika bisnis dari UI sehingga kode menjadi lebih mudah dikelola. Dengan BLoC, pengembang dapat dengan mudah menemukan bug di kode logika bisnis karena memisahkannya dari UI widgetnya.

## 17. *Flutter Animation*
### Animation
Animasi pada flutter digunakan untuk meningkatkan pengalaman pengguna dan membuat aplikasi terlihat lebih menarik.
Flutter menyediakan banyak opsi animasi yang dapat digunakan, seperti animasi dasar seperti animasi pergerakan dan transisi, hingga animasi kompleks
### Implicit Animation
Implicit Animation merupakan animasi yang terjadi secara otomatis ketika terjadi perubahan pada widget atau propertinya, tanpa perlu menuliskan kode animasi secara eksplisit. Contoh dari implicit animation adalah animasi ketika widget berubah ukurannya, posisi, atau opacity.
### Transition
Transisi merupakan jenis animasi yang digunakan untuk membuat efek transisi yang lebih kompleks dan menarik saat berpindah antara dua tampilan dalam sebuah aplikasi.
Flutter menyediakan beberapa paket animasi transisi yang dapat digunakan, diantaranya:
1. PageTransition: Paket animasi yang menyediakan beberapa jenis transisi seperti slide, scale, fade, atau custom animasi.
2. Hero Animation: Paket animasi yang digunakan untuk membuat transisi animasi ketika sebuah widget atau gambar dipindahkan dari satu halaman ke halaman lainnya.
3. Flare: Paket animasi yang memungkinkan pengguna untuk menambahkan animasi vektor yang kompleks ke dalam aplikasi Flutter, termasuk animasi transisi.

## 18. *Storage*
Flutter menyediakan beberapa cara untuk melakukan penyimpanan data, salah satunya adalah dengan menggunakan storage. Dalam Flutter, terdapat dua jenis storage yang dapat digunakan, yaitu Shared Preferences, dan SQLite

Dengan menggunakan storage pada Flutter, pengembang dapat menyimpan data aplikasi dengan aman dan efisien, sehingga dapat meningkatkan kinerja dan pengalaman pengguna aplikasi yang dibangun.
### Shared Preferences 
Shared Preferences digunakan untuk menyimpan data dalam bentuk key-value pairs pada perangkat secara lokal. Data yang disimpan dalam Shared Preferences dapat digunakan secara global dalam aplikasi dan dapat diakses bahkan setelah aplikasi ditutup.
### SQLite
SQLite digunakan untuk menyimpan data dalam bentuk tabel dan memungkinkan penggunaan SQL untuk mengakses dan memanipulasi data. SQLite cocok digunakan untuk menyimpan data yang kompleks atau besar seperti data pengguna, data produk, dan sebagainya.

## 19. *Introduction REST API – JSON serialization/deserialization*
### Rest API
API RESTful dapat digunakan untuk berkomunikasi dengan server dan mengambil atau mengirim data dalam format yang ditentukan, seperti JSON atau XML. Untuk menggunakan API RESTful dalam aplikasi Flutter dapat menggunakan dependecies Flutter http.
### HTTP
HTTP merupakan paket bawaan yang disediakan oleh Flutter untuk melakukan permintaan HTTP ke server. Dengan menggunakan paket ini, Anda dapat membuat permintaan GET, POST, PUT, DELETE, dll. ke server dan menerima respons.
### Dio
Dio merupakan framework yang digunakan untuk memudahkan penggunaan API RESTful dalam aplikasi Flutter yang fungsinya kurang lebih sama dengan Rest API.
### Serialisasi JSON
Serialisasi JSON merupakan proses jkonversi data dari format JSON menjadi objek yang dapat diproses oleh bahasa pemrograman. Dalam aplikasi Flutter, Anda dapat menggunakan paket seperti json_serializable untuk melakukan serialisasi dan deserialisasi objek JSON.

## 20. *MVVM Architectur*
### MVVM
MVVM Architectur merupakan suatu arsitektur perangkat lunak yang digunakan untuk memisahkan logika bisnis aplikasi dari tampilan atau antarmuka pengguna. Arsitektur ini terdiri dari tiga komponen utama:

Model: Komponen yang mewakili data dan bisnis logic dari aplikasi.
View: Komponen yang menampilkan data dari Model dan memberikan antarmuka pengguna (UI).
ViewModel: Komponen yang berfungsi sebagai penghubung antara Model dan View. ViewModel ini menerima permintaan dari View untuk memperbarui data pada Model dan juga memberikan pembaruan data dari Model ke View.
### Keuntungan menggunakan MVVM Architectur
Adapun keuntungan yang dapat diperoleh dengan menggunakan arsitektur MVVM dalam pengembangan aplikasi antara lain:
1. Memudahkan pengembangan: Dengan memisahkan tugas-tugas tertentu ke dalam Model, View, dan ViewModel, pengembangan aplikasi menjadi lebih terstruktur dan mudah dipelajari. Hal ini memungkinkan pengembang untuk fokus pada satu bagian aplikasi tanpa terpengaruh oleh bagian lainnya.
2. Memudahkan pengujian: Karena Model dan ViewModel dapat diuji secara terpisah dari View, pengembang dapat dengan mudah menguji kode aplikasi. Hal ini dapat membantu menemukan bug atau kesalahan lebih cepat.
3. Mempercepat pengembangan: Karena MVVM memungkinkan pengembang untuk memisahkan tugas-tugas, hal ini dapat mempercepat pengembangan. Selain itu, dengan menggunakan ViewModel, pengembang dapat menghindari boilerplate code dan kode duplikat yang tidak perlu.
4. Memperbaiki kinerja aplikasi: Dengan memisahkan Model dan ViewModel dari View, aplikasi menjadi lebih ringan dan kinerja menjadi lebih cepat.
5. Meningkatkan fleksibilitas: MVVM memungkinkan pengembang untuk mengubah tampilan aplikasi tanpa memengaruhi logika bisnis atau data. Ini membuat aplikasi lebih fleksibel dan mudah diubah di masa depan.

## 21. *UI Testing*
UI testing merupakan pengujian yang dilakukan pada tampilan suatu aplikasi untuk memastikan aplikasi dapat menerima interaksi dan memberi respon kepada pengguna. UI testing di Flutter disebut widget testing, sehingga pengujian dilakukan pada widgets dengan menuliskan script yang dapat dijalankan secara otomatis.
### Keuntungan
Beberapa keuntungan melakukan UI testing adalah memastikan seluruh widget memberi tampilan yang sesuai, memastikan seluruh interaksi dapat diterima dengan baik, serta menjadi ketentuan yang harus diikuti saat diperlukan perubahan pada widget.
### Penggunaan
Sama seperti saat melakukan unit testing, UI testing harus menggunakan package testing. Selanjutnya, pada struktur script, harus memuat skenario pengujian widget yang dilakukan. Misalnya, untuk melakukan pengujian AboutScreen, maka test case diawali dengan testWidgets dan diberi judul. Lalu, dilakukan simulasi proses dalam mengaktifkan halaman AboutScreen. Dan terakhir, memeriksa apakah di halaman tersebut terdapat teks “About Screen” dengan menggunakan find().
