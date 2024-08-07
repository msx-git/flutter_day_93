class Message {
  final int messageId;
  final String messageText;
  final bool isFile;
  final String createdTime;
  final int contactId;
  final bool isSeen;

  Message({
    required this.messageId,
    required this.messageText,
    required this.isFile,
    required this.createdTime,
    required this.contactId,
    required this.isSeen,
  });
}
