void main(List<String> args) {
  Araba ferrari = Araba(2000, "Ferrarı", true);
  ferrari.marka = "Ferrarı";
  ferrari.modelYili = 1947;
  ferrari.otomatikMi = true;
  ferrari.bilgileriSoyle();

  var reno = Araba(2019, "Reno", false);

  reno.bilgileriSoyle();

  var bmw = Araba(2021, "BMW", true);
  bmw.bilgileriSoyle();
  bmw.yasHesapla();

  var citroen = Araba.markasizKurucuMetot(false, 2015);
  Araba suzuki = Araba.modelYiliOlmayanKurucuMetot(true, "Suzuki");

 var fiat = Araba.constructorOrnegi(1997, "Fiat", false);

  suzuki.bilgileriSoyle();
  suzuki.yasHesapla();
}

class Araba {
  int? modelYili;
  String? marka;
  bool? otomatikMi;

  Araba(this.modelYili, this.marka, this.otomatikMi) {
    print("Kurucu metot tetiklendi");
  }

  Araba.markasizKurucuMetot(this.otomatikMi, this.modelYili);

  Araba.modelYiliOlmayanKurucuMetot(bool otomatikMi, String marka) {
    this.otomatikMi = otomatikMi;
    this.marka = marka;
  }

  Araba.constructorOrnegi(int modelYili, String marka, bool otomatikMi) {
    this.modelYili = modelYili;
    this.marka = marka;
    this.otomatikMi = otomatikMi;
  }

  void bilgileriSoyle() {
    print(
        "Arabanın model yili ${modelYili}, markası : ${marka} otomatik mi:${otomatikMi}");
  }

  void yasHesapla() {
    if (modelYili != null)
      print("Arabanın yaşı ${2021 - modelYili!}");
    else
      print("Model yılı olmadıgından yaş hesaplanamadı");
  }
}
