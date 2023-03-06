void main() {
  List<dynamic> setList = [
    'js',
    'js',
    'js',
    'golang',
    'python',
    'js',
    'js',
    'golang',
    'rust'
  ];

  languageList(setList);
  frequencyList(setList);
}

void languageList(List<dynamic> setList) {
  List<dynamic> setFinalList = setList.toSet().toList();
  print('1. Menghilangkan nilai atau data yang sama pada sebuah data');
  print('List awal : ');
  print('$setList');
  print('List terakhir : ');
  print('$setFinalList');
}

void frequencyList(List<dynamic> setList) {
  Map frequency = {};
  for (var item in setList) {
    int count = 0;
    for (var i = 0; i < setList.length; i++) {
      if (item == setList[i]) {
        count++;
      }
    }
    frequency[item] = count;
  }

  // Menampilkan hasil
  print('');
  print('2. Menghitung frequency pada setiap data di dalam sebuah list : ');
  print('List : $setList');
  print('Frequency: $frequency');
}
