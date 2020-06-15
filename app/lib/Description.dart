import 'package:flutter/material.dart';

class Description extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
      String descriptiontext ="asdfghjklñlhygtfrewertyuiopuytrewertyuiklkjhgfdfghjkllkjhgfdsfghjklkjhgfdsdfghjklidhscubxchbisbadibxsabcbzxbckz";
      final star = Container(
          margin: EdgeInsets.only(
            top: 320.0,
            right: 3.0
          ),child: Icon(
          Icons.star,
          color: Color(0xFFFBBC03),
      ),
      );
      final title = Row(
        children: <Widget>[
          Container(margin: EdgeInsets.only(
            top: 320,
            left: 20,
            right: 0,
          ),
          child: Text("HOLA SOY UN ROW",
          style:TextStyle(
            fontSize: 30.0,
            fontWeight: FontWeight.w800

          ),
          ),
          ),
          Row(
            children: <Widget>[
              star,
              star,
              star,
              star,
              star,

            ],
          ),
        ]
      );
      final description =Container(
        margin: EdgeInsets.only(
          top: 20.0,
          left: 20.0,
          right: 20.0
        ),
        child: Text(descriptiontext,style: TextStyle(fontSize: 16.0),),

      );

      final content = Column(children: <Widget>[
        title,
        description
      ],);
      return title;
  }
  
}