import 'package:app/src/MyApp.dart';
import 'package:flutter/material.dart';
class Details extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(
          primarySwatch: Colors.amber,

          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        home: Scaffold(

            appBar: AppBar(
              title: Text("segunda app"),


              leading: Builder(
                builder: (BuildContext context) {
                  return IconButton(
                    icon: Icon(Icons.arrow_back),
                    tooltip: 'Regresar',
                    onPressed: (){
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => MyApp()),
                      );
                    },
                  );
                },
              )
            ),
            body:
            Container(
              child: Center(
                child: Container(
                  width: double.infinity,
                  height: 300,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      fit: BoxFit.fill,
                      image: NetworkImage("https://ep01.epimg.net/elpais/imagenes/2019/10/30/album/1572424649_614672_1572453030_noticia_normal.jpg"),
                    ),
                  ),
                ),
              ),
            )
        )
    );
  }
}
