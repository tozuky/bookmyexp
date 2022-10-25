import 'package:bookmyxp/resources/example.dart';
import 'package:flutter/material.dart';

import 'account.dart';

class Event {
  DateTime start;
  DateTime end;
  String name;
  String description;
  int id;
  bool subscribed;
  int maxParticipants;
  List<Account> participants;

  Event({
    required this.start,
    required this.end,
    required this.name,
    this.description = "",
    required this.id,
    this.subscribed = false,
    required this.maxParticipants,
  }) : participants = [];

  void addParticipant(Account a) {
    if (participants.length < maxParticipants) {
      participants[-1] = a;
    }
  }

  void removeParticipant(Account a) {
    participants.remove(a);
  }
}

class EventListProvider with ChangeNotifier {
  Map<int, Event> events;

  EventListProvider() : events = <int, Event>{} {
    //TODO: get events from database
    for (var element in exampleEvents) {events[element.id] = element;}
  }

  void subscribeEvent(int id) {
    events[id]?.subscribed = true;
    notifyListeners();
  }

  void unsubscribeEvent(int id) {
    events[id]?.subscribed = false;
    notifyListeners();
  }

  void unsubscribeAllEvents() {
    events.forEach((key, value) {
      events[key]?.subscribed = false;
    });
    notifyListeners();
  }
}
