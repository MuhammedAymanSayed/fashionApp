import 'package:flutter/material.dart';

import 'category_list_item.dart';
import 'log_out_button.dart';

class MyDrawer extends StatefulWidget {
  const MyDrawer({
    Key? key,
  }) : super(key: key);

  @override
  State<MyDrawer> createState() => _MyDrawerState();
}

class _MyDrawerState extends State<MyDrawer> {
  bool _categotyOn = false;
  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: const Color.fromRGBO(23, 22, 22, 1),
      child: Stack(
        children: [
          Column(
            children: [
              Container(
                width: MediaQuery.of(context).size.height * 2 / 3,
                height: MediaQuery.of(context).size.height / 4,
                decoration: const BoxDecoration(
                    color: Color.fromRGBO(221, 16, 34, 1),
                    borderRadius: BorderRadius.only(
                      bottomRight: Radius.circular(250),
                    )),
              ),
              const Spacer(),
              Container(
                width: MediaQuery.of(context).size.height * 2 / 3,
                height: MediaQuery.of(context).size.height / 4,
                decoration: const BoxDecoration(
                    color: Color.fromRGBO(221, 16, 34, 1),
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(500),
                    )),
              ),
            ],
          ),
          SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  height: 100,
                  child: Image.asset('images/logo2.png'),
                ),
                 ListTile(
                  onTap: () {
                    setState(() {
                      _categotyOn=!_categotyOn;
                    });
                  },
                  title: const Text(
                    'Category',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                    ),
                  ),
                  trailing: _categotyOn
                      ? const Icon(
                          Icons.remove,
                          color: Colors.white,
                        )
                      : const Icon(
                          Icons.add,
                          color: Colors.white,
                        ),
                ),
                if (_categotyOn) const CategoryListItem(),
                if (!_categotyOn) const SizedBox(height: 50,),
                const LogOutButton(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
