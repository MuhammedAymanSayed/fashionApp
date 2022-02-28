import 'package:flutter/material.dart';

import 'message.dart';

final List<Message> messageList = [
  Message(
      data: 'hi', type: msgtype.inmessage, date: DateTime(2022, 2, 28, 14, 30)),
  Message(
      data: 'hi',
      type: msgtype.outmessage,
      date: DateTime(2022, 2, 28, 14, 35)),
  Message(
      data: 'how are you ?',
      type: msgtype.outmessage,
      date: DateTime(2022, 2, 28, 14, 40)),
  Message(
      data: 'fine',
      type: msgtype.inmessage,
      date: DateTime(2022, 2, 28, 14, 48)),
  Message(
      data: 'anything new ?',
      type: msgtype.outmessage,
      date: DateTime(2022, 2, 28, 14, 50)),
  Message(
      data: 'no', type: msgtype.inmessage, date: DateTime(2022, 2, 28, 14, 59)),
  Message(
      data: 'you ?',
      type: msgtype.inmessage,
      date: DateTime(2022, 2, 28, 15, 0)),
  Message(
      data: 'no',
      type: msgtype.outmessage,
      date: DateTime(2022, 2, 28, 15, 30)),
];
final List dummyData = [
  {
    'name': 'Henry Boyd',
    'color': Colors.red,
  },
  {
    'name': 'Martha Curtis',
    'color': Colors.green,
  },
  {
    'name': 'Phillip Tucker',
    'color': Colors.yellow,
  },
  {
    'name': 'Christine Reid',
    'color': Colors.purple,
  },
  {
    'name': 'Gareth Bale',
    'color': Colors.amber,
  },
  {
    'name': 'Medhat Shalpy',
    'color': Colors.indigo,
  },
];
