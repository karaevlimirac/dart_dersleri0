main(List<String> args) {
  const Student mirac = Student(5, "mirac");
  final Student mirac2 = const Student(5, "mirac");
  var mirac3 = const Student(5, "mirac");
  mirac3 = const Student(5, "mirac");

  if (mirac == mirac3) {
    print("eşit");
  } else {
    print("eşit değil");
  }
}

class Student {
  final int id;
  final String isim;

  const Student(this.id, this.isim);
}
