import 'package:flutter/material.dart';
import 'package:som3a_app_28_2_22/screens/home_page.dart';
import 'package:som3a_app_28_2_22/screens/news_page.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Drawer(
          child: Column(
            children: [
              ListTile(
                title: const Text('Home'),
                leading: const Icon(Icons.home),
                onTap: () {
                  Navigator.of(context).pushReplacement(
                    MaterialPageRoute(
                      builder: (_) => const MyHomePage(),
                    ),
                  );
                },
              ),
              const Divider(),
              ListTile(
                title: const Text('News'),
                leading: const Icon(Icons.fiber_new_sharp),
                onTap: () {
                  Navigator.of(context).pushReplacement(
                    MaterialPageRoute(
                      builder: (_) => const NewsPage(),
                    ),
                  );
                },
              ),
            ],
          ),
        );
  }
}