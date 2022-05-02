import 'package:flutter/material.dart';
import 'package:front1/screens/transaction.dart';

class DrawerMenu extends StatelessWidget {
  const DrawerMenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Ink(
      color: Colors.blue[900],
      child: ListView(
        children: [
          Align(
            alignment: Alignment.topRight,
            child: IconButton(
              icon: const Icon(Icons.close),
              iconSize: 35,
              color: Colors.white,
              onPressed: () {
                Navigator.pop(context);
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                CircleAvatar(
                  backgroundColor: Colors.blue[900],
                  radius: MediaQuery.of(context).size.width * 0.25,
                  child: Image.asset(
                    "lib/images/image1.png",
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                const Text(
                  "Version 1.0.2",
                  style: TextStyle(fontSize: 16, color: Colors.white),
                ),
              ],
            ),
          ),
          ListTile(
            title: const Text(
              "Home",
              style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            ),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          const SizedBox(
            height: 6,
          ),
          ListTile(
            title: const Text(
              "Transactions",
              style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            ),
            onTap: () {
              Navigator.pop(context);
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const Transaction(),
                ),
              );

            },
          ),
          const SizedBox(
            height: 6,
          ),
          ListTile(
            title: const Text(
              "Export",
              style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            ),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          const SizedBox(
            height: 6,
          ),
          ListTile(
            title: const Text(
              "Settings",
              style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            ),
            onTap: () {
              Navigator.pop(context);
            },
          ),
        ],
      ),
    );
  }
}
