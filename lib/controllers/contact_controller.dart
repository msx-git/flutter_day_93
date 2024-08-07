import '../models/contact.dart';

class ContactController {
  List<Contact> contacts = [
    Contact(
      contactId: 1,
      contactLasName: "Alisher",
      contactName: "Falonchiyev",
      isOnline: true,
      imageUrl: "",
      lastOnlineTime: DateTime.now(),
    )
  ];
}
