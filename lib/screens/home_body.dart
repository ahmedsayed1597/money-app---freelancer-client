import 'package:flutter/material.dart';
import 'package:animate_icons/animate_icons.dart';

class HomeBody extends StatefulWidget {
  const HomeBody({Key? key}) : super(key: key);

  @override
  _HomeBodyState createState() => _HomeBodyState();
}

class _HomeBodyState extends State<HomeBody> {
  AnimateIconController controller = AnimateIconController();

  @override
  Widget build(BuildContext context) {
    return ListView(children: <Widget>[
      Stack(
        children: [
          Container(
            height: MediaQuery.of(context).size.height * 0.15,
            decoration: const BoxDecoration(
                color: Color.fromRGBO(13, 71, 161, 1),
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(60.0),
                    bottomRight: Radius.circular(60.0))),
          ),
          Container(
            height: MediaQuery.of(context).size.height * 0.30,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                InkWell(
                  onTap: () {},
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(30),
                    child: Container(
                      height: MediaQuery.of(context).size.width * 0.40,
                      width: MediaQuery.of(context).size.width * 0.40,
                      color: Colors.amber[300],
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                            "lib/images/camera.png",
                            color: const Color.fromRGBO(13, 71, 161, 1),
                            scale: 1.2,
                          ),
                          const Text(
                            "Image",
                            style: TextStyle(
                                fontSize: 22,
                                fontWeight: FontWeight.bold,
                                color: Color.fromRGBO(13, 71, 161, 1)),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  width: 20,
                ),
                InkWell(
                  onTap: () {},
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(30),
                    child: Container(
                      height: MediaQuery.of(context).size.width * 0.40,
                      width: MediaQuery.of(context).size.width * 0.40,
                      color: Colors.pink[300],
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                            "lib/images/camera.png",
                            color: Colors.white,
                            scale: 1.2,
                          ),
                          const Text(
                            "Receipt",
                            style: TextStyle(
                                fontSize: 22,
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
      Padding(
        padding: const EdgeInsets.only(left: 15, right: 15, top: 5, bottom: 15),
        child: Card(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
          elevation: 0,
          color: Colors.grey[100],
          child: const Padding(
            padding: EdgeInsets.all(8),
            child: TextField(
              decoration: InputDecoration(
                border: InputBorder.none,
                labelText: 'Description',
                labelStyle: TextStyle(
                  fontSize: 20,
                  color: Color.fromRGBO(13, 71, 161, 1),
                ),
              ),
            ),
          ),
        ),
      ),
      Padding(
        padding: const EdgeInsets.only(left: 15, right: 15, top: 5, bottom: 15),
        child: Card(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
          elevation: 0,
          color: Colors.grey[100],
          child: const Padding(
            padding: EdgeInsets.all(8),
            child: TextField(
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                border: InputBorder.none,
                labelText: 'Amount (Optional)',
                labelStyle: TextStyle(
                  fontSize: 20,
                  color: Color.fromRGBO(13, 71, 161, 1),
                ),
              ),
            ),
          ),
        ),
      ),
      Padding(
        padding: const EdgeInsets.only(left: 15, right: 15, top: 50),
        child: InkWell(
          onTap: () {},
          child: Stack(children: [
            Card(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(35)),
              elevation: 0,
              color: Colors.amber[300],
              child: const Center(
                heightFactor: 2.2,
                child: Text(
                  "Submit",
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                    color: Color.fromRGBO(13, 71, 161, 1),
                  ),
                ),
              ),
            ),
            Align(
              alignment: Alignment.centerRight,
              child: Padding(
                padding: EdgeInsets.only(
                    right: MediaQuery.of(context).size.width * 0.09, top: 22),
                child: const Icon(
                  Icons.double_arrow_outlined,
                  color: Colors.white,
                ),
              ),
            ),
          ]),
        ),
      ),
    ]);
  }
}
