void main(List<String> args) {
  // Listeleri böyle kısa bir şekilde de türlerini belirtebilriz.
  var listem = <String>[];
  //setler bu şekilde de tanımlanabilir ama içerisine tek bir değer verirsek bu olur.
  var mySet = {'yas'};
  // Bu sefer de map tanımlamış olduk çünkü iki nokta ile birlikte bir value eklemiş olduk.
  // Ayrıca yazdığımız key ve value nin türünüde bu şekilde sırasıyla belirtebilririz.
  var mySet2 = <String, dynamic>{'yas': 34};

  var tekSayilar = [1, 3, 5];
  var ciftSayilar = [2, 4, 6];

  //spreads operator ile tek tek listemize diğer listenin elemanlarını eklemiş olduk.
  var sonListe = [...tekSayilar, ...ciftSayilar];

// addAll ile tüm elemanları eklemiş olduk
/*   sonListe.addAll(tekSayilar);
  sonListe.addAll(ciftSayilar); */

//spreads map lerde de geçerlidir yine aynı kullanılır.
  var map1 = {'ad': 'mirac'};
  var map2 = {'yas': 16};
  var sonMap = {...map1, ...map2};

//setler de durum farklı çünkü setlerin bir elemanı tek bir kez geçirme özelliği olduğundan mütevellit yine burda da tek bir kez geçirilir.
  var set1 = {'yahya'};
  var set2 = {'mirac'};
  var set3 = {'yahya'};
  var set4 = {'dogukan'};

  var sonSetYapisi = {...set1, ...set2, ...set3, ...set4};

  print(sonSetYapisi);
  print(sonMap);
  print(sonListe);
}
