void main(List<String> args) {
  int sayi1 = 10;
  int sayi2 = 10;
  if (sayi1 < sayi2) {
    print("$sayi1 sayısı $sayi2'den küçüktür");
  } else if (sayi2 < sayi1) {
    print("$sayi2 sayısı $sayi1 sayısından küçüktür");
  } else {
    print("verdiğiniz sayılar birbirine eşittir");
  }

  print("**************************************");

  int notDegeri = 21;
  if (notDegeri > 90) {
    print("notunuz AA");
  }
  else if (notDegeri > 70) {
    print("notunuz BB");
  }
  else if (notDegeri > 50) {
    print("notunuz CC");
  } else {
    print("üzgünüz sınıfta kaldınız ");
  }
}
