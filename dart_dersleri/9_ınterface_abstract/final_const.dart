
//Immutable değişmez
main(List<String> args) {
  /*
  var str = "mirac";
  str = "karaevli";

 
  final String str2 = "mirac";
  str2 = "karaevli";

  const String str3 = "mirac";
  str3 = "karaevli";
  */

/*
  const sayi = 5;
  final sayi2 = 10;

  final tarih = DateTime.now();
  const tarih2 = DateTime.now();*/

  /*  final liste = [1, 2, 3];
  final liste2 = [1, 2, 3];

  liste.add(4);
  liste2.add(8);

  liste = [5, 6]; */

  //canonicalized
  const liste = [1, 2];
  const liste2 = [1, 2];
  const liste3 = [1, 2];

  

  if (liste == liste2) {
    print("eşit");
  } else {
    print("eşit değil");
  }
}
