import 'package:flutter/material.dart';

class CardBody extends StatefulWidget {
  //const CardBody({Key? key}) : super(key: key);
  CardBody(@required this.btncolor, @required this.txtcolor);
   final Color btncolor;
   final Color txtcolor;

  @override
  _CardBodyState createState() => _CardBodyState(btncolor,txtcolor);
}

class _CardBodyState extends State<CardBody> {
  _CardBodyState(this.btncolor, this.txtcolor);
  final Color btncolor ;
  final txtcolor ;

  @override
  Widget build(BuildContext context) {
    final isLandscape =
        MediaQuery.of(context).orientation == Orientation.landscape;
    return Container(
      height: isLandscape
          ? MediaQuery.of(context).size.width * 0.15
          : MediaQuery.of(context).size.width * 0.35,
      child: Card(
        child: Stack(children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(
                    left: 10, top: 4, bottom: 4, right: 15),
                child: Row(
                  children: const [
                    Text(
                      "23-10-21",
                      style: TextStyle(color: Color.fromRGBO(13, 71, 161, 1)),
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    Text(
                      "14:00",
                      style: TextStyle(color: Color.fromRGBO(13, 71, 161, 1)),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                    left: 10, top: 4, bottom: 4, right: 15),
                child: Row(
                  children: const [
                    Text(
                      "Description is here if long... ",
                      style: TextStyle(
                          color: Color.fromRGBO(13, 71, 161, 1),
                          fontSize: 15,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
            ],
          ),
          Align(
            alignment: Alignment.bottomLeft,
            child: Padding(
              padding:
                  const EdgeInsets.only(left: 10, top: 4, bottom: 4, right: 15),
              child: Row(
                children: [
                  buttonGenerate(btncolor),
                  Container(
                    width: isLandscape
                        ? MediaQuery.of(context).size.width * .55 - 60
                        : MediaQuery.of(context).size.width * .25 - 50,
                    height: 0,
                  ),
                  text(txtcolor),
                ],
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomRight,
            child: Image.asset(
              "lib/images/inde2.png",
              width: isLandscape
                  ? MediaQuery.of(context).size.width * 0.15
                  : MediaQuery.of(context).size.width * 0.35,
              height: isLandscape
                  ? MediaQuery.of(context).size.width * 0.15
                  : MediaQuery.of(context).size.width * 0.35,
            ),
          ),
        ]),
      ),
    );
  }


}

Widget buttonGenerate(Color btnColor) {
  return TextButton(
    style: TextButton.styleFrom(
      backgroundColor: btnColor,
      padding: const EdgeInsets.all(10.0),
      primary: Colors.white,
      textStyle: const TextStyle(fontSize: 18),
    ),
    onPressed: () {},
    child: const Text("Category"),
  );
}

Widget text(Color color) {
  return Text(
    "RM 32.12",
    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20, color: color),
  );
}
