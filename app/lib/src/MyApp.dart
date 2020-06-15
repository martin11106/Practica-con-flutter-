import 'package:flutter/material.dart';
import 'package:app/screens/Card.dart';
class MyApp extends StatelessWidget {

  String image= "https://ep01.epimg.net/elpais/imagenes/2019/10/30/album/1572424649_614672_1572453030_noticia_normal.jpg";
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter ',
        theme: ThemeData(
          primarySwatch: Colors.amber,

          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        home: Scaffold(
            appBar: AppBar(
              title: Text("flutter"),

            ),
            body: Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,//con esto la card ocupa toda la pantalla
                children: <Widget>[
                  MyCard(
                    text: const ListTile(
                    title: Text('Foto con animacion hero'),
                    subtitle: Text('aqui va el subtitulo, descripcion de la card'),
                  ),image:  Container(
                    width: double.infinity,
                    height: 150,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        fit: BoxFit.fill,
                        image: NetworkImage(image),
                      ),
                    ),
                  ),),

//              Card(
//                child:Column(children: <Widget>[
//
//                  Container(
//                    width: double.infinity,
//                    height: 150,
//                    decoration: BoxDecoration(
//                      image: DecorationImage(
//                        fit: BoxFit.fill,
//                        image: NetworkImage("https://ep01.epimg.net/elpais/imagenes/2019/10/30/album/1572424649_614672_1572453030_noticia_normal.jpg"),
//                      ),
//                    ),
//                  ),
//                  const ListTile(
//                    title: Text('Foto con animacion hero'),
//                    subtitle: Text('aqui va el subtitulo, descripcion de la card'),
//                  ),
//                  ButtonBar(
//                    children: <Widget>[
//                      FlatButton(
//                        child: const Text('VER MAS'),
//                        onPressed: () {/* ... */},
//                      ),
//                    ],
//                  )
//                ],),
//              ),

                ],
              ),
            )
        )
    );
  }
}