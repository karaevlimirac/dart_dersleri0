import 'dart:io';
import 'dart:math';

void main(List<String> args) {
  //1) şehirleri tutan bir liste oluşturun,4 tane il ekleyip sırasıyla ekrana yazdırın.
  List<String> sehirler = List.filled(4, '');
  sehirler[0] = 'İstanbul';
  sehirler[1] = 'adıyaman';
  sehirler[2] = 'malatya';
  sehirler[3] = 'konya';

  for (int i = 0; i < sehirler.length; i++) print(sehirler[i]);

  //2)keyleri string, değerleri dynamic olan bir map oluşturun. Bu map yapısında bilgisayarınızın işlemci çekirdek sayısını, ram miktarını ve ssd olup olmadığı bilgisini tutun  ve ekrana yazdırın.
  // ilk olarak map yapsını oluşturduk bilgi nesnesi ile birlikte boş olarak tanımladık, ardından boş olan map i key-value lar ile doldurup for döngüsüyle yazdırdık.
  //Burda entries metodu ile çağırcağımız key-value ları tek tek değilde ikisini bi anda yazdık.
  //entries metodunu kullanmasaydık ayrı ayrı önce key i sonra da value yi yazdırıcaktık.
  Map<String, dynamic> bilgi = {};
  bilgi['cekirdek_sayisi'] = 16;
  bilgi['Ram_miktari'] = 8;
  bilgi['ssd_varmi'] = true;

  for (var oankiEntry in bilgi.entries) {
    print("cekirdek sayisi ${oankiEntry.key}:  ${oankiEntry.value}");
  }

  /* 3) Her bir elemanında keyleri string, valueleri dynamic olan bir map oluşturun.
  Bu listedeki her eleman il adını , ilçe sayısını, plaka kodunu tutsun. 
  Sonrasında da bu listeyi okunaklı bir şekilde yazdırın  
  örnek listenin 1. elemanında bulunan il ankara, plaka kodu: 06, ilçe sayısı 10(değerler rastgele olabilir).
 */

//ilk olarak map yapısını oluşturduk iller adlı nesneyle birlikte boş olarak tanımladık ,ardından eklenecekSehir adlı nesneleri oluşturduk ve içerisine key-value lar girdik ve bunları boş map lerin içerisine ekledik, daha sonra bir for döngüsüyle bunları teker teker yazdırdık
// key-value lara erişip yazmak içinse köşeli parantezi kullandık "[]".
  List<Map<String, dynamic>> iller = <Map<String, dynamic>>[];
  Map<String, dynamic> eklenecekSehir1 = Map<String, dynamic>();
  eklenecekSehir1['il_adi'] = 'adıyaman ';
  eklenecekSehir1['ilce_sayisi'] = 14;
  eklenecekSehir1['plaka_kodu'] = 02;

  Map<String, dynamic> eklenecekSehir2 = <String, dynamic>{};
  eklenecekSehir2['il_adi'] = 'istanbul';
  eklenecekSehir2['ilce_sayisi'] = 16;
  eklenecekSehir2['plaka_kodu'] = 34;

  var eklenecekSehir3 = <String, dynamic>{};
  eklenecekSehir3['il_adi'] = 'malatya';
  eklenecekSehir3['ilce_sayisi'] = 19;
  eklenecekSehir3['plaka_kodu'] = 44;

  iller.add(eklenecekSehir1);
  iller.add(eklenecekSehir2);
  iller.add(eklenecekSehir3);

  iller.add({'il_adi': 'izmir', 'ilce_sayisi': 9, 'plaka_kodu': 35});

  for (int i = 0; i < iller.length; i++) {
    var oankiSehirMapYapisi = iller[i];
    print(
        "Listenin ${i + 1}.elemanında bulunan sehir adı: ${oankiSehirMapYapisi['il_adi']} ilce sayısı : ${oankiSehirMapYapisi['ilce_sayisi']} plaka kodu ${oankiSehirMapYapisi['plaka_kodu']} ");
  }

// 5 elemanlı 2 farklı liste oluşturun. Elemanlar 0-50 ye kadar rastgele şekilde oluşturulsun.
//Bu elemanları tek bir listeye aktarın
// oluşan son listenin elemanlarının karelerini tutan set yapısı oluşturup ekrana yazdırın.

// önce 2 farklı liste oluşturdum ve 5 elemanlı olarak tanımladım sonra bir for döngüsü ile her bir elemanına 0 dan 50 ye kadar rast gele bir değer atadım. Son olarak yeni bir liste ve set yapısı oluşturdum , çıkan değerleri yeni listeye aktarıp oradan da set yapısına aktardım ve karelerini yazdırdım.
//.filled metodunu listenin uzunluğunu biliyorsak kullanırız. Random zaten rastgele demek isminden anlaşılcağı üzere rastgele sayılar vermeye yarar. .nextInt metodu ise 50 ye kadar rastgele değer vermemizi sağlar.

  List<int> liste1 = List.filled(5, 0);
  var liste2 = List.filled(5, 0);
  List<int> sonListe = <int>[];
  var sonSetYapisi = <int>{};

  for (var i = 0; i < 5; i++) {
    liste1[i] = Random().nextInt(50);
    liste2[i] = Random().nextInt(50);
  }

  sonListe = [...liste1, ...liste2];

  for (int gecici in sonListe) {
    sonSetYapisi.add(gecici * gecici);
  }

  print(sonListe);
  print(sonSetYapisi);

// Kullanıcıdan aldığınız integer pozitif  sayıları bir listede tutun, kullanıcı değeri -1 girdiğinde girilen  sayıların ortalamasını ekrana yazdırın.

//önce bir nesne oluşturduk sonra boş bir liste ,sonra do while dögüsü ile kullanıcıdan değer girmesini istedik eğer girdiği değer -1 olursa döngüyü bitirir. -1 yazmasa döngü devam eder ve girilen değerler girilen not nesnesinde toplanır ve listenin ortalamasını bul metodunda ortalaması alınır ve terminalde çıktısı gösterilir.

//stdin.readLineSync metodunun yanına ! koymamızın sebebi eğer kullanıcı null (boş) bir değer girerse hata almamak içindir bunu programa null değer gelmeyecek sorun yok şeklinde anlatmış oluruz.
  int girilenNot = 0;
  List<int> girilenNotlar = <int>[];
  //List<int> girilenNotlar2 = List.empty(growable:true);
  do {
    print("Lütfen notunuzu giriniz ,çıkış için -1");
    girilenNot = int.parse(stdin.readLineSync()!);
    if (girilenNot != -1) {
      girilenNotlar.add(girilenNot);
    }
  } while (girilenNot != -1);

  print("Kaç tane not girildi ${girilenNotlar.length}");
  double ortalama = listeninOrtalamasiniBul(girilenNotlar);
  print("Notların ortalaması $ortalama");
}

double listeninOrtalamasiniBul(List<int> liste) {
  int toplam = 0;
  for (var i = 0; i < liste.length; i++) {
    toplam = toplam + liste[i];
  }
  return toplam / liste.length;
}
