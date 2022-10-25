import 'package:bookmyxp/models/account.dart';
import 'package:bookmyxp/models/event.dart';

Account exampleAdminAccount = Account(0, true, "John", "Delacour");
Account exampleUserAccount = Account(1, false, "Maxime", "Perreira");

List<Event> exampleEvents = [
  Event(start: DateTime.now(), end: DateTime.now(), name: "Evènement 1", description: "Ceci est une description. Louis est gay.", id: 0, maxParticipants: 50),
  Event(start: DateTime.now(), end: DateTime.now(), name: "Evènement 2", description: "Ceci est une description. Louis est gay.", id: 1, maxParticipants: 50),
  Event(start: DateTime.now(), end: DateTime.now(), name: "Evènement 3", description: "Ceci est une description. Louis est gay.", id: 2, maxParticipants: 50),
  Event(start: DateTime.now(), end: DateTime.now(), name: "Evènement 4", description: "Ceci est une description. Louis est gay.", id: 3, maxParticipants: 50),
  Event(start: DateTime.now(), end: DateTime.now(), name: "Evènement 5", description: "Ceci est une description. Louis est gay.", id: 4, maxParticipants: 50),
  Event(start: DateTime.now(), end: DateTime.now(), name: "Evènement 6", description: "Ceci est une description. Louis est gay.", id: 5, maxParticipants: 50),
  Event(start: DateTime.now(), end: DateTime.now(), name: "Evènement 7", description: "Ceci est une description. Louis est gay.", id: 6, maxParticipants: 50),
  Event(start: DateTime.now(), end: DateTime.now(), name: "Evènement 8", description: "Ceci est une description. Louis est gay.", id: 7, maxParticipants: 50),
  Event(start: DateTime.now(), end: DateTime.now(), name: "Evènement 9", description: "Ceci est une description. Louis est gay.", id: 8, maxParticipants: 50),
  Event(start: DateTime.now(), end: DateTime.now(), name: "Evènement 10",description: "Ceci est une description. Louis est gay.", id: 9, maxParticipants: 50),
  Event(start: DateTime.now(), end: DateTime.now(), name: "Evènement 11", description: "Ceci est une description. Louis est gay.", id: 10, maxParticipants: 50),
  Event(start: DateTime.now(), end: DateTime.now(), name: "Evènement 12", description: "Ceci est une description. Louis est gay.", id: 11, maxParticipants: 50),
  Event(start: DateTime.now(), end: DateTime.now(), name: "Evènement 13", description: "Ceci est une description. Louis est gay.", id: 12, maxParticipants: 50),
  Event(start: DateTime.now(), end: DateTime.now(), name: "Evènement 14", description: "Ceci est une description. Louis est gay.", id: 13, maxParticipants: 50),
  Event(start: DateTime.now(), end: DateTime.now(), name: "Evènement 15", description: "Ceci est une description. Louis est gay.", id: 14, maxParticipants: 50),
];
