import 'package:flutter/material.dart';
import 'package:som3a_app_28_2_22/widgets.dart/active_conversations.dart';
import 'package:som3a_app_28_2_22/widgets.dart/appbar.dart';
import 'package:som3a_app_28_2_22/widgets.dart/my_drawer.dart';
import 'package:som3a_app_28_2_22/widgets.dart/my_image_container.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: myAppBar('Fashion'),
        drawer: const MyDrawer(),
        body: ListView(
          children: const [
            MyImageContainer(),
            ActiveConversations(),
          ],
        ),
      ),
    );
  }
}
