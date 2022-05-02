import 'package:flutter/material.dart';
import 'package:front1/screens/home_body.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  TabController? tabController;

  @override
  void initState() {
    tabController = TabController(length: 5, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 5,
        child: SafeArea(
        child: Scaffold(
          resizeToAvoidBottomInset: false,
          appBar: AppBar(
            backgroundColor: Colors.blue[900],
            elevation: 0,
            title: const Text(
              "Choose Your Category",
              style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            ),
            bottom: TabBar(
              indicatorWeight: 1,
              isScrollable: true,
              indicatorSize: TabBarIndicatorSize.tab,
              //unselectedLabelColor: Colors.amber[300],
              indicator: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                color: Colors.amber[300],
              ),
              controller: tabController,
              //indicatorColor: Colors.amber[300],
              tabs: const [
                Tab(
                  height: 20,
                  child: Text(
                    "Food",
                    style: TextStyle(color: Colors.white, fontSize: 12),
                  ),
                ),
                Tab(
                  child: Text(
                    "Utilities",
                    style: TextStyle(color: Colors.white, fontSize: 12),
                  ),
                ),
                Tab(
                  child: Text("Transport",
                      style: TextStyle(color: Colors.white, fontSize: 12)),
                ),
                Tab(
                  child: Text("Personal",
                      style: TextStyle(color: Colors.white, fontSize: 12)),
                ),
                Tab(
                  child: Text("other",
                      style: TextStyle(color: Colors.white, fontSize: 12)),
                ),
              ],
            ),
            //leading: Icon(Icons.menu, color: Colors.white,),
          ),
          body: TabBarView(
            controller: tabController,
            children: const [
              HomeBody(),
              HomeBody(),
              HomeBody(),
              HomeBody(),
              HomeBody(),
            ],
          ),
        ),
        // ),
      ),
    );
  }
}
