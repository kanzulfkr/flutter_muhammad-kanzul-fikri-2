void main() {
  makeList1();
  makeMean2([3, 10]);
  print('3. Melakukan perhitungan bilangan faktorial : ');
  print({countFactorial(5).then((value) => print(value))});
}

void makeList1() {
  List<List<dynamic>> listMakanan = [
    [1, 'Buah'],
    [2, 'Nasi Goreng'],
    [3, 'Fuyunghay'],
    [4, 'Roti Bakar'],
    [5, 'Jagung Bakar']
  ];
  listMakanan.toSet();
  Map map = {};
  for (List<dynamic> item in listMakanan) {
    map[item[0]] = item[1];
  }
  print("1. Berikut merupakan value dari Map : ");
  print(map);
}

void makeMean2(List<int> data) {
  List<int> newData = [];
  int jumlah = 0;
  for (var n in data) {
    jumlah += n;
  }
  double mean = jumlah / data.length;
  print("");
  print("2. Berikut merupakan rata-rata dari nilai $data adalah : ");
  print(mean.ceil());
  print('');
}

int factorial(int n) {
  if (n == 0 || n == 1) {
    return 1;
  }
  int result = n * factorial(n - 1);
  return result;
}

Future<int> countFactorial(int n) async {
  await Future.delayed(Duration(seconds: 2));
  return factorial(n);
}
