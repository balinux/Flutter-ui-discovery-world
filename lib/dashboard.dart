import 'package:flutter/material.dart';

class Dashboard extends StatefulWidget {
  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      margin: EdgeInsets.only(top: 30.0, left: 20.0, bottom: 30.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Container(
                  height: 40,
                  width: 40,
                  decoration: BoxDecoration(
                      color: Colors.grey,
                      borderRadius: BorderRadius.all(Radius.circular(40.0))),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(40.0),
                    child: Image(
                      image: AssetImage("images/woman_camera.jpg"),
                      height: 40.0,
                      width: 40.0,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                IconButton(icon: Icon(Icons.menu), onPressed: () {})
              ],
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: Container(
              width: MediaQuery.of(context).size.width / 1.5,
              child: Text(
                "Discover",
                style: TextStyle(
                    fontSize: 28.0,
                    fontFamily: "PlayfairDisplayRegular",
                    fontWeight: FontWeight.w700),
              ),
            ),
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: Container(
              width: MediaQuery.of(context).size.width / 1.5,
              child: Text(
                "world with us!",
                style: TextStyle(
                    fontSize: 28.0,
                    fontFamily: "PlayfairDisplayRegular",
                    fontWeight: FontWeight.w700),
              ),
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Container(
            decoration: BoxDecoration(
                color: Color(0xFFEDEDED),
                borderRadius: BorderRadius.circular(20.0),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey[200],
                    blurRadius: 10.0,
                    spreadRadius: 3.0,
                  )
                ]),
            margin: EdgeInsets.only(right: 20.0),
            child: TextField(
              decoration: InputDecoration(
                hintText: 'Search Something',
                focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15.0),
                    borderSide:
                        BorderSide(color: Color(0xFFEDEDED), width: 1.0)),
                enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15.0),
                    borderSide:
                        BorderSide(color: Color(0xFFEDEDED), width: 1.0)),
                fillColor: Color(0xFFEDEDED),
                // filled: true,
                suffixIcon: Container(
                  margin: EdgeInsets.only(right: 5.0),
                  decoration: BoxDecoration(
                      color: Color(0xFFF75472),
                      borderRadius: BorderRadius.circular(15.0)),
                  child: IconButton(
                    icon: Icon(Icons.search),
                    color: Colors.grey[50],
                    onPressed: () {},
                  ),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 20.0,
          ),
          Container(
            margin: EdgeInsets.only(right: 20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Container(
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(
                      color: Color(0xFFF75472),
                      borderRadius: BorderRadius.all(Radius.circular(15.0))),
                  child: IconButton(
                    icon: Icon(Icons.flight),
                    onPressed: () {},
                    color: Colors.grey[50],
                  ),
                ),
                Container(
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(
                      color: Color(0xFFFBE4E7),
                      borderRadius: BorderRadius.all(Radius.circular(15.0))),
                  child: IconButton(
                    icon: Icon(Icons.location_city),
                    onPressed: () {},
                    color: Color(0xFFF18796),
                  ),
                ),
                Container(
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(
                      color: Color(0xFFFBE4E7),
                      borderRadius: BorderRadius.all(Radius.circular(15.0))),
                  child: IconButton(
                    icon: Icon(Icons.camera_alt),
                    onPressed: () {},
                    color: Color(0xFFF18796),
                  ),
                ),
                Container(
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(
                      color: Color(0xFFFBE4E7),
                      borderRadius: BorderRadius.all(Radius.circular(15.0))),
                  child: IconButton(
                    icon: Icon(Icons.directions_car),
                    onPressed: () {},
                    color: Color(0xFFF18796),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 20.0,
          ),
          Container(
            margin: EdgeInsets.only(right: 20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  "New",
                  style: TextStyle(fontFamily: "PoppinsRegular"),
                ),
                Text(
                  "Most Viewed",
                  style: TextStyle(
                      fontFamily: "PoppinsRegular", color: Color(0xFFF18796)),
                ),
                Text(
                  "Hot Tours",
                  style: TextStyle(fontFamily: "PoppinsRegular"),
                ),
                Text(
                  "All",
                  style: TextStyle(fontFamily: "PoppinsRegular"),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 20.0,
          ),
          Container(
            height: MediaQuery.of(context).size.height / 2.9,
            // width: MediaQuery.of(context).size.width / 2.2,
            // margin: EdgeInsets.only(right: 5.0),
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: <Widget>[
                Container(
                  height: MediaQuery.of(context).size.height / 2.9,
                  width: MediaQuery.of(context).size.width / 2.2,
                  margin: EdgeInsets.only(right: 5.0),
                  decoration:
                      BoxDecoration(borderRadius: BorderRadius.circular(20.0)),
                  child: Stack(
                    alignment: Alignment.bottomCenter,
                    children: <Widget>[
                      ClipRRect(
                          borderRadius: BorderRadius.circular(20.0),
                          child:
                              Image(image: AssetImage("images/lempuyang.jpg"))),
                      Container(
                        width: MediaQuery.of(context).size.width,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.only(left: 10.0),
                              child: Align(
                                alignment: Alignment.centerLeft,
                                child: Text(
                                  "Lempuyang Temple",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontFamily: "PoppinsRegular",
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 7.0),
                              child: Row(
                                children: <Widget>[
                                  Icon(
                                    Icons.location_on,
                                    size: 15.0,
                                    color: Color(0xFFF18796),
                                  ),
                                  SizedBox(
                                    width: 5.0,
                                  ),
                                  Text(
                                    "Indonesia",
                                    style: TextStyle(color: Color(0xFFF18796)),
                                  )
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 20.0,
                            )
                          ],
                        ),
                        height: 100,
                        decoration: BoxDecoration(
                            color: Colors.black,
                            gradient: LinearGradient(
                                begin: FractionalOffset.topCenter,
                                end: FractionalOffset.bottomCenter,
                                colors: [
                                  Colors.black.withOpacity(0.0),
                                  Colors.black
                                ]),
                            borderRadius: BorderRadiusDirectional.only(
                                bottomEnd: Radius.circular(20.0),
                                bottomStart: Radius.circular(20.0))),
                      )
                    ],
                  ),
                ),
                Container(
                  height: MediaQuery.of(context).size.height / 2.9,
                  width: MediaQuery.of(context).size.width / 2.2,
                  decoration:
                      BoxDecoration(borderRadius: BorderRadius.circular(20.0)),
                  child: Stack(
                    alignment: Alignment.bottomCenter,
                    children: <Widget>[
                      ClipRRect(
                          borderRadius: BorderRadius.circular(20.0),
                          child: Image(
                              image: AssetImage("images/eiffel_tower.jpg"))),
                      Container(
                        width: MediaQuery.of(context).size.width,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.only(left: 10.0),
                              child: Align(
                                alignment: Alignment.centerLeft,
                                child: Text(
                                  "The Eiffel Tower",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontFamily: "PoppinsRegular",
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 7.0),
                              child: Row(
                                children: <Widget>[
                                  Icon(
                                    Icons.location_on,
                                    size: 15.0,
                                    color: Color(0xFFF18796),
                                  ),
                                  SizedBox(
                                    width: 5.0,
                                  ),
                                  Text(
                                    "France",
                                    style: TextStyle(color: Color(0xFFF18796)),
                                  )
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 20.0,
                            )
                          ],
                        ),
                        height: 100,
                        decoration: BoxDecoration(
                            color: Colors.black,
                            gradient: LinearGradient(
                                begin: FractionalOffset.topCenter,
                                end: FractionalOffset.bottomCenter,
                                colors: [
                                  Colors.black.withOpacity(0.0),
                                  Colors.black
                                ]),
                            borderRadius: BorderRadiusDirectional.only(
                                bottomEnd: Radius.circular(20.0),
                                bottomStart: Radius.circular(20.0))),
                      )
                    ],
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    ));
  }
}
