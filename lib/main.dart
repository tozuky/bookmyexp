import 'package:bookmyxp/models/account.dart';
import 'package:bookmyxp/resources/example.dart';
import 'package:flutter/material.dart';
import 'package:bookmyxp/pages/login_page.dart';
import 'package:provider/provider.dart';

import 'models/event.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => AccountProvider(),
        ),
        ChangeNotifierProvider(
          create: (context) => EventListProvider(),
        ),
      ],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Book my XP',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const LoginPage(),
    );
  }
}
