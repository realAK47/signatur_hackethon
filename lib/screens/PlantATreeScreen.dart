import 'package:flutter/material.dart';
import 'package:greensnap/screens/DonateScreen.dart';
import 'package:greensnap/screens/GetPlantScreen.dart';

class PlantATreeScreen extends StatelessWidget {
  static String id = "PlanATreeScreen";

  @override
  Widget build(BuildContext context) {
    MediaQueryData queryData = MediaQuery.of(context);
    return Scaffold(
      backgroundColor: Color(0xff1A4F5A),
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              Expanded(
                flex: 1,
                child: FlatButton(
                  splashColor: Colors.transparent,
                  highlightColor: Colors.transparent,
                  onPressed: () {
                    Navigator.pushNamed(context, DonateScreen.id);
                  },
                  child: Container(
                    color: Color(0xffECF0EB),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          Container(
                            width: queryData.size.width * 0.8,
                            height: queryData.size.height * 0.4,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(30)),
                            child: ClipRect(
                              child: Image.asset(
                                "images/contibute.png",
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          Container(
                            child: Text(
                              "Donate money for a plant",
                              style: TextStyle(
                                fontSize: queryData.size.width * 0.05,
                                fontWeight: FontWeight.bold,
                                color: Color(0xff1A4F5A),
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
                  onPressed: () {
                    Navigator.pushNamed(context, GetPlantScreen.id);
                  },
                  child: Container(
                    color: Color(0xffECF0EB),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          Container(
                            width: queryData.size.width * 0.8,
                            height: queryData.size.height * 0.4,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(30)),
                            child: ClipRect(
                              child: Image.asset(
                                "images/Plant.jpg",
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          Container(
                            child: Text(
                              "Get a plant",
                              style: TextStyle(
                                fontSize: queryData.size.width * 0.05,
                                fontWeight: FontWeight.bold,
                                color: Color(0xff1A4F5A),
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
                height: 10,
              )
            ],
          ),
        ),
      ),
    );
  }
}
