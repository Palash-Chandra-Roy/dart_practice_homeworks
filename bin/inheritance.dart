//Home Work:
/* Implement accountTitle and accountNumber attribute in the Bank Account
and use it as constructor parameter and make getter property for both then
print the value.
*/

class BankAccount {
  final String accountTitle;
  final String accountNumber;

  BankAccount(this.accountTitle, this.accountNumber);

  String get getAccountTitle => accountTitle;
  String get getAccountNumber => accountNumber;
}

void main() {
  BankAccount bankAccount = BankAccount("Palash Roy ", "palash1322025");
  print("Enter Your  AccountTitle :${bankAccount.accountTitle}");
  print("Enter your AccountNumber: ${bankAccount.accountNumber}");
}
