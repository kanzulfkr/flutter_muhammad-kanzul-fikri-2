void main() {
  Kubus kubus = Kubus(sisi: 9);
  Balok balok = Balok(10, 10, 10);

  print("Volume dari Kubus : ${kubus.volume()}");
  print("Volume dari Balok : ${balok.volume()}");
}

class BangunRuang {
  int panjang;
  int lebar;
  int tinggi;

  BangunRuang(
      {required this.lebar, required this.panjang, required this.tinggi});

  int volume() {
    return 0;
  }
}

class Kubus extends BangunRuang {
  late int sisi;

  Kubus({required this.sisi}) : super(panjang: sisi, lebar: sisi, tinggi: sisi);

  @override
  int volume() {
    return this.sisi * this.sisi * this.sisi;
  }
}

class Balok extends BangunRuang {
  int panjang;
  int lebar;
  int tinggi;

  Balok(this.panjang, this.lebar, this.tinggi)
      : super(panjang: panjang, lebar: lebar, tinggi: tinggi);

  @override
  int volume() {
    return this.panjang * this.lebar * this.tinggi;
  }
}
