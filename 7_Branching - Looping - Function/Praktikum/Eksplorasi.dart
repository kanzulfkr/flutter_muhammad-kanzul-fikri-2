import 'dart:io';

void main() {
  checkPrima();
  makeTabelPerkalian();
}

void checkPrima() {
  print('');
  print('1. Mengecek apakah bilangan 7 termasuk bilangan prima?');
  int a = 7;
  int b = 0;
  for (int i = 2; i <= a; i++) {
    if (a % i == 0) {
      b = b + 1;
    }
  }

  if (b == 1) {
    print('Ya, $a merupakan Bilangan Prima');
  } else {
    print('Tidak, $a bukan Bilangan Prima');
  }
}

void makeTabelPerkalian() {
  print('');
  print('2. Berikut merupakan tabel perkalian dari bilangan 1-10');
  print('X |  1  2  3  4  5  6  7  8  9');
  print('--------------------');
  for (int i = 1; i < 10; i++) {
    stdout.write('$i | ');
    for (int j = 1; j < 10; j++) {
      stdout.write('${i * j}'.padLeft(2) + ' ');
    }
    print('');
  }
}
