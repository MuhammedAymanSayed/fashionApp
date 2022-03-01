import 'package:flutter/material.dart';

class LogOutButton extends StatelessWidget {
  const LogOutButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned(
          top: 10,
          right: 110,
          child: Container(
            width: 100,
            color: const Color.fromRGBO(23, 22, 22, 1),
            height: 30,
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton(
              onPressed: () {},
              child: const Text(
                'Log out',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                ),
              ),
            ),
            InkWell(
              onTap: () {},
              child: const CircleAvatar(
                backgroundColor: Colors.white,
                child: Icon(
                  Icons.logout,
                  color: Colors.black,
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}