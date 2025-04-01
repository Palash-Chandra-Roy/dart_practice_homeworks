void main() {
  print("start Mian");

  Future.delayed(Duration(seconds: 5), () {
    print("This is Delayed ");
  });

  Future(() {
    print("Only Future ");
  });

  Future.microtask(() {
    print("This is microtask");
  });
}
