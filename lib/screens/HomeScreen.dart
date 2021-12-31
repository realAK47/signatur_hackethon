import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:greensnap/screens/PlantATreeScreen.dart';

class HomeScreen extends StatelessWidget {
  static String id = "HomeScreen";

  @override
  Widget build(BuildContext context) {
    final _auth = FirebaseAuth.instance;
    dynamic loggedInUser;

    void getCurrentUser() async {
      try {
        final user = await _auth.currentUser;
        if (user != null) {
          loggedInUser = user;
          print(loggedInUser);
        }
      } catch (e) {
        print(e);
      }
    }

    MediaQueryData querydata = MediaQuery.of(context);

    return Material(
      child: Scaffold(
        body: SafeArea(
          child: Container(
            color: Color(0xff1A4F5A),
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    child: Column(
                      children: [
                        Center(
                          child: Text(
                            "What would you ",
                            style: TextStyle(
                              color: Color(0xffCEB58C),
                              fontSize: querydata.size.width * 0.075,
                              fontWeight: FontWeight.w900,
                            ),
                          ),
                        ),
                        Center(
                          child: Text(
                            "like to do ?",
                            style: TextStyle(
                              color: Color(0xffCEB58C),
                              fontSize: querydata.size.width * 0.075,
                              fontWeight: FontWeight.w900,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Expanded(
                    flex: 1,
                    child: FlatButton(
                      highlightColor: Colors.transparent,
                      splashColor: Colors.transparent,
                      onPressed: () {
                        Navigator.pushNamed(context, PlantATreeScreen.id);
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          color: Color(0xffCFD3CE),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            children: [
                              Expanded(child: Image.asset("images/plant.png")),
                              Expanded(
                                child: Container(
                                  height: querydata.size.height * 0.25,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color: Color(0xff1A4F5A),
                                  ),
                                  child: Center(
                                    child: Text(
                                      "Plant A Tree",
                                      style: TextStyle(
                                        color: Color(0xffCEB58C),
                                        fontSize: 20,
                                        fontWeight: FontWeight.w900,
                                      ),
                                    ),
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Expanded(
                    flex: 1,
                    child: FlatButton(
                      onPressed: () {},
                      child: Container(
                        decoration: BoxDecoration(
                          color: Color(0xffCFD3CE),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            children: [
                              Expanded(child: Image.asset("images/donate.png")),
                              Expanded(
                                child: Container(
                                  height: querydata.size.height * 0.25,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color: Color(0xff1A4F5A),
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.all(10.0),
                                    child: Center(
                                      child: Text(
                                        "Plant disease detection using ml and Iot",
                                        style: TextStyle(
                                          color: Color(0xffCEB58C),
                                          fontSize: 20,
                                          fontWeight: FontWeight.w900,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Expanded(
                    flex: 1,
                    child: FlatButton(
                      onPressed: () {},
                      child: Container(
                        decoration: BoxDecoration(
                          color: Color(0xffCFD3CE),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            children: [
                              Expanded(
                                  child: Image.asset("images/buyorsell.png")),
                              Expanded(
                                child: Container(
                                  height: querydata.size.height * 0.25,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color: Color(0xff1A4F5A),
                                  ),
                                  child: Center(
                                    child: Text(
                                      "Buy / Sell",
                                      style: TextStyle(
                                        color: Color(0xffCEB58C),
                                        fontSize: 20,
                                        fontWeight: FontWeight.w900,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
