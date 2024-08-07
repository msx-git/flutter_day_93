import '../models/message.dart';

class MessageController {
  List<Message> messages = [
    Message(
      createdTime: "2024-03-25 20:41:11.366752",
      messageText: "Vazifa nima bo'ldi alisher?",
      messageId: 1,
      isFile: false,
      contactId: 3,
      isSeen: true,
    ),
    Message(
      createdTime: "2024-04-20 20:41:11.366752",
      messageText: "https://bilimlar.uz/wp-content/uploads/2021/02/k100001.pdf",
      messageId: 1,
      isFile: true,
      contactId: 3,
      isSeen: true,
    ),
  ];
}
