void main(List<String> args) {
  String isim = "mirac";
  String soyIsim = "karaevli";
  var kurs = "Dart\'ın kullanımı";
  print(kurs);
  print("ismim $isim soyismim $soyIsim -------------");
  print("soyadım olan $soyIsim'de ki karakter sayısı " +
      soyIsim.length.toString());
  print("karakter sayısı ${soyIsim.length}");
  double en = 10;
  double boy = 12;
  print("eni ${en.toInt()} ve boyu ${boy.toInt} olan dikdörtgenin alanı ${(en * boy).toInt()}");
}
