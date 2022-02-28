import 'package:flutter/material.dart';
import 'package:som3a_app_28_2_22/widgets.dart/appbar.dart';
import 'package:som3a_app_28_2_22/widgets.dart/my_drawer.dart';

class NewsPage extends StatefulWidget {
  const NewsPage({Key? key}) : super(key: key);

  @override
  State<NewsPage> createState() => _NewsPageState();
}

class _NewsPageState extends State<NewsPage> {
  int y = 0;
  Color myColor(int x) {
    if (x == y) {
      return Colors.red;
    }
    return Colors.black;
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        appBar: myAppBar('Fashion'),
        drawer: const MyDrawer(),
        body: SingleChildScrollView(
          child: Stack(
            children: [
              Column(
                children: [
                  ListTile(
                    onTap: null,
                    title: const Text('SOVIA LETAL'),
                    subtitle: const Text('Based trending products'),
                    trailing: IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.search),
                    ),
                    textColor: Colors.white,
                    iconColor: Colors.white,
                    tileColor: Colors.black,
                  ),
                  SizedBox(
                    height: 350,
                    child: Stack(
                      children: [
                        PageView(
                          onPageChanged: (x) {
                            setState(() {
                              y = x;
                            });
                          },
                          children: [
                            Container(color: Colors.redAccent),
                            Container(color: Colors.blueAccent),
                            Container(color: Colors.yellowAccent),
                            Container(color: Colors.greenAccent),
                          ],
                        ),
                        Align(
                          alignment: Alignment.bottomCenter,
                          child: Container(
                            padding: const EdgeInsets.all(5),
                            margin: const EdgeInsets.all(5),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              color: Colors.white,
                            ),
                            child: Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(2.5),
                                  child: CircleAvatar(
                                    backgroundColor:
                                        y == 0 ? Colors.red : Colors.black,
                                    radius: 5,
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(2.5),
                                  child: CircleAvatar(
                                    backgroundColor:
                                        y == 1 ? Colors.red : Colors.black,
                                    radius: 5,
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(2.5),
                                  child: CircleAvatar(
                                    backgroundColor:
                                        y == 2 ? Colors.red : Colors.black,
                                    radius: 5,
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(2.5),
                                  child: CircleAvatar(
                                    backgroundColor:
                                        y == 3 ? Colors.red : Colors.black,
                                    radius: 5,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    width: double.infinity,
                    padding: const EdgeInsets.all(10),
                    child: const Text(
                      """For The Latest Apparel Styles. Browse Apparel & More.
Make Macy's Your One And Only Destination
For Apparel - Shop Today
Shop Macy's Today""",
                      style: TextStyle(color: Colors.white),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width / 4,
                        height: 150,
                        color: Colors.redAccent,
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width / 4,
                        height: 150,
                        color: Colors.blueAccent,
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width / 4,
                        height: 150,
                        color: Colors.yellowAccent,
                      ),
                    ],
                  )
                ],
              ),
              Positioned(
                bottom: 10,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: Colors.red,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15),
                        ),
                      ),
                      onPressed: () {},
                      child: const Text('one hour photo session for 1000 L.E'),
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: Colors.red,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15),
                        ),
                      ),
                      onPressed: () {},
                      child: const Text('contact us with me'),
                    ),
                  ],
                ),
              ),
            ],
            alignment: Alignment.center,
          ),
        ),
      ),
    );
  }
}
