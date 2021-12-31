import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:greensnap/Constants.dart';

class DonateScreen extends StatelessWidget {
  static String id = "DonateScreen";

  @override
  Widget build(BuildContext context) {
    MediaQueryData queryData = MediaQuery.of(context);
    return Scaffold(
      backgroundColor: KAppbg,
      body: SafeArea(
        child: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: 30,
              ),
              Text(
                "DONATE",
                style: TextStyle(
                  fontWeight: FontWeight.w900,
                  letterSpacing: 10,
                  decoration: TextDecoration.underline,
                  color: KHeading,
                  fontSize: queryData.size.width * 0.07,
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Expanded(
                child: Container(
                  width: queryData.size.width * 0.95,
                  margin: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: KLightbg,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        "Payment Methods",
                        style: TextStyle(
                          fontSize: 28,
                          fontWeight: FontWeight.w900,
                          color: Color(0xff1A4F5A),
                        ),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Container(
                        width: queryData.size.width * 0.6,
                        height: 45,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: <BoxShadow>[
                            BoxShadow(
                              blurRadius: 4,
                              color: Colors.grey,
                              spreadRadius: 2,
                            )
                          ],
                        ),
                        child: Center(
                          child: Text(
                            "Credit Card",
                            style: TextStyle(
                              fontSize: 24,
                              fontWeight: FontWeight.w900,
                              color: Color(0xff0d2d7c),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Container(
                        width: queryData.size.width * 0.6,
                        height: 45,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: <BoxShadow>[
                            BoxShadow(
                              blurRadius: 4,
                              color: Colors.grey,
                              spreadRadius: 2,
                            )
                          ],
                        ),
                        child: Center(
                          child: Text(
                            "Debit Card",
                            style: TextStyle(
                              fontSize: 24,
                              fontWeight: FontWeight.w900,
                              color: Color(0xff0d2d7c),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Container(
                        width: queryData.size.width * 0.6,
                        height: 45,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: <BoxShadow>[
                            BoxShadow(
                              blurRadius: 4,
                              color: Colors.grey,
                              spreadRadius: 2,
                            )
                          ],
                        ),
                        child: Center(
                          child: Text(
                            "UPI",
                            style: TextStyle(
                              fontSize: 24,
                              fontWeight: FontWeight.w900,
                              color: Color(0xff0d2d7c),
                            ),
                          ),
                        ),
                      ),
                      Container(
                        child: Image.asset("images/pay.png"),
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
