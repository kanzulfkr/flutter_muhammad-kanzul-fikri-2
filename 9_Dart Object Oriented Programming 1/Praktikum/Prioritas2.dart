class Course {
  String title;
  String description;
  Course(this.title, this.description);
}

class Student {
  String name;
  String className;
  List<Course> courses;
  Student(this.name, this.className, this.courses);

  void addCourse(Course course) {
    courses.add(course);
    print('Course ${course.title} berhasil ditambahkan!');
  }

  void removeCourse(Course course) {
    courses.remove(course);
    print('Course ${course.title} berhasil dihapus!');
  }

  void showCourses() {
    print('Daftar Course: ');
    int i = 1;
    for (var course in courses) {
      print('${i++} ${course.title} - ${course.description}');
    }
  }

  void showStudents() {
    print('Daftar Student : ');
    print('1. $name - $className');
  }
}

class Calculator {
  double a;
  double b;
  Calculator(this.a, this.b);

  void penambahan() {
    double result = a + b;
    print('Hasil dari ${a.toInt()} + ${b.toInt()} : ${result.toInt()}');
  }

  void pengurangan() {
    double result = a - b;
    print('Hasil dari ${a.toInt()} - ${b.toInt()} : ${result.toInt()}');
  }

  void perkalian() {
    double result = a * b;
    print('Hasil dari ${a.toInt()} * ${b.toInt()} : ${result}');
  }

  void pembagian() {
    double result = a / b;
    print('Hasil dari ${a.toInt()} / ${b.toInt()} : ${result}');
  }
}

void main() {
  Calculator call = Calculator(10, 5);
  call.penambahan();
  call.pengurangan();
  call.perkalian();
  call.pembagian();
  print('');
  Course belajarFlutter = Course('Flutter', 'Fundamental Flutter');
  Course belajarPhp = Course('PHP', 'Develop With PHP');
  Course belajarJava = Course('Java', 'OOP with Java');
  Student student = Student('Aditya', 'Kelas A', []);
  student.addCourse(belajarFlutter);
  student.addCourse(belajarPhp);
  student.addCourse(belajarJava);
  student.showStudents();
  print('');
  student.showCourses();
  print('');
  student.removeCourse(belajarPhp);
  student.showCourses();
}
