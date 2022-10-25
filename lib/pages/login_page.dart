import 'package:bookmyxp/pages/admin_main_page.dart';
import 'package:bookmyxp/pages/user_main_page.dart';
import 'package:bookmyxp/resources/example.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../models/account.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Row(
          children: [
            const Spacer(),
            Consumer<AccountProvider>(
              builder: (context, provider, child) => ElevatedButton(
                  onPressed: () {
                    provider.logIn(exampleAdminAccount);
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const AdminMainPage()));
                  },
                  child: const Text("Se connecter en tant qu'administrateur")),
            ),
            const Spacer(),
            Consumer<AccountProvider>(
              builder: (context, provider, child) => ElevatedButton(
                  onPressed: () {
                    provider.logIn(exampleUserAccount);
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const UserMainPage()));
                  },
                  child: const Text("Se connecter en tant qu'utilisateur")),
            ),
            const Spacer(),
          ],
        ),
      ),
    );
  }
}
