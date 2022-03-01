import 'package:flutter/material.dart';
import 'package:som3a_app_28_2_22/screens/home_page.dart';
import 'package:som3a_app_28_2_22/screens/news_page.dart';

class CategoryListItem extends StatelessWidget {
  const CategoryListItem({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextButton(
          child: const Text(
            'Home',
            style: TextStyle(
              color: Colors.white,
              fontSize: 18,
            ),
          ),
          onPressed: () {
            Navigator.of(context).pushReplacement(
              MaterialPageRoute(
                builder: (_) => const MyHomePage(),
              ),
            );
          },
        ),
        TextButton(
          child: const Text(
            'Fashion News',
            style: TextStyle(
              color: Colors.white,
              fontSize: 18,
            ),
          ),
          onPressed: () {
            Navigator.of(context).pushReplacement(
              MaterialPageRoute(
                builder: (_) => const NewsPage(),
              ),
            );
          },
        ),
        TextButton(
          child: const Text(
            'Fashion News',
            style: TextStyle(
              color: Colors.white,
              fontSize: 18,
            ),
          ),
          onPressed: () {},
        ),
        TextButton(
          child: const Text(
            'Woman Fashion',
            style: TextStyle(
              color: Colors.white,
              fontSize: 18,
            ),
          ),
          onPressed: () {},
        ),
        TextButton(
          child: const Text(
            'Man Fashion',
            style: TextStyle(
              color: Colors.white,
              fontSize: 18,
            ),
          ),
          onPressed: () {},
        ),
        TextButton(
          child: const Text(
            'Kids Fashion',
            style: TextStyle(
              color: Colors.white,
              fontSize: 18,
            ),
          ),
          onPressed: () {},
        ),
        TextButton(
          child: const Text(
            'Accessories',
            style: TextStyle(
              color: Colors.white,
              fontSize: 18,
            ),
          ),
          onPressed: () {},
        ),
        TextButton(
          child: const Text(
            'Location',
            style: TextStyle(
              color: Colors.white,
              fontSize: 18,
            ),
          ),
          onPressed: () {},
        ),
        TextButton(
          child: const Text(
            'On Trending',
            style: TextStyle(
              color: Colors.white,
              fontSize: 18,
            ),
          ),
          onPressed: () {},
        ),
        TextButton(
          child: const Text(
            'Top Collection',
            style: TextStyle(
              color: Colors.white,
              fontSize: 18,
            ),
          ),
          onPressed: () {},
        ),
        TextButton(
          child: const Text(
            'Mackup Artist',
            style: TextStyle(
              color: Colors.white,
              fontSize: 18,
            ),
          ),
          onPressed: () {},
        ),
      ],
    );
  }
}
