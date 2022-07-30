void main(List<String> args) {
  cevreyiHesapla();
  hacimHesapla(int, 8, 9, 10);
  print(hacimHesapla);
}

int hacimHesapla(int, en, int boy, int yukseklik) {
  return en * boy * yukseklik;
}

cevreyiHesapla() {
  int en = 6, boy = 10;
  int cevre = (en + boy) * 2;
  print("çevre değeri $cevre");
}
