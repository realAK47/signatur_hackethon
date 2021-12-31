import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:greensnap/Constants.dart';
import 'package:greensnap/screens/PlanCamScreen.dart';

class GetPlantScreen extends StatelessWidget {
  static String id = "GetPlantScreen";

  @override
  Widget build(BuildContext context) {
    MediaQueryData queryData = MediaQuery.of(context);

    return Scaffold(
      backgroundColor: KAppbg,
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              SizedBox(
                height: 20,
              ),
              Expanded(
                flex: 1,
                child: Container(
                  width: queryData.size.width * 0.9,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Color(0xffF8F1DC),
                  ),
                  child: Column(
                    children: [
                      SizedBox(
                        height: 15,
                      ),
                      Container(
                        width: queryData.size.width * 0.7,
                        height: 50,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.white,
                        ),
                        child: Center(
                          child: Text(
                            " WHAT WOULD YOU LIKE TO PLANT?",
                            maxLines: 2,
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: queryData.size.width * 0.045,
                              fontWeight: FontWeight.bold,
                              color: Color(0xff1A4F5A),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Row(
                        children: [
                          SizedBox(
                            width: 10,
                          ),
                          Expanded(
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Colors.white,
                              ),
                              child: Column(
                                children: [
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Text(
                                    "VEGETABLE SEEDLINGS",
                                    style: TextStyle(
                                      fontSize: queryData.size.width * 0.035,
                                      color: KAppbg,
                                    ),
                                  ),
                                  Container(
                                    child: Image.asset(
                                        "images/vegetable_seedlings.png"),
                                  )
                                ],
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Expanded(
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Colors.white,
                              ),
                              child: Column(
                                children: [
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Text(
                                    " FRUIT PLANTS",
                                    style: TextStyle(
                                      fontSize: queryData.size.width * 0.035,
                                      color: KAppbg,
                                    ),
                                  ),
                                  Container(
                                    child:
                                        Image.asset("images/fruitplants.png"),
                                  )
                                ],
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10),
                child: Text("OR",
                    style: TextStyle(
                      fontWeight: FontWeight.w900,
                      wordSpacing: 5,
                      fontSize: queryData.size.width * 0.04,
                      color: Colors.white,
                    )),
              ),
              Expanded(
                flex: 1,
                child: Container(
                  width: queryData.size.width * 0.9,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Color(0xffF8F1DC),
                  ),
                  child: Center(
                    child: Column(
                      children: [
                        SizedBox(
                          height: 30,
                        ),
                        Container(
                          width: queryData.size.width * 0.5,
                          height: queryData.size.width * 0.5,
                          decoration: BoxDecoration(
                              color: Color(0xffD1DFA9),
                              borderRadius: BorderRadius.circular(10)),
                          child: GestureDetector(
                            onTap: () {
                              Navigator.pushNamed(context, PlantCamScreen.id);
                            },
                            child: ClipRect(
                              child: Image.asset("images/camera.png"),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Text(
                          "ALREADY PLANTED? THEN UPLOAD IT’S GROWTH",
                          style: TextStyle(
                            wordSpacing: 5,
                            fontSize: queryData.size.width * 0.035,
                            color: KAppbg,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
