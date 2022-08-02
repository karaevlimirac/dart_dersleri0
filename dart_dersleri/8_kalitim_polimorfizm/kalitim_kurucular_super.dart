main(List<String> args) {
  Asker mirac = Asker("mirac", 21);
  Er yahya = Er("yahya", 19);
  yahya.memleketDegistir("adıyaman");
  yahya.selamla();
}

class Asker {
  String ad = "Varsayılan";
  int yas = 0;
  String memleket = "malatya";
  Asker(this.ad, this.yas) {
    print("Asker sınıfının kurucusu çalıştı");
  }

  void selamla() {
    print("Merhaba adım $ad ve yasım $yas");
  }
}

class Er extends Asker {
  Er(String ad, int yas) : super(ad, yas) {
    print("Er sınıfının kurucusu çalıştı");
  }

  void memleketDegistir(String yeniMemleket) {
    super.memleket = yeniMemleket;
  }

  @override
  void selamla() {
    print("Er sınıfndan selamlar");
  }
}
