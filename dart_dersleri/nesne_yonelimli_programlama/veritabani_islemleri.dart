import 'dart:math';

class VeritabaniIslemleri {
  String _kullaniciAdi = "mirac";
  String _sifre = "123456";

  bool baglan() {
    if (_internetVarMi()) {
      if (_kullaniciAdi == "mirac" && _sifre == "123456") {
        return true;
      } else
        return false;
    } else {
      return false;
    }
  }

  bool _internetVarMi() {
    if (Random().nextBool()) {
      return true;
    } else
      return false;
  }
}
