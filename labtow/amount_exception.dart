class AmountException implements Exception {
  final String message;
  AmountException(this.message);
  @override
  String errorMessage() => "Amount should be getter then zero";
}

void withdrowAmount(int amount) {
  if (amount <= 0) {
    throw new AmountException("Amount should be greater than zero");
  }
  print("Withdrawal of \$${amount} successful");
}

void main() {
  try {
    withdrowAmount(-1);
  } catch (e) {
    print(e);
  } finally {
    print('Ending requested operation.....');
  }
}
