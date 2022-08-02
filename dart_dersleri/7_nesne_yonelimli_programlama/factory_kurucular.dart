main(List<String> args) {
  Ogrenci mirac = Ogrenci(5, "mirac");
  Ogrenci yahya = Ogrenci.idSiz("yahya");
  Ogrenci dogukan = Ogrenci.factoryKurucusu(-9, "dogukan");

  print(dogukan.id);
  print(dogukan.isim);
  int sayi = toplam();
}

int toplam() {
  return 3 + 5;
}

class Ogrenci {
  int id = 0;
  String isim = "";

  Ogrenci(this.id, this.isim) {
    print("Varsayılan kurucu calıstı");
    
  }

  Ogrenci.idSiz(this.isim) {
    print("İsimlendirilmiş kurucu çalıştı");
  }

  factory Ogrenci.factoryKurucusu(int id, String isim) {
    if (id < 0) {
      return Ogrenci(5, isim);
    } else
      return Ogrenci(id, isim);
  }
}
