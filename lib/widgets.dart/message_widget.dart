import 'package:flutter/material.dart';
import 'package:som3a_app_28_2_22/models/message.dart';

class MessageWidget extends StatelessWidget {
  final Message message;
  const MessageWidget({Key? key, required this.message}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (message.type == msgtype.inmessage) {
      return Align(
        alignment: Alignment.centerRight,
        child: Row(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Padding(
              padding: const EdgeInsets.only(bottom:5),
              child: Text(message.date.toString().substring(0, 16)),
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(7.5),
                color: Colors.blue[900],
              ),
              margin: const EdgeInsets.all(5),
              padding: const EdgeInsets.all(10),
              child: Text(
                message.data,
                style: const TextStyle(
                  fontSize: 18,
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
      );
    } else {
      return Align(
        alignment: Alignment.centerLeft,
        child: Row(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(7.5),
                color: Colors.white,
              ),
              margin: const EdgeInsets.all(5),
              padding: const EdgeInsets.all(10),
              child: Text(
                message.data,
                style: const TextStyle(
                  fontSize: 18,
                  color: Colors.black,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom:5),
              child: Text(message.date.toString().substring(0, 16)),
            ),
          ],
        ),
      );
    }
  }
}
