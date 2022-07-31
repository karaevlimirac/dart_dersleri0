void main(List<String> args) {
  int sayi1 = 1;
  int sayi2 = 2;
  int kucukSayi;

  sayi1 < sayi2 ? kucukSayi = sayi1 : kucukSayi = sayi2;
  print("küçük sayı : $kucukSayi");
  String? ad = null;
  String? soyAd = "karaevli";
  String? mesaj;
  mesaj = ad ?? soyAd;
  print("Merhaba $mesaj");
}
