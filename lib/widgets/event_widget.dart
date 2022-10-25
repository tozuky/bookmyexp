import 'package:flutter/material.dart';
import 'package:bookmyxp/models/event.dart';
import 'package:provider/provider.dart';

class EventWidget extends StatelessWidget {
  final Event e;

  const EventWidget(this.e, {super.key});

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Text(e.name),
            Text(e.start.toString()),
            Text(e.end.toString()),
          ],
        ),
      ),
      onPressed: () {
        showDialog(
          context: context,
          builder: (BuildContext context) => eventPopupWidget(context, e),
        );
      },
    );
  }
}

Widget eventPopupWidget(BuildContext context, Event e) => AlertDialog(
      title: Text(e.name),
      content: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(e.start.toString()),
          Text(e.end.toString()),
          Container(height: 8),
          Text(e.description),
          Container(height: 8),
          Consumer<EventListProvider>(
            builder: (context, provider, child) => e.subscribed
                ? Row(
                    children: [
                      const Icon(Icons.check_circle),
                      const Text(" Vous êtes inscrit"),
                      TextButton(
                        onPressed: () {
                          provider.unsubscribeEvent(e.id);
                        },
                        child: const Text("Se désinscrire"),
                      )
                    ],
                  )
                : TextButton(
                    onPressed: () {
                      provider.subscribeEvent(e.id);
                    },
                    child: const Text("S'inscrire"),
                  ),
          ),
        ],
      ),
      actions: [
        TextButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          child: const Text('Fermer'),
        ),
      ],
    );

Widget eventListView(List<Event> events, {bool showOnlySubscribed = false, bool hideSubscribed = false}) {
  if (showOnlySubscribed) events = events.where((element) => element.subscribed).toList();
  if (hideSubscribed) events = events.where((element) => !element.subscribed).toList();
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: Container(
      margin: const EdgeInsets.all(2),
      width: 204, //TODO: adapt width according to screen width
      child: ListView.builder(
        itemCount: events.length,
        itemBuilder: (context, index) => Padding(
          padding: const EdgeInsets.only(bottom: 4.0),
          child: EventWidget(events[index]),
        ),
      ),
    ),
  );
}
