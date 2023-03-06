void main(List<String> args) {
  asyncMultiplication([1, 2, 3, 4], 2);
}

void asyncMultiplication(List<int> data, int multiplier) async {
  List<int> newData = [];
  for (int i in data) {
    int result = await Future.value(i * multiplier);
    newData.add(result);
  }
  print('1. Membuat sebuah list : ');
  print(data);
  print('Hasil kali list dengan nilai kali 2 : ');
  print(newData);
}
