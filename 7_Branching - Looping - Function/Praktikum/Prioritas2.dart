import 'dart:io';

void main(List<String> args) {
  makeJamPasir();
  makePyramid();
  checkFactorial();
  hitungLuasLingkaran(7);
}

void makeJamPasir() {
  int n = 5; // jumlah baris pola
  print('1. Berikut merupakan jam pasir dengan baris pola $n');
  for (int i = 1; i <= n; i++) {
    for (int j = 1; j <= n; j++) {
      // mencetak bintang di dalam area jam pasir
      if (j >= i && j <= n - i + 1 || j <= i && j >= n - i + 1) {
        stdout.write('*');
      } else {
        stdout.write(' ');
      }
    }
    stdout.write('\n');
  }
  stdout;
}

void makePyramid() {
  String b, c;
  int d = 5;
  c = '*';

  print('');
  print('2. Berikut merupakan piramida dengan baris pola $d');
  for (int i = 1; i <= d; i++) {
    b = '';
    for (int j = 1; j <= d; j++) {
      if (j == d - i + 1) {
        b = b + c;
        j = j + 1;
      } else {
        b = b + ' ';
      }
    }
    print(b);
    c = c + '**';
  }
}

void hitungLuasLingkaran(int r) {
  print('');
  double pi = 3.14;
  double luas = pi * r * r;
  var L = luas.round();
  print(
      '3. Berikut merupakan hasil hitung luas Lingkaran dengan jari-jari $r adalah $L');
  //round berfungsi untuk mem-parsing data type double to int, cause a function has return type int and string only.
}

void checkFactorial() {
  int n = 10;
  BigInt e = BigInt.from(n);
  for (var i = n - 1; i > 1; i--) {
    e *= BigInt.from(i);
  }
  print('');
  print(
      '4. Berikut merupakan hasil faktorial dari $n adalah : ${e.toDouble().toStringAsPrecision(8)}');
}
