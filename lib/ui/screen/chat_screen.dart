import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:path_provider/path_provider.dart';

import '../../data/models/message.dart';

class ChatScreen extends StatelessWidget {
  final int contactId;

  const ChatScreen({super.key, required this.contactId});

  Future<void> _downloadFile(
      String url, String fileName, BuildContext context) async {
    try {
      Dio dio = Dio();
      var dir = await getApplicationDocumentsDirectory();
      if (context.mounted) {
        showDialog(
          context: context,
          barrierDismissible: false,
          builder: (context) =>
              const Center(child: CircularProgressIndicator()),
        );
      }
      await dio.download(url, "${dir.path}/$fileName").then(
        (value) {
          if (context.mounted) {
            Navigator.of(context).pop();
          }
        },
      );
    } catch (e) {
      print("Download failed: $e");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Chat')),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: allMessages.length,
              itemBuilder: (context, index) {
                final message = allMessages[index];
                return ListTile(
                  title: message.isFile
                      ? GestureDetector(
                          onTap: () {
                            _downloadFile(message.messageText,
                                "downloaded_file", context);
                          },
                          child: Text(
                            'File: ${message.messageText}',
                            style: const TextStyle(
                                color: Colors.blue,
                                decoration: TextDecoration.underline),
                          ),
                        )
                      : Text(message.messageText),
                );
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                const Expanded(
                  child: TextField(
                    decoration: InputDecoration(
                      labelText: 'Type a message',
                      border: OutlineInputBorder(),
                    ),
                  ),
                ),
                IconButton(
                  icon: const Icon(Icons.send),
                  onPressed: () {},
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
