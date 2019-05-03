import 'package:flutter/material.dart';

class IspApp extends StatefulWidget {
  @override
  _ispApp createState() => _ispApp();
}

class _ispApp extends State<IspApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        //backgroundColor: Color(0xfffdd329),
        backgroundColor: Color.fromRGBO(58, 66, 86, 1.0),
        appBar: AppBar(
          backgroundColor:Color.fromRGBO(58, 66, 86, 1.0) ,
          title: Text("Broarband Assistant",style: TextStyle(color: Colors.white)),
        ),
        body: SafeArea(
            child: Container(
          margin: EdgeInsets.only(top: 20),
          color: Color.fromRGBO(58, 66, 86, 1.0),
          height: 620,
          child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      width: 300,
                      height: 150,
                      decoration: BoxDecoration(
                       //color: Colors.white,
                        image: DecorationImage(
                          image: ExactAssetImage('image/banner2.jpg'),
                            fit: BoxFit.cover,
                        ),
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                        boxShadow: [
                          BoxShadow(
                              color:  Colors.black12, offset: Offset(5, 5))
                        ],
                      ),
                    ),
                  ],
                ),
                Expanded(
                  child: GridView.count(
                    padding: EdgeInsets.only(top: 60),
                    crossAxisCount: 2,
                    children: new List<Widget>.generate(4, (index) {
                      switch (index) {
                        case 0:
                          return Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: <Widget>[
                              GestureDetector(
                                onTap: () {
                                  Navigator.pushNamed(context, '/media');
                                },
                                child: Container(
                                  width: 120,
                                  height: 120,
                                  child: Icon(
                                    Icons.movie,
                                    color: Colors.white,
                                    size: 100,
                                  ),
                                  decoration: BoxDecoration(

                                      color:   Color.fromRGBO(64, 75, 96, 0.3),
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(30)),
                                      boxShadow: [
                                        BoxShadow(
                                            color: Colors.black54, offset: Offset(2, 2))
                                      ],
                                  ),
                                ),
                              ),
                              Text('Media Server',style: TextStyle(color: Colors.white),)
                            ],
                          );
                          break;
                        case 1:
                          return Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: <Widget>[
                              GestureDetector(
                                onTap: () {
                                  Navigator.pushNamed(context, '/liveTv');
                                },
                                child: Container(
                                  width: 120,
                                  height: 120,
                                  child: Icon(
                                    Icons.tv,
                                    color: Colors.white,
                                    size: 100,
                                  ),
                                  decoration: BoxDecoration(
                                      color:   Color.fromRGBO(64, 75, 96, 0.3),
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(30)),
                                    boxShadow: [
                                      BoxShadow(
                                          color: Colors.black54, offset: Offset(2, 2))
                                    ],),
                                ),
                              ),
                              Text('Live Tv',style: TextStyle(color: Colors.white))
                            ],
                          );
                          break;
                        case 2:
                          return Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: <Widget>[
                              GestureDetector(
                                onTap: () {
                                  Navigator.pushNamed(context,'/bill');
                                },
                                child: Container(
                                  width: 120,
                                  height: 120,
                                  child: Icon(
                                    Icons.monetization_on,
                                    color: Colors.white,
                                    size: 100,
                                  ),
                                  decoration: BoxDecoration(
                                      color:   Color.fromRGBO(64, 75, 96, 0.3),
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(30)),
                                    boxShadow: [
                                      BoxShadow(
                                          color: Colors.black54, offset: Offset(2, 2))
                                    ],),
                                ),
                              ),
                              Text('Pricing',style: TextStyle(color: Colors.white))
                            ],
                          );
                          break;
                        case 3:
                          return Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: <Widget>[
                              GestureDetector(
                                onTap: () {
                                  Navigator.pushNamed(context, '/contact');
                                },
                                child: Container(
                                  width: 120,
                                  height: 120,
                                  child: Icon(
                                    Icons.perm_contact_calendar,
                                    color: Colors.white,
                                    size: 100,
                                  ),
                                  decoration: BoxDecoration(
                                      color:  Color.fromRGBO(64, 75, 96, 0.3),
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(30)),
                                    boxShadow: [
                                      BoxShadow(
                                          color: Colors.black54, offset: Offset(2, 2))
                                    ],),
                                ),
                              ),
                              Text('Contact',style: TextStyle(color: Colors.white))
                            ],
                          );
                          break;
                      }
                    }),
                  ),
                )
              ]),
        )));
  }
}
