import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Discovery World',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: <Widget>[
          Image(
            image: AssetImage("images/man_standing.jpg"),
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            fit: BoxFit.cover,
          ),
          Container(
            height: 200.0,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
                gradient: LinearGradient(
              begin: FractionalOffset.topCenter,
              end: FractionalOffset.bottomCenter,
              colors: [Colors.grey.withOpacity(0.0), Colors.black],
            )),
            child: Column(
              children: <Widget>[
                Container(
                  width: MediaQuery.of(context).size.width / 2,
                  child: Text(
                    "Enjoy every moment with us",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 28.0,
                      color: Colors.white,
                      fontFamily: "PlayfairDisplayRegular",
                    ),
                  ),
                ),
                SizedBox(
                  height: 20.0,
                ),
                ButtonTheme(
                  minWidth: 100.0,
                  height: 50.0,
                  child: FlatButton(
                    onPressed: () {},
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(18.0)),
                    color: Colors.red[300],
                    child: Text(
                      "Sign in",
                      style: TextStyle(
                          color: Colors.white, fontFamily: "PoppinsRegular"),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20.0,
                ),
                Text(
                  "create account",
                  style: TextStyle(
                      fontFamily: "PoppinsRegular",
                      color: Colors.white,
                      decoration: TextDecoration.underline),
                )
              ],
            ),
          )
        ],
      ),
    ));
  }
}
