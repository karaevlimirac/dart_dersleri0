import 'dart:collection';
main(List<String> args) {
  Map<String, int> alanKodlari = {"adıyaman": 312, "malatya": 224, "istanbul": 212};

  print(alanKodlari);
  print(alanKodlari["malatya"]);

  Map<String, dynamic> mirac = {
    "soyad": "karaevli",
    "yas": 16,
    "bekarMi": true
  };

  List sayilar = [0, 1, 2];

  Map<String, dynamic> deneme = Map();
  Map<String, dynamic> deneme2 = {};

  deneme2['yas'] = 55;
  print(mirac['yas']);

  for (String oankiAnahtar in mirac.keys) {
    print(oankiAnahtar);
    print(mirac[oankiAnahtar]);
  }

  for (dynamic deger in mirac.values) {
    print(deger);
  }

  for (var element in mirac.entries) {
    print("Key : ${element.key} değeri : ${element.value}");
  }

  if (mirac.containsKey('yas')) {
    print("Bulunan yaş değeri ${mirac['yas']}");
  }

  
  print(mirac);
}
