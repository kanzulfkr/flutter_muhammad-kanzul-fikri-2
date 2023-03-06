class Animal {
  int beratHewan;

  Animal(this.beratHewan);
}

class Mobil {
  int muatan = 0;
  final int maxMuatan = 100;

  Mobil(this.muatan);

  void tambahMuatan(Animal animal) {
    if (muatan < maxMuatan) {
      muatan = muatan + animal.beratHewan + 20;
    }
  }
}

void main() {
  Mobil libom = Mobil(90);
}
