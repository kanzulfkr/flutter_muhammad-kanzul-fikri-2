class Buku {
  final int id;
  final String judul;
  final String penerbit;
  final double harga;
  final String kategori;
  Buku(this.id, this.judul, this.penerbit, this.harga, this.kategori);
}

class TokoBuku {
  List<Buku> _bukuList = [];

  void addBuku(Buku buku) {
    _bukuList.add(buku);
  }

  List<Buku> getBuku() {
    return _bukuList;
  }

  void getAllBuku() {
    for (int i = 0; i < getBuku().length; i++) {
      print(
          'ID: ${getBuku()[i].id}, Judul: ${getBuku()[i].judul}, Penerbit: ${getBuku()[i].penerbit}, Harga: ${getBuku()[i].harga}, Kategori: ${getBuku()[i].kategori}');
    }
  }

  void deleteBuku(int id) {
    _bukuList.removeWhere((buku) => buku.id == id);
  }
}

void main() {
  TokoBuku tokoBuku = TokoBuku();
  tokoBuku.addBuku(
    Buku(1, 'Harry Potter', 'Bloomsbury', 20000, 'Novel'),
  );
  tokoBuku.addBuku(
    Buku(2, 'John English', 'Strom Wheere', 50000, 'Novel'),
  );

  print('Semua data buku:');
  tokoBuku.getAllBuku();
  tokoBuku.deleteBuku(1);
  print('\nSetelah menghapus buku dengan ID 1:');
  tokoBuku.getAllBuku();
}
