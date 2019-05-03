import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'data.dart';
class CarouselDemo extends StatefulWidget {
  CarouselDemo() : super();

  final String title = "Packages";

  @override
  CarouselDemoState createState() => CarouselDemoState();
}

class CarouselDemoState extends State<CarouselDemo> {
  //
  CarouselSlider carouselSlider;
  int _current = 0;

  List<T> map<T>(List list, Function handler) {
    List<T> result = [];
    for (var i = 0; i < list.length; i++) {
      result.add(handler(i, list[i]));
    }
    return result;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(58, 66, 86, 1.0),
      appBar: AppBar(
        backgroundColor:   Color.fromRGBO(64, 75, 96, 0.3),

        title: Text(widget.title,style: TextStyle(color: Colors.white),),
      ),
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            carouselSlider = CarouselSlider(
              height: 400.0,
              initialPage: 0,
              enlargeCenterPage: true,
              autoPlay: false,
              reverse: false,
              enableInfiniteScroll: true,

              onPageChanged: (index) {
                setState(() {
                  _current = index;
                });
              },
             items: packageList.map((index) {
                return Builder(
                  builder: (BuildContext context) {
                    return Container(
                      alignment: Alignment.center,
                      width: MediaQuery.of(context).size.width,
                      margin: EdgeInsets.symmetric(horizontal: 10.0),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(
                            Radius.circular(30)),
                        color:  Colors.white,
                      ),

                      child:Column(
                        children: <Widget>[
                          Container(
                            alignment: Alignment.center,
                            constraints:  BoxConstraints.expand(height: 60.0),
                            decoration: BoxDecoration(
                              color:Color.fromRGBO(64, 75, 96, .9) ,
                              borderRadius: BorderRadius.only(topLeft:Radius.circular(30),topRight:Radius.circular(30) ),
                            ),
                           // color: Color.fromRGBO(64, 75, 96, .9),
                            child: Text("$index",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 35.0,
                                fontFamily: "Calibre-Semibold",
                                letterSpacing: 1.0,
                              ),
                            ),
                          ),
                          Container(
                            color: Colors.blueGrey,
                            alignment: Alignment.center,
                            constraints:  BoxConstraints.expand(height: 100.0),
                            child: RichText(text: TextSpan(
                                text: SpeedList[_current],

                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 35.0,
                                  fontFamily: "Calibre-Semibold",
                                  letterSpacing: 1.0,
                                ),
                                children: <TextSpan>[
                                  TextSpan(text: ' mbps', style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25)),
                                ]),
                            ),                          ),
                          Container(
                            color: Colors.indigo,
                            alignment: Alignment.center,
                            constraints:  BoxConstraints.expand(height: 130.0),
                            child:Text('Free Real IP \nUnlimited Data Usage \nNo Fair Usage Policy',textAlign: TextAlign.center,
                            style: TextStyle(fontSize: 20,color: Colors.white,fontFamily: "Calibre-Semibold",
                              letterSpacing: 1.0,),),
                          ),

                        Container(
                          padding: EdgeInsets.only(top: 10),
                            child:  RichText(text: TextSpan(
                            text: Price[_current],
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 35.0,
                              fontFamily: "Calibre-Semibold",
                              letterSpacing: 1.0,
                            ),

                            children: <TextSpan>[
                              TextSpan(text: ' tk', style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25)),
                            ]),
                        ),),
                        ],
                      ),
                    );
                  },
                );
              }).toList(),
            ),
            SizedBox(
              height: 50,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: map<Widget>(packageList, (index, url) {
                return Container(
                  width: 10.0,
                  height: 10.0,
                  margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 2.0),
                  decoration: BoxDecoration(
                    shape: BoxShape.rectangle,
                    color: _current == index ? Colors.white30 : Colors.white,
                  ),
                );
              }),
            ),
            SizedBox(
              height: 30.0,
            ),

          ],
        ),
      ),
    );
  }

}