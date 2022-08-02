main(List<String> args) {
  int toplam = sayilariTopla(9, sayi2: 5, sayi1: 8, sayi3: 8);
  print("Toplam $toplam");

  int hacim = hacimHesapla(boy: 5, en: 3, yukseklik: 10);
  print("Hacim $hacim");
}

int sayilariTopla(int sayi4, {int sayi1 = 0, int sayi2 = 0, int sayi3 = 0}) {
  return sayi4 + sayi1 + sayi2 + sayi3;
}

int hacimHesapla({int en = 1, int boy = 1, int yukseklik = 1}) {
  return en * boy * yukseklik;
}
