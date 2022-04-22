import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:photogram/models/user.dart';

import '../routes/app_routes.dart';

class LogOut extends StatefulWidget {
  @override
  State<LogOut> createState() => _LogOutState();
}

class _LogOutState extends State<LogOut> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.only(right: 15, left: 15, bottom: 10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              Expanded(
                  child: Container(
                      margin: EdgeInsets.only(right: 50, left: 50),
                      child: Center(
                          child: SvgPicture.asset("assets/photogram.svg")))),
              Row(
                children: <Widget>[
                  Container(
                    child: CircleAvatar(
                      child: SvgPicture.asset("assets/logo.svg"),
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Expanded(
                      child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        "Quantic Jamoasi",
                        style: TextStyle(
                            fontSize: 18,
                            fontFamily: "Comfortaa",
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(height: 5),
                      Text(
                        "Photogram Beta 1.0",
                        style: TextStyle(fontSize: 12, fontFamily: "Comfortaa"),
                      )
                    ],
                  )),
                  SizedBox(
                    height: 70,
                  )
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Expanded(
                    child: SizedBox(
                      height: 40,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            elevation: 0,
                            primary: Colors.white,
                            side: BorderSide(width: 1.5, color: Colors.black)),
                        child: Text('KIRISH',
                            style: TextStyle(
                                fontSize: 12,
                                color: Colors.black,
                                fontFamily: "Comfortaa",
                                fontWeight: FontWeight.bold)),
                        onPressed: () {
                          Navigator.of(context).pushNamed(
                            AppRoutes.logIn,
                          );
                        },
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Expanded(
                    child: SizedBox(
                      height: 40,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          elevation: 0,
                          primary: Colors.black,
                        ),
                        child: Text("RO'YXATDAN O'TISH",
                            style: TextStyle(
                                fontSize: 12,
                                color: Colors.white,
                                fontFamily: "Comfortaa",
                                fontWeight: FontWeight.bold)),
                        onPressed: () {
                          Navigator.of(context).pushNamed(
                            AppRoutes.registerOne,
                          );
                        },
                      ),
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
