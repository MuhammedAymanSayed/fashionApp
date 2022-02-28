// ignore_for_file: prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';
import 'package:som3a_app_28_2_22/widgets.dart/appbar.dart';
import 'package:som3a_app_28_2_22/widgets.dart/message_widget.dart';

import '../models/constant.dart';

class ChatScreen extends StatefulWidget {
  final String name;
  final Color color;

  const ChatScreen({
    Key? key,
    required this.name,
    required this.color,
  }) : super(key: key);

  @override
  _ChatScreenState createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.blue[50],
        appBar: myAppBar('Fashion'),
        drawer: const Drawer(),
        body: Column(
          children: [
            Align(
              alignment: Alignment.topCenter,
              child: Container(
                color: Colors.white,
                padding: const EdgeInsets.symmetric(vertical: 5),
                child: Row(
                  children: [
                    const SizedBox(
                      width: 10,
                    ),
                    InkWell(
                      onTap: () => Navigator.of(context).pop(),
                      child: const Icon(Icons.arrow_back_ios),
                    ),
                    CircleAvatar(backgroundColor: widget.color),
                    const SizedBox(width: 20),
                    Text(
                      widget.name,
                      style: const TextStyle(fontSize: 22),
                    ),
                    const Spacer(),
                    const Text(
                      'Online',
                      style: TextStyle(color: Colors.green),
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    InkWell(
                      onTap: () {},
                      child: const Icon(Icons.call),
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    InkWell(
                      onTap: () {},
                      child: const Icon(
                        Icons.video_call,
                        size: 32,
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: messageList
                      .map((msg) => MessageWidget(message: msg))
                      .toList(),
                ),
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                margin: const EdgeInsets.symmetric(horizontal: 2.5),
                padding: const EdgeInsets.symmetric(
                  horizontal: 10,
                  vertical: 5,
                ),
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(15),
                    topRight: Radius.circular(15),
                  ),
                ),
                child: Row(
                  children: [
                    const InkWell(child: Icon(Icons.attach_file)),
                    const SizedBox(width: 5),
                    const Flexible(
                      flex: 3,
                      child: TextField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          label: Text('Enter your message here'),
                          suffixIcon: InkWell(
                            child: Icon(
                              Icons.tag_faces_sharp,
                              color: Colors.amber,
                            ),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(width: 5),
                    Flexible(
                      flex: 1,
                      child: ElevatedButton.icon(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.send,
                          size: 14,
                        ),
                        label: const Text('Send'),
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
