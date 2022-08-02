import 'veritabani_islemleri.dart';
main(List<String> args) {
  VeritabaniIslemleri db = VeritabaniIslemleri();
  bool sonuc = db.baglan();
  if (sonuc) {
    print("Baglandım");
  } else {
    print("Baglanamadım");
  }
}
