void main() {
  Circle circle = Circle(7);
  Square square = Square(8);
  Rectangle rectangle = Rectangle(4, 7);
  print("Lingkaran dengan jari-jari 7");
  print("Luas : ${circle.getArea()}");
  print("Keliling : ${circle.getPerimeter()}");
  print("\nPersegi dengan sisi 8");
  print("Luas : ${square.getArea()}");
  print("Keliling : ${square.getPerimeter()}");
  print("\nPersegi Panjang dengan panjang 4 dan lebar 7");
  print("Luas : ${rectangle.getArea()}");
  print("Keliling : ${rectangle.getPerimeter()}");
}

class Shape {
  int getArea() {
    return 0;
  }

  int getPerimeter() {
    return 0;
  }
}

class Circle implements Shape {
  int phi = 3;
  int r;

  Circle(this.r);

  @override
  int getArea() {
    int luasLingkaran = phi * r * r;
    return luasLingkaran;
  }

  @override
  int getPerimeter() {
    int perimeter = phi * 2 * r;
    return perimeter;
  }
}

class Square implements Shape {
  int sisi;

  Square(this.sisi);

  @override
  int getArea() {
    int luasPersegi = sisi * sisi;
    return luasPersegi;
  }

  @override
  int getPerimeter() {
    int kelilingPersegi = 4 * sisi;
    return kelilingPersegi;
  }
}

class Rectangle implements Shape {
  int panjang;
  int lebar;

  Rectangle(this.panjang, this.lebar);

  @override
  int getArea() {
    int luasPersegiPanjang = panjang * lebar;
    return luasPersegiPanjang;
  }

  @override
  int getPerimeter() {
    int kelilingPersegiPanjang = panjang * 2 + lebar * 2;
    return kelilingPersegiPanjang;
  }
}
