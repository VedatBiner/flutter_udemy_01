import 'package:flutter/material.dart';

class Hello extends StatelessWidget{
  const Hello({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Hello"),
      ),
        body: Container(
          color: Colors.green,
          alignment: Alignment.center,
          child: Container(
            margin: const EdgeInsets.all(20.0),
            padding: const EdgeInsets.all(15.0),
            alignment: Alignment.center,
            color: Colors.blue,
            child: Container(
              color: Colors.brown,
              alignment: Alignment.center,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.center,
                textDirection: TextDirection.ltr,
                verticalDirection: VerticalDirection.down,
                textBaseline: TextBaseline.alphabetic,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    mainAxisSize: MainAxisSize.max,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    textDirection: TextDirection.ltr,
                    verticalDirection: VerticalDirection.down,
                    textBaseline: TextBaseline.alphabetic,
                    children: [
                      Container(
                        alignment: Alignment.center,
                        color: Colors.green.shade300,
                        margin: const EdgeInsets.all(5.0),
                        child: const Text(
                          "Merhaba",
                          textDirection: TextDirection.ltr,
                          style: TextStyle(fontSize: 15.0),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    mainAxisSize: MainAxisSize.max,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    textDirection: TextDirection.ltr,
                    verticalDirection: VerticalDirection.down,
                    textBaseline: TextBaseline.alphabetic,
                    children: [
                      Container(
                        alignment: Alignment.center,
                        color: Colors.green.shade300,
                        margin: const EdgeInsets.all(5.0),
                        child: const Text(
                          "Merhaba",
                          textDirection: TextDirection.ltr,
                          style: TextStyle(fontSize: 15.0),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    mainAxisSize: MainAxisSize.max,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    textDirection: TextDirection.ltr,
                    verticalDirection: VerticalDirection.down,
                    textBaseline: TextBaseline.alphabetic,
                    children: [
                      Container(
                        alignment: Alignment.center,
                        color: Colors.green.shade300,
                        margin: const EdgeInsets.all(5.0),
                        child: const Text(
                          "Merhaba",
                          textDirection: TextDirection.ltr,
                          style: TextStyle(fontSize: 15.0),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      );
  }
}