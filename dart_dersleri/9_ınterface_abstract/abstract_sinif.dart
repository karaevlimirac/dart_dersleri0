main(List<String> args) {
  Sekil s1 = Kare(3);
  print(s1.alanHesapla());
  print(s1.cevreHesapla());
  s1.selamla();

  Sekil s2 = Dikdortgen(4, 6);
  print(s2.alanHesapla());
  print(s2.cevreHesapla());
  s2.selamla();

  List<Kare> tumKareler = [];
  List<Dikdortgen> tumDikdortgenler = [];
  List<Sekil> tumSekiller = [];
  tumSekiller.add(s1);
  tumSekiller.add(s2);

  test(s1);
  test(s2);
}

void test(Sekil sekil) {
  sekil.selamla();
}

abstract class Sekil {
  double alanHesapla();
  double cevreHesapla();
  void selamla() {
    print("Ben sekil sınıfındanım");
  }
}

class Kare extends Sekil {
  int kenar;

  Kare(this.kenar);

  // inheritance
  @override
  double alanHesapla() {
    return kenar * kenar.toDouble();
  }
 // inheritance
  @override
  double cevreHesapla() {
    return kenar * 4.toDouble();
  }
// polymorphism
  @override
  void selamla() {
    print("Ben kare sınıfındanım");
  }
}

class Dikdortgen extends Sekil {
  int en, boy;

  Dikdortgen(this.en, this.boy);

  @override
  double alanHesapla() {
    return en * boy.toDouble();
  }

  @override
  double cevreHesapla() {
    return 2 * (en + boy).toDouble();
  }

  @override
  void selamla() {
    print("Ben dikdortgen sınıfındanım");
  }
}
