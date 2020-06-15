import 'package:app/src/Details.dart';
import 'package:flutter/material.dart';
class MyCard extends StatelessWidget {
  final Widget text;
  final Widget image;


  MyCard({this.text, this.image});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(children: <Widget>[
        this.image,
        this.text,
        ButtonBar(
          children: <Widget>[
            FlatButton(
              child: const Text('VER MAS'),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Details()),
                );
              },
            ),
          ],
        )
      ],),
    );
  }
}