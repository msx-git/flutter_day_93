class MessageModel {
  final int messageId;
  final String messageText;
  final bool isFile;
  final String createdTime;
  final int contactId;
  final bool status;

  MessageModel({
    required this.createdTime,
    required this.messageText,
    required this.messageId,
    required this.isFile,
    required this.contactId,
    required this.status,
  });
}

List<MessageModel> allMessages = [
  MessageModel(
    createdTime: "2024-03-25 20:41:11.366752",
    messageText: "Vazifa nima bo'ldi?",
    messageId: 1,
    isFile: false,
    contactId: 3,
    status: true,
  ),
  MessageModel(
    createdTime: "2024-04-20 20:41:11.366752",
    messageText: "https://bilimlar.uz/wp-content/uploads/2021/02/k100001.pdf",
    messageId: 1,
    isFile: true,
    contactId: 3,
    status: true, //o'qilganmi yoki o'qilmaganmi
  ),
  MessageModel(
    createdTime: "2024-03-25 20:41:11.366752",
    messageText: "Vazifa nima bo'ldi?",
    messageId: 1,
    isFile: false,
    contactId: 3,
    status: true,
  ),
  MessageModel(
    createdTime: "2024-04-20 20:41:11.366752",
    messageText: "https://bilimlar.uz/wp-content/uploads/2021/02/k100001.pdf",
    messageId: 1,
    isFile: true,
    contactId: 3,
    status: true, //o'qilganmi yoki o'qilmaganmi
  ),
  MessageModel(
    createdTime: "2024-03-25 20:41:11.366752",
    messageText: "Vazifa nima bo'ldi?",
    messageId: 1,
    isFile: false,
    contactId: 3,
    status: true,
  ),
  MessageModel(
    createdTime: "2024-04-20 20:41:11.366752",
    messageText: "https://bilimlar.uz/wp-content/uploads/2021/02/k100001.pdf",
    messageId: 1,
    isFile: true,
    contactId: 3,
    status: true, //o'qilganmi yoki o'qilmaganmi
  ),
  MessageModel(
    createdTime: "2024-03-25 20:41:11.366752",
    messageText: "Vazifa nima bo'ldi?",
    messageId: 1,
    isFile: false,
    contactId: 3,
    status: true,
  ),
  MessageModel(
    createdTime: "2024-04-20 20:41:11.366752",
    messageText: "https://bilimlar.uz/wp-content/uploads/2021/02/k100001.pdf",
    messageId: 1,
    isFile: true,
    contactId: 3,
    status: true, //o'qilganmi yoki o'qilmaganmi
  ),
  MessageModel(
    createdTime: "2024-03-25 20:41:11.366752",
    messageText: "Vazifa nima bo'ldi?",
    messageId: 1,
    isFile: false,
    contactId: 3,
    status: true,
  ),
  MessageModel(
    createdTime: "2024-04-20 20:41:11.366752",
    messageText: "https://bilimlar.uz/wp-content/uploads/2021/02/k100001.pdf",
    messageId: 1,
    isFile: true,
    contactId: 3,
    status: true, //o'qilganmi yoki o'qilmaganmi
  ),
];
