class PairInt {
  int x;
  int y;
  PairInt(this.x, this.y);
  void show() => print("x=$x,y=$y");
}

class PairString {
  String x;
  String y;
  PairString(this.x, this.y);
  void show() => print("x=$x,y=$y");
}

void main() {
  var pairInt = PairInt(10, 20);
  pairInt.show();
  var pairString = PairString("Md", "Babul");
  pairString.show();
}
