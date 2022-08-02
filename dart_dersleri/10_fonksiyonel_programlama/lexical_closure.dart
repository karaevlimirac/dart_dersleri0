//lexical variable scope

//fonksiyonların içine foknsiyonlar tanımlayabilriz. ve en altta ki fonksiyondan diğer fonksiyonlara erisim sağlayabilririz.
main(List<String> args) {
  var mainDegiskeni = 1;

  void a() {
    var aDegiskeni = 2;
    void b() {
      var bDegiskeni = 3;
      print(aDegiskeni);
      print(mainDegiskeni);
    }
  }

  var dondurulenFonksiyon = topla(3);
  var sonuc = dondurulenFonksiyon(4);
  print(sonuc);
}

Function topla(int eleman) {
  return (int deger) => eleman * deger;
}
