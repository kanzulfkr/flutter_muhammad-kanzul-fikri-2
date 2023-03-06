# **Fundamental Dart***

Pada kesempatan Live Session yang ke-4, kelas kami membahas mengenai tugas Praktikum yang telah dikerjakan. setelah itu pembahasan materi oleh mentor meliputi :

## Enum
Enum digunakan untuk mendefinisikan nama nilai yang bersifat konstant (tetap dan tidak dapat diubah). Penggunaan enumerasi yaitu untuk menyimpan data yang terbatas dibawah definisi tipe yang sama.

## Constanta
Constanta merupakan identifier yang nilainya tidak dapat diubah oleh program selama pelaksanaannya hingga selesai.

## If else
If else merupakan proses penentuan keputusan atau disebut dengan conditional statement. Pada dasarnya kita akan memerintahkan program untuk melakukan suatu aksi tertentu berdasarkan kondisi yang terpenuhi atau tidak terpenuhi menggunakan operator logic.

## Switch
Switch merupakan proses penenteuan atau pengambilan keputusan yang melibatkan sejumlah alternatif atau kondisi banyak dibandingkan dengan *if else*. Selain pengecekan menggunakan operator, switch case dapat menggunakan value yang tipenya berupa karakter dan integer. 

## For loop
For loop merupakan syntax pemrograman yang digunakan untuk mengulang kode program selama sebuh kondisi terpenuhi. Kode akan terus diulangi dan berhenti ketika saat kondisinya sudah tidak terpenuhi. 

## Challenge
Berikut merupakan Source Code Challenge yang diberikan mentor :

    enum AudioState {
    playing,
    paused,
    stop,
    }

    void main() {
    const audioState = AudioState.playing;

    switch (audioState) {
        case AudioState.playing:
        print('Audio is currently playing');
        break;
        case AudioState.paused:
        print('Audio is currently paused');
        break;
        case AudioState.stop:
        print('Audio is currently stopped');
        break;
        default:
        print('Unknown audio state');
      }
    }


###### 22:30 WIB Malang, 22 February