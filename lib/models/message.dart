enum msgtype{
  inmessage,
  outmessage,
}

class Message {
  final String data;
  final msgtype type;
  final DateTime date;

  Message({required this.date,required this.data, required this.type});
}