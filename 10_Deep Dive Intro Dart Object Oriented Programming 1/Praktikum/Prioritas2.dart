class Matematika {
  void hitung() {
    return null;
  }
}

void main() {
  KPK mtkKPK = KPK(24, 36);
  FPB mtkFPB = FPB(24, 36);
  mtkKPK.hitung();
  mtkFPB.hitung();
}

class KPK implements Matematika {
  int x;
  int y;

  KPK(this.x, this.y);

  @override
  void hitung() {
    int c = 0;
    for (int i = 1; i <= y; i++) {
      c = (c + x);
      if (c % y == 0) {
        print("KPK dari $x dan $y adalah $c");
        break;
      }
    }
  }
}

class FPB implements Matematika {
  int x;
  int y;

  FPB(this.x, this.y);

  @override
  @override
  void hitung() {
    int i, z;
    List<int> faktor = [];
    for (i = 1; i <= x && i <= y; ++i) {
      if (x % i == 0 && y % i == 0) {
        faktor.add(i);
      }
    }
    print("FPB dari $x dan $y adalah ${faktor[faktor.length - 1]}");
  }
}
