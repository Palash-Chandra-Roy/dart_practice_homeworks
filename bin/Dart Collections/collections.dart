void main() {
  //Dart lsit Example
  var lst = [1, 2, 3, 4, 5, 6];
  lst.add(7);
  lst.remove(1);
  lst.removeAt(3);

  print(lst);
  print("Length; ${lst.length}");
  print(lst.isEmpty);

  print(lst.isNotEmpty);

  var sets = {1, 2, 3, 4, 5, 6, 7};
  print(sets.length);
//Dart set Example
  var a = {1, 2, 3, 5, 7};
  var b = {3, 2, 1};
  var c = a.intersection(b);
  print(c);

  //Dart map Example

  var company = {
    "name": "R2AIT",
    "id": "R2AIT000",
    "logo": "images",
    "data": "21212",
  };

  print(company);

  var product = {
    'name': "Apple iPhone 12",
    "size": "6.1 inches",
    "price": 80000.00
  };
  print(product.isEmpty); // false
  print(product.isNotEmpty); // true
  print(product.length); // 3
  print(product.keys); // (name, size,price)
  print(product.values); // (Apple iPhone 12, 6.1 inches, 80000.00)
  print(product
      .entries); // (MapEntry(name: Apple iPhone 12), MapEntry(size: 6.1 inches), MapEntry(price:80000.00))
}
