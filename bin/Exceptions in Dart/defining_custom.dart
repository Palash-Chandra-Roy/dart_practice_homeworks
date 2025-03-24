class AmountException implements Exception {
  String errMessage() => "This is Error exception";
}

void withdraw_amt(int amt) {
  if (amt <= 0) {
    throw new AmountException();
  }
}

void main() {
  try {
    withdraw_amt(-1);
  } catch (e) {
    if (e is AmountException) {
      print(e.errMessage());
    } else {
      print("An Unknown error respected ");
    }
  } finally {
    print("thsi is finally Amount");
  }
}
