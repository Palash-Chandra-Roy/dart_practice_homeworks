//Dart Iterable Example

class Sentence implements Iterator {
  int _wordIndex = -1;
  List<String> _words = [];
  Sentence(String str) {
    this._words = str.split(' ');
  }
  @override
  get current {
    if (_wordIndex >= 0 && _wordIndex <= _words.length - 1) {
      return _words[_wordIndex];
    }
  }

  @override
  bool moveNext() {
    if (_wordIndex < _words.length - 1) {
      _wordIndex++;
      return true;
    }
    return false;
  }
}

void main() {
  Sentence sentence = Sentence("this is Iterator");
  while (sentence.moveNext()) {
    print(sentence.current);
  }

  Iterable<int> iterable = [1, 2, 3, 4, 5];
  for (var n in iterable) {
    print(n);
  }

  //dart Itarator example;
  var rating = [1, 2, 3, 4, 56, 7, 8];
  var it = rating.iterator;
  while (it.moveNext()) {
    print(it.current);
  }
}
