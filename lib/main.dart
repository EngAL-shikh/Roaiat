import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(

      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    // return Scaffold(
    //
    //   appBar: AppBar(
    //     title: Text("mACKE ME RICH"),
    //     backgroundColor: Colors.amber,
    //   ),
    //   body:Image(
    //     image: NetworkImage("https://flutter.dev/assets/flutter-lockup-1caf6476beed76adec3c477586da54de6b552b2f42108ec5bc68dc63bae2df75.png"),
    //     height: 50.0,
    //     width: 50.0,
    //
    //   ),
    // );

    return new Scaffold(
      backgroundColor: Colors.amberAccent,
      body:SafeArea(
        child: (
            Center(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.all(60.0),
                    height: 100.0,
                    width: 100.0,
                    child: Image(
                      image: AssetImage("images/roaiat.png"),
                    ),

                  ),
                  Card(

                    margin:EdgeInsets.all(20.0),
                    color: Colors.white,
                    child: Padding(

                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: <Widget>[
                          Icon(
                            Icons.person,
                            color: Colors.black45,

                          ),
                          SizedBox(
                              width: 10.0,
                          ),
                          Text(

                            "Enter your user name",
                            style: TextStyle(
                                color:Colors.black45
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  Card(

                    margin:EdgeInsets.all(20.0),
                    color: Colors.white,

                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: <Widget>[
                          Icon(
                            Icons.lock,
                            color: Colors.black45,

                          ),
                          SizedBox(
                            width: 10.0,
                          ),
                          Text(

                            "Enter your passowrd",
                            style: TextStyle(
                                color:Colors.black45
                            ),
                          )
                        ],
                      ),
                    ),
                  ),

                ],
              ),

            )
        ),

      )


    );
  }
}
