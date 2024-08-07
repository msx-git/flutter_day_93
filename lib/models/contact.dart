class Contact {
  final int contactId;
  final String contactName;
  final String contactLasName;
  final bool isOnline;
  final String imageUrl;
  final DateTime lastOnlineTime;

  Contact({
    required this.contactId,
    required this.contactName,
    required this.contactLasName,
    required this.isOnline,
    required this.imageUrl,
    required this.lastOnlineTime,
  });
}
