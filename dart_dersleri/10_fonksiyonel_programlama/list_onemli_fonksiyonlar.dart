main(List<String> args) {
  Person mirac = Person(3, "mirac");
  Ogrenci yahya = Ogrenci(1, "yahya,", 6);
  Person dogukan = Ogrenci(7, "dogukan", 15);
  var yunus = Person(4, "yunus");
  var ali = Ogrenci(9, "ali", 2);

  List<Person> tumOgrenciler = [mirac, yahya, dogukan, yunus, ali];

  tumOgrenciler.sort((ogr1, ogr2) {
    if (ogr1.id < ogr2.id) {
      return 1;
    } else if (ogr1.id > ogr2.id) {
      return -1;
    } else
      return 0;
  });

  print(tumOgrenciler);
  var maplist = tumOgrenciler.map((Person e) => "${e.id}").toSet();
  print(maplist);

  tumOgrenciler.add(yunus);
  tumOgrenciler.addAll([dogukan, ali]);

  print(tumOgrenciler);

  bool sonuc = tumOgrenciler.any((Person element) => element.id > 3);
  print(sonuc);

  Map<int, Person> yeniMap = tumOgrenciler.asMap();
  print(yeniMap[0]!.id);
  print(tumOgrenciler.contains(Person(3, "mirac")));
  bool sonucEvery = tumOgrenciler.every((element) => element.isim.length > 0);
  print(sonucEvery);
  var bulunan = tumOgrenciler.every((element) => element.id == 1);
  print(bulunan);
  /*
  var liste1 = List<Ogrenci>.filled(5, Ogrenci(0, "", 0));
  var listeFrom = List<Ogrenci>.from(tumOgrenciler.whereType<Ogrenci>());
  var listeOf = List<Ogrenci>.of(tumOgrenciler.whereType<Ogrenci>());

  var listGenerate =
      List<Ogrenci>.generate(5, (index) => Ogrenci(index, "$index", index * 2));

  print(listGenerate);

  print(listeOf);

  var degistirilemezListe = List.unmodifiable([0, 1, 2]);
  //degistirilemezListe.add(5);
  print(degistirilemezListe.reversed);*/
}

class Person {
  int id = 0;
  String isim = "";

  Person(this.id, this.isim);
  @override
  String toString() {
    return "id:$id ve isim : $isim\n";
  }
}

class Ogrenci extends Person {
  int alinanDersSayisi = 0;
  Ogrenci(id, isim, alinanDersSayisi) : super(id, isim);

  @override
  String toString() {
    // TODO: implement toString
    return "id:$id ve isim : $isim ve alinan ders sayısı:$alinanDersSayisi\n";
  }
}
