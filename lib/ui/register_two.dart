import 'package:flutter/material.dart';

import '../routes/app_routes.dart';

class RegisterTwo extends StatefulWidget {
  const RegisterTwo({Key? key}) : super(key: key);

  @override
  State<RegisterTwo> createState() => _RegisterTwoState();
}

class _RegisterTwoState extends State<RegisterTwo> {
  final userNameController = TextEditingController();
  bool _validate_username = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.only(right: 15, left: 15, bottom: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Container(
                margin: const EdgeInsets.only(top: 70),
                child: Text(
                  "Ro'yxatdan o'tish",
                  style: TextStyle(fontSize: 30, fontFamily: "Comfortaa"),
                ),
              ),
              SizedBox(height: 15),
              Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(
                      color: Colors.black, // set border color
                      width: 1.5), // set border width
                  borderRadius: BorderRadius.all(
                      Radius.zero), // set rounded corner radius
                ),
                child: TextFormField(
                  maxLines: 1,
                  controller: userNameController,
                  decoration: InputDecoration(
                      errorText: _validate_username ? 'Enter username' : null,
                      contentPadding: EdgeInsets.all(10),
                      hintText: "Enter username",
                      focusedBorder: OutlineInputBorder(
                          borderSide:
                              BorderSide(color: Colors.black, width: 0.5),
                          borderRadius: BorderRadius.all(Radius.zero))),
                ),
              ),
              SizedBox(height: 10),
              SizedBox(
                height: 42,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    elevation: 0,
                    primary: Colors.black,
                  ),
                  child: Text("RO'YXATDAN O'TISH",
                      style: TextStyle(
                          fontSize: 14,
                          color: Colors.white,
                          fontFamily: "Comfortaa")),
                  onPressed: () {
                    setState(() {
                      userNameController.text.isEmpty
                          ? _validate_username = true
                          : _validate_username = false;
                    });
                    if (userNameController.text.isNotEmpty) {
                      Navigator.of(context)
                          .pushNamed(AppRoutes.profile, arguments: {
                        "login": userNameController.text.toString(),
                      });
                    }
                  },
                ),
              ),
              SizedBox(
                height: 10,
              ),
              SizedBox(
                child: Text(
                  "Ro’yxat o’tish tugmasini bosish orqali siz photogram ijtimoiy tarog’ining Foydalanish shartlari va Xavfsizlik qoidalariga rozilik bildirgan bo’lasiz.",
                  style: TextStyle(fontFamily: "Comfortaa"),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
