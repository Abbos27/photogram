import 'package:flutter/material.dart';

class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  Map info = {};
  @override
  Widget build(BuildContext context) {
    info = ModalRoute.of(context)!.settings.arguments as Map;

    var login = info['login'];
    print(info);

    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.only(right: 15, left: 15, bottom: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Container(
                margin: const EdgeInsets.only(top: 50),
                child: CircleAvatar(
                  radius: 50,
                ),
              ),
              SizedBox(height: 15),
              Center(
                  child: Text(
                "$login",
                style: TextStyle(fontSize: 26, fontFamily: "Comfortaa"),
              )),
              SizedBox(height: 5),
              Center(
                  child: Text(
                "@${login}123",
                style: TextStyle(fontSize: 16, fontFamily: "Comfortaa"),
              )),
              SizedBox(
                height: 15,
              ),
              SizedBox(
                height: 40,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      elevation: 0,
                      primary: Colors.white,
                      side: BorderSide(width: 1.5, color: Colors.black)),
                  child: Text('XABAR',
                      style: TextStyle(
                          fontSize: 12,
                          color: Colors.black,
                          fontFamily: "Comfortaa",
                          fontWeight: FontWeight.bold)),
                  onPressed: () {},
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
