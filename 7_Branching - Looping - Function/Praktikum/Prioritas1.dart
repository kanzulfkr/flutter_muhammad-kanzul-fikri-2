void main(List<String> args) {
  checkNilai();
  makeLooping();
}

void checkNilai() {
  var nilai = 90;
  print(
      '1. Berikut merupakan seleksi untuk menentukan nilai dari $nilai adalah : ');
  if (nilai <= 100 && nilai >= 0) {
    if (nilai > 70) {
      print('Nilai A');
    } else if (nilai > 40) {
      print('Nilai B');
    } else if (nilai > 0) {
      print('Nilai C');
    }
  } else {
    print('');
  }
}

void makeLooping() {
  print('');
  print('2. Berikut merupakan looping angka dari 1 hingga 10 : ');
  for (var i = 0; i < 9; i++) {
    print(i);
  }
}
