import 'package:flutter/material.dart';
import 'package:go_game/gamepage.dart';

void main() {
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: Dashboard(),
      routes: <String, WidgetBuilder>{
        //'/dashboard': (BuildContext context) => ;
        '/gamepage': (BuildContext context) => Gamepage(),
      },
    );
  }
}

class Dashboard extends StatefulWidget {
  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.orange,
      body: Center(
        child: FlatButton(
          color: Colors.blue,
          child: Text("Start Game"),
          onPressed: () {
            Navigator.of(context).pushNamed('/gamepage');
          },
        ),
      ),
    );
  }
}
/*class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
        // This makes the visual density adapt to the platform that you run
        // the app on. For desktop platforms, the controls will be smaller and
        // closer together (more dense) than on mobile platforms.
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
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

  bool pressed = false;

 /* @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red,
      body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.max,
          children: [
      Container(
      child: Padding(
      padding: const EdgeInsets.only(
          bottom: 16.0, top: 8.0, left: 16.0, right: 16.0),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.center,
//                  children: null,
      ),
    ),
    ),
            SizedBox(
              height: 110.0,
            ),
            Container(
                width: MediaQuery.of(context).size.width * .98,
                height: MediaQuery.of(context).size.height * .65,
                child: Align(
                    alignment: Alignment.center,
                    child: Container(
                        decoration: BoxDecoration(
                            gradient: LinearGradient(
                                begin: Alignment.topLeft,
                                end: Alignment.bottomRight,
                                colors: [Color(0xffff00cc), Color(0xff333399)]),
                            borderRadius: BorderRadius.circular(25.0),
                            boxShadow: [
                              BoxShadow(
                                  color: Colors.black54,
                                  blurRadius: 10.0,
                                  offset: Offset(10.0, 20.0))
                            ]),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            for (var i = 0; i < 10; i++)
                              Row(
                                children: [
                                  for (var j = 0; j < 10; j++)
                                    Container(
                                      width: MediaQuery.of(context).size.width *
                                          0.095,
                                      height:
                                          MediaQuery.of(context).size.width *
                                              0.095,
                                      padding: EdgeInsets.symmetric(
                                          vertical: 2.0, horizontal: 2.0),
                                      child: RaisedButton(
                                        splashColor: Colors.white10,
                                        elevation: 15,
                                        shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(30.0)),
                                      ),
                                    )
                                ],
                              )
                          ],
                        ))))
            ]),
    );
  }*/

 @override
  Widget build(BuildContext context) {

    return SafeArea(
      top: true,
      child: Scaffold(
        appBar: AppBar(
          elevation: 10.0,
          centerTitle: true,
          automaticallyImplyLeading: false,
          backgroundColor: Colors.white,
          title: Text(
            "Gomoku_AI",
            style: TextStyle(
              fontSize: 24.0,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),
        ),
        backgroundColor: Colors.white,
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.max,
          children: <Widget>[
            Container(
              width: MediaQuery.of(context).size.width * .97,
              height: MediaQuery.of(context).size.height * .60,
              child: Padding(padding: EdgeInsets.only(left:12),
              child: Align(
                  alignment: Alignment.center,
                  child: Container(
                    decoration: BoxDecoration(
                        gradient: LinearGradient(
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight,
                            colors: [Color(0xffff00cc),Color(0xff333399)]
                        ),
                        borderRadius: BorderRadius.circular(25.0),
                        boxShadow: [
                          BoxShadow(
                              color: Colors.black54,
                              blurRadius: 20.0,
                              spreadRadius: 5.0,)
                              //offset: Offset(10.0, 20.0))
                        ]),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        for (var i = 0; i < 10; i++)
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              for (var j = 0; j < 10; j++)
                                Container(
                                  child: Container(
                                    width:
                                    MediaQuery.of(context).size.width * .09,
                                    height:
                                    MediaQuery.of(context).size.width * .09,
                                    padding: EdgeInsets.symmetric(
                                        vertical: 2.0, horizontal: 2.0),
                                    child: RaisedButton(
                                      elevation: 10.0,
                                      padding: EdgeInsets.symmetric(
                                          vertical: 2.0, horizontal: 2.0),
                                      shape: new RoundedRectangleBorder(
                                          borderRadius:
                                          new BorderRadius.circular(3.0)),
                                      //splashColor: Colors.white10,
                                      //highlightColor: Colors.black,
                                      color: pressed ? Colors.black : Colors.red[200].withOpacity(.3),
                                      onPressed: () {
                                        GoBoard g= new GoBoard();
                                        g.initializeGame();
                                        g.boardPrint();

                                      },
                                    ),
                                  ),
                                )
                            ],
                          )
                      ],
                    ),
                  )),
              ),
            ),
          ],
        ),
      ),
    );
  }
}*/
