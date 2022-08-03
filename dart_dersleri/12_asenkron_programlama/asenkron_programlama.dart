main(List<String> args) {
  print("anne cocugu ekmek almaya yollar");
  print("cocuk ekmek almak için evde çıkar");
  Future<String> sonuc = uzunSurenIslem();

  sonuc.then((String value) => print(value)).catchError((hata) {
    print(hata);
  }).whenComplete(() => print("Ekmek alma operasyonu bitti"));

  print("peynir zeytin hazırlanır");
  print("kahvaltı hazır!");
}

Future<String> uzunSurenIslem() {
  Future<String> sonuc = Future.delayed(Duration(seconds: 2), () {
    return "çocuk ekmekle eve girer";
  });
  return sonuc;
}
