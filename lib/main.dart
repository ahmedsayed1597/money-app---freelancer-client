import 'package:flutter/material.dart';
import 'package:front1/screens/drawer_menu.dart';
import 'package:front1/screens/home_menu.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Choose Your Category',
      theme: ThemeData(
        primaryColor: Colors.indigo[900],
        //accentColor: Colors.deepPurple,
      ),
      home: SafeArea(
        child: Scaffold(
            appBar: AppBar(
              backgroundColor: Colors.blue[900],
              elevation: 0,
              actions: [
                Padding(
                  padding: const EdgeInsets.all(8),
                  child: CircleAvatar(
                    radius: 20,
                    backgroundColor: Colors.blue[900],
                    child: Image.asset("lib/images/image1.png"),
                  ),
                )
              ],
            ),
            drawer: const Drawer(
              child: DrawerMenu(),
            ),
            body: const HomePage()),
      ),
      //routes: {
      // '/CountrySearch': (Context) => SearchCountries(),
      //}
    );
  }
}
