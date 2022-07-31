main(List<String> args) {}

class User {
  String email = "";
  String password = "";
  void girisYap() {
    print("Normal user giris yaptı");
  }
}

class NormalUser extends User {
  String email = "";
  String password = "";
  void girisYap() {
    print("Normal user giris yaptı");
  }
}

class SadeceOkuyabilenUser extends NormalUser {
  void adiniSoyle() {
    print("Ben sadece okuyabilirim");
  }
}

class AdminUser extends User {
  String email = "";
  String password = "";
  void girisYap() {
    print("Normal user giris yaptı");
  }

  void toplamKullanciSayisiniGoster() {
    print("Toplam user sayısı 21");
  }
}
