import 'package:flutter/material.dart';

PreferredSizeWidget myAppBar(String title) => AppBar(
      title: Stack(
        children: [
          const Positioned(
            top: 1,
            left: 0,
            child: CircleAvatar(
              backgroundColor: Colors.red,
              radius: 10,
            ),
          ),
          Text(
            title,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 32,
            ),
          ),
        ],
      ),
      actions: [
        Stack(
          children: [
            IconButton(
              onPressed: () {},
              icon: const CircleAvatar(),
            ),
            Positioned(
              bottom: 10,
              left: 5,
              child: Container(
                padding: const EdgeInsets.all(2),
                width: 20,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Colors.red,
                ),
                child: const Text('9+'),
              ),
            ),
          ],
        ),
      ],
      centerTitle: true,
      backgroundColor: Colors.black,
    );
