void main(List<String> args) {
  for (int i = 0; i < 10; i++) {
    print("mirac karaevli");

    if (i % 2 == 0) {
      print("$i");
    }
  }
  List isimListesi = ["mirac", "dogukan", "yahya"];
  for (String gecici in isimListesi) {
    print("$gecici");
  }
  for (int i = 0; i < isimListesi.length; i++) {
    print("okunan eleman " + isimListesi[i]);
  }
  int sayac = 0;
  while (sayac < 3) {
    print("okunan sayaç değeri $sayac");
    sayac++;
  }


int  sayac2  = 0;
do{
  print("okunan sayac değeri $sayac2");
  sayac2++; 
  }while(sayac2<5);


}
