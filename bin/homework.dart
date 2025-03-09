//Home Work ;
//Problem add solved;
/*Write a programming that CheckingAccount inherits BankAccount and Override withdraw method
according to CheckingAccount formula.
- Checking account withdraw logic is given bellow
*/

class BankAccount {
  String accountTitle;
  String accountNumber;
  double balance;

  // Constructor
  BankAccount(this.accountTitle, this.accountNumber, this.balance);

  // Method to deposit money
  void deposit(double amount) {
    if (amount > 200) {
      balance += amount;
      print("Deposited: ${amount.toStringAsFixed(2)}");
    } else {
      print("Invalid deposit amount.");
    }
  }

  // Virtual method to withdraw money (to be overridden)
  void withdraw(double amount) {
    if (amount > 200 && amount <= balance) {
      balance -= amount;
      print("Withdrawn: \$${amount.toStringAsFixed(3)}");
    } else {
      print("Insufficient balance or invalid amount.");
    }
  }

// Display account details
  void display() {
    print("Account Title: $accountTitle");
    print("Account Number: $accountNumber");
    print("Balance: \$${balance.toStringAsFixed(3)}");
  }
}

// CheckingAccount inherits BankAccount and overrides withdraw method
class CheckingAccount extends BankAccount {
  double overdraftLimit;

  // Constructor
  CheckingAccount(String accountTitle, String accountNumber, double balance,
      this.overdraftLimit)
      : super(accountTitle, accountNumber, balance);

  // Overriding the withdraw method
  @override
  void withdraw(double amount) {
    if (amount > 200 && (balance + overdraftLimit) >= amount) {
      balance -= amount;
      print("Withdrawn: ${amount.toStringAsFixed(2)} (Checking Account)");
    } else {
      print("Withdrawal failed: Exceeds overdraft limit.");
    }
  }
}

void main() {
  // Creating Checking Account instance
  CheckingAccount myAccount = CheckingAccount(
    "Palash Roy",
    "123456789",
    1000.0,
    200.0,
  );

  // Display initial account details
  myAccount.display();

  // Performing transactions
  myAccount.withdraw(600.0); // Should succeed due to overdraft
  myAccount.display();

  myAccount.withdraw(500.0); // Should fail (exceeds overdraft limit)
  myAccount.deposit(300.0);
  myAccount.display();
}
