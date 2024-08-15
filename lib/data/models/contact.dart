
import 'dart:math';

class Contact {
  final int contactId;
  final String contactName;
  final String contactLasName;
  final bool isOnline;
  final String imageUrl;
  final DateTime lastOnlineTime;

  Contact({
    required this.contactId,
    required this.contactLasName,
    required this.contactName,
    required this.isOnline,
    required this.imageUrl,
    required this.lastOnlineTime,
  });
}


List<Contact> allContacts = [
  Contact(
    contactId: 3,
    contactLasName: "Alisher",
    contactName: "Falonchiyev",
    isOnline: true,
    imageUrl: "https://randomuser.me/api/portraits/men/${Random().nextInt(90) + 1}.jpg",
    lastOnlineTime: DateTime.now(),
  )
];