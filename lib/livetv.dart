import 'package:flutter/material.dart';
import 'data.dart';


class LiveTv extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _livetv();
  }

}

class _livetv extends State<LiveTv> {

@override
Widget build(BuildContext context) {
// TODO: implement build
  return Scaffold(
    backgroundColor: Color.fromRGBO(58, 66, 86, 1.0),
    appBar: AppBar(
      elevation: 0.1,
      backgroundColor: Color.fromRGBO(58, 66, 86, 1.0),
      title: Text('Watch Live Tv',style: TextStyle(color: Colors.white),),
    ),
    body:Container(
      child: ListView.builder(
        scrollDirection: Axis.vertical,
        shrinkWrap: true,
        itemCount: ChanneNames.length,
        itemBuilder: (BuildContext context, int index) {
          return Card(
            elevation: 8.0,
            margin: new EdgeInsets.symmetric(horizontal: 10.0, vertical: 6.0),
            child: Container(
              decoration: BoxDecoration(color: Color.fromRGBO(64, 75, 96, .9)),
              child: ListTile(
                  contentPadding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
                  leading: Container(
                    padding: EdgeInsets.only(right: 12.0),
                    decoration: new BoxDecoration(
                        border: new Border(
                            right: new BorderSide(width: 1.0, color: Colors.white24))),
                    child: Icon(Icons.live_tv, color: Colors.white),
                  ),
                  title: Text(
                    ChanneNames[index],
                    style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
                  ),
                  // subtitle: Text("Intermediate", style: TextStyle(color: Colors.white)),

                  subtitle: Row(
                    children: <Widget>[
                      Icon(Icons.linear_scale, color: Colors.yellowAccent),
                      Text(" Intermediate", style: TextStyle(color: Colors.white))
                    ],
                  ),
                  ),
            ),
          );
        },
      ),
    ) ,
  );

}
}

