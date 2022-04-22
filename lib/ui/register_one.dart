import 'package:flutter/material.dart';

import '../routes/app_routes.dart';

class RegisterOne extends StatefulWidget {
  const RegisterOne({Key? key}) : super(key: key);

  @override
  State<RegisterOne> createState() => _RegisterOneState();
}

class _RegisterOneState extends State<RegisterOne> {
  final loginController = TextEditingController();
  final passwordController = TextEditingController();
  bool _validate_login = false;
  bool _validate_password = false;

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
                  controller: loginController,
                  maxLines: 1,
                  decoration: InputDecoration(
                      errorText:
                          _validate_login ? 'Enter email or phone' : null,
                      contentPadding: EdgeInsets.all(10),
                      hintText: "Email or phone",
                      focusedBorder: OutlineInputBorder(
                          borderSide:
                              BorderSide(color: Colors.black, width: 0.5),
                          borderRadius: BorderRadius.all(Radius.zero))),
                ),
              ),
              SizedBox(height: 10),
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
                  controller: passwordController,
                  obscureText: true,
                  maxLines: 1,
                  decoration: InputDecoration(
                      errorText: _validate_password ? 'Enter password' : null,
                      contentPadding: EdgeInsets.all(10),
                      hintText: "Password",
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
                    child: Text('KEYINGISI',
                        style: TextStyle(fontSize: 14, color: Colors.white)),
                    onPressed: () {
                      setState(() {
                        loginController.text.isEmpty
                            ? _validate_login = true
                            : _validate_login = false;
                        passwordController.text.isEmpty
                            ? _validate_password = true
                            : _validate_password = false;
                      });
                      if (loginController.text.isNotEmpty &&
                          passwordController.text.isNotEmpty) {
                        Navigator.of(context).pushNamed(
                          AppRoutes.registerTwo,
                        );
                      }else{

                      }
                    }),
              ),
              SizedBox(
                height: 10,
              ),
              SizedBox(
                height: 42,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      elevation: 0,
                      primary: Colors.white,
                      side: BorderSide(width: 1.5, color: Colors.black)),
                  child: Text("GOOGLE BILAN RO'YXATDAN O'TISH",
                      style: TextStyle(fontSize: 14, color: Colors.blue)),
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
