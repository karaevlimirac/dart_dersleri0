void main(List<String> args) {
  double sayi1 = 52.6;
  double sayi2 = 23.4;
  double sayi3 = 91.5;
  var ortalama = sayi1 + sayi2 + sayi3 / 3;
  print("ortalamanız $ortalama");
  print("****************************************");

  int kenar1 = 5;
  int kenar2 = 6;
  int kenar3 = 7;

  if ((kenar1 == kenar2) && (kenar1 == kenar3)) {
    print("kenarlarını girdiğiniz üçgen eşkanerdır");
  } else if ((kenar1 != kenar2) && (kenar1 != kenar3) && (kenar2 != kenar3)) {
    print("kenarlarını girdiğiniz üçgen çeşitkenardır");
  }
  print("-----------------------------------------");

  String notDegeri = "BA";
  switch (notDegeri) {
    case "AA":
      print("notunuz 90-100 aralığındadır");
      break;
    case "BA":
      print("notunuz 80-90 aralığındadır");
      break;
    case "BB":
      print("notunuz 70-80 aralığındadır");
      break;
    case "CB":
      print("notunuz 60-70 aralığındadır");
      break;
    case "CC":
      print("notunuz 50-60 aralığındadır");
      break;
    case "FF":
      print("notunuz 40-50 aralığındadır");
      break;
    default:
      {
        print("hatalı değer girildi");
      }
  }
  print("---------------------------------------");

  for (int i = 0; i < 5; i++) {
    print("mirac karaevli");
  }
  print("---------------------------------------");

  String isim = "mirac karaevli";
  for (int i = 0; i < 5; i++) {
    print("benim adım " + isim);
  }
 
}
