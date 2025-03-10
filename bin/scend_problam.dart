import 'dart:math';

class BankAccount {
  double _balance = 200.0;

  //Getter

  double get balance => _balance;
  //Setter
  set deposite(double amount) {
    if (amount > 0) {
      _balance += amount;
      print("Diposite Balance:$amount");
    } else {
      print("Diposite balance must be progetive");
    }
  }

  //Method
  void withdrow(amount) {
    if (amount > 0 && amount <= _balance) {
      _balance -= amount;

      print("Witdrow Balance: $amount");
    } else {
      print("Withdrow balance Not valid ");
    }
  }
}

void main() {
  //Object
  BankAccount account = BankAccount();

  account.deposite = 500.00;

  print("Current Balance: ${account.balance}");
  account.withdrow(200.00);

  print("Current Balance: ${account.balance}");
  account.withdrow(100.00);

  print("Current Balance: ${account.balance}");
}
