void main(List<String> args) {
  int sayi = 5;

  Ogrenci mirac = Ogrenci();
  mirac.ogrenciAd = "Mirac Karaevli";
  mirac.yasiyoMu = true;
  Ogrenci yahya = Ogrenci();

  Araba ford = Araba();

  ford.yas = 10;
  ford.renk = "Siyah";
  ford.motorgucu = 1300;
}

class Ogrenci {
  int ogrenciNo = 1870;
  String ogrenciAd = "mirac ";
  bool yasiyoMu = true;
}

class Araba {
  int yas = 0;
  String renk = "Yesil";
  int motorgucu = 1000;
}
