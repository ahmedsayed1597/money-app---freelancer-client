import 'package:flutter/material.dart';
import 'package:front1/screens/card_body.dart';

class Transaction extends StatefulWidget {
  const Transaction({Key? key}) : super(key: key);

  @override
  _TransactionState createState() => _TransactionState();
}

class _TransactionState extends State<Transaction> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue[900],
          leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            iconSize: 22,
            icon: const Icon(
              Icons.arrow_back_ios_outlined,
            ),
          ),
          title: const Text(
            "Transaction",
            style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
          ),
          actions: [
            PopupMenuButton<String>(
                icon: const Icon(Icons.filter_alt_sharp),
                iconSize: 20,
                onSelected: (value) {},
                itemBuilder: (BuildContext context) {
                  return const [
                    PopupMenuItem(
                      child: Text("image"),
                      value: "image",
                    ),
                    PopupMenuItem(
                      child: Text("receipt image"),
                      value: "receipt image",
                    ),
                    PopupMenuItem(
                      child: Text("eat"),
                      value: "eat",
                    ),
                    PopupMenuItem(
                      child: Text("bill"),
                      value: "bill",
                    ),
                  ];
                }),
            const SizedBox(
              width: 15,
            ),
            PopupMenuButton<String>(
                icon: const Icon(Icons.calendar_today_outlined),
                iconSize: 20,
                onSelected: (value) {},
                itemBuilder: (BuildContext context) {
                  return const [
                    PopupMenuItem(
                      child: Text("2021 (all)"),
                      value: "2021 (all)",
                    ),
                    PopupMenuItem(
                      child: Text("Dec 2021"),
                      value: "Dec 2021",
                    ),
                    PopupMenuItem(
                      child: Text("2022 (all)"),
                      value: "2022 (all)",
                    ),
                    PopupMenuItem(
                      child: Text("jan 2022"),
                      value: "jan 2022",
                    ),
                  ];
                }),
            const SizedBox(
              width: 15,
            ),
          ],
        ),
        body: ListView(children: [
          CardBody(Colors.pink, Colors.pink),
          CardBody(Colors.blue, Colors.green),
        ]),
      ),
    );
  }
}
