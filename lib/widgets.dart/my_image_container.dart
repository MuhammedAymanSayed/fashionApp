import 'package:flutter/material.dart';

class MyImageContainer extends StatelessWidget {
  const MyImageContainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 25, vertical: 20),
      padding: const EdgeInsets.symmetric(vertical: 20),
      height: 310,
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.indigo[50],
        border: Border.all(
          color: Colors.indigoAccent,
          width: 2,
        ),
        borderRadius: BorderRadius.circular(15),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const CircleAvatar(
            radius: 60,
          ),
          Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              const Text(
                'Bill Bradford',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 22,
                ),
              ),
              InkWell(
                onTap: () {},
                child: const Icon(
                  Icons.settings,
                  size: 20,
                ),
              )
            ],
          ),
          const Text(
            'model fashion',
            style: TextStyle(
              fontSize: 20,
            ),
          ),
          SizedBox(
            width: 175,
            child: SwitchListTile(
              value: true,
              onChanged: (value) {},
              title: const Text(
                'Active',
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.blueAccent,
                ),
              ),
              controlAffinity: ListTileControlAffinity.leading,
            ),
          )
        ],
      ),
    );
  }
}
