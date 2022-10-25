import 'package:bookmyxp/models/account.dart';
import 'package:bookmyxp/models/event.dart';
import 'package:bookmyxp/resources/example.dart';
import 'package:bookmyxp/widgets/event_widget.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class UserMainPage extends StatelessWidget {
  const UserMainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer<AccountProvider>(
      builder: (contextA, providerA, childA) => Scaffold(
        appBar: AppBar(
          leadingWidth: 250, //TODO: adapter en fonction de la taille de fenêtre
          leading: Row(
            children: [
              Container(width: 24),
              const Icon(Icons.account_circle),
              Container(width: 6),
              Text(
                  '${providerA.account.firstName} ${providerA.account.lastName.toUpperCase()}'),
            ],
          ),
          title: const Text("BOOK YOUR XP (CONCEPT)"),
        ),
        body: Center(
          child: Consumer<EventListProvider>(
            builder: (context, provider, child) => Row(
              children: [
                eventListView(provider.events.values.toList(), hideSubscribed: true),
                eventListView(provider.events.values.toList(), showOnlySubscribed: true),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
