void main(List<String> args) {
  List<int> liste = [1, 2, 3];

  liste.forEach(callback);
  kendiForEachyapim(liste, (int deger, int index) {
    print("değer $deger ve index $index");
  });
}

void kendiForEachyapim(List<int> liste, Function callback) {
  for (int i = 0; i < liste.length; i++) {
    callback(liste[i], i);
  }
}

void ismimiSoyle(String name) {
  print(name);
}

void callback(int element) {
  print("Element $element");
}
