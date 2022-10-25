import 'package:flutter/material.dart';

class Account {
  int id;
  bool isAdmin;
  String firstName;
  String lastName;

  Account(this.id, this.isAdmin, this.firstName, this.lastName);
  Account.loggedOut()
      : id = -1,
        isAdmin = false,
        firstName = "Prénom",
        lastName = "Nom";
}

class AccountProvider with ChangeNotifier {
  Account account;

  AccountProvider() : account = Account.loggedOut();

  void logIn(Account acc) {
    account = acc;
    notifyListeners();
  }

  void logOut() {
    account = Account.loggedOut();
    notifyListeners();
  }
}
