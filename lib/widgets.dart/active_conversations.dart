// ignore_for_file: prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';
import 'package:som3a_app_28_2_22/models/constant.dart';
import 'package:som3a_app_28_2_22/screens/chat_screen.dart';

class ActiveConversations extends StatefulWidget {

  const ActiveConversations({Key? key}) : super(key: key);

  @override
  State<ActiveConversations> createState() => _ActiveConversationsState();
}

class _ActiveConversationsState extends State<ActiveConversations> {
  bool x = false;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 25),
      child: Padding(
        padding: const EdgeInsets.fromLTRB(8, 8, 8, 8),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  'Active Conversations',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 24,
                  ),
                ),
                CircleAvatar(
                  radius: 15,
                  backgroundColor: Colors.blueGrey[100],
                  child: Text(dummyData.length.toString()),
                ),
                InkWell(
                  onTap: () {
                    setState(() {
                      x = !x;
                    });
                  },
                  child: x
                      ? const Icon(Icons.keyboard_arrow_up)
                      : const Icon(Icons.keyboard_arrow_down),
                ),
              ],
            ),
            if (x)
              Column(
                children: dummyData
                    .map((e) => Padding(
                          padding: const EdgeInsets.all(5),
                          child: ListTile(
                            onTap: () {
                              Navigator.of(context).push(
                                MaterialPageRoute(
                                  builder: (_) => ChatScreen(
                                    name: e['name'],
                                    color: e['color'],
                                  ),
                                ),
                              );
                            },
                            leading: CircleAvatar(
                              radius: 25,
                              backgroundColor: e['color'],
                            ),
                            title: Text(
                              e['name'],
                              style: const TextStyle(
                                fontSize: 24,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ))
                    .toList(),
              ),
          ],
        ),
      ),
    );
  }
}
