import 'package:flutter/material.dart';

class IndividualChat extends StatefulWidget {
  @override
  _IndividualChatState createState() => _IndividualChatState();
}

class _IndividualChatState extends State<IndividualChat> {
  Map data = {};

  @override
  Widget build(BuildContext context) {
    data = ModalRoute.of(context)!.settings.arguments as Map;
    String name = data["name"];
    String profile_img = data["profile_img"];

    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: Colors.black, //change your color here
        ),
        title: Text(
          "$name",
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
            fontFamily: 'Roboto',
          ),
        ),
        backgroundColor: Colors.white,
        shape: Border(bottom: BorderSide(color: Color(0xFFB3B3B3), width: 1)),
        elevation: 0,
      ),
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(top: 24, left: 14, right: 14),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Row(
                children: [
                  Container(
                    child: CircleAvatar(
                      radius: 24,
                      child: ClipOval(
                        child: Image.asset(
                          '$profile_img',
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 14,
                  ),
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                          color: Color(0xFFF7F7F7),
                          borderRadius: BorderRadius.only(
                            topRight: Radius.circular(8),
                            bottomLeft: Radius.circular(8),
                            topLeft: Radius.circular(0),
                            bottomRight: Radius.circular(8),
                          )),
                      child: Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Text(
                            "Really love your most recent photo. I’ve been trying to capture the same thing for a few months and would love some tips!"),
                      ),
                    ),
                  )
                ],
              ),
              SizedBox(height: 24),
              Row(
                children: [
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                          color: Color(0xFFF7F7F7),
                          borderRadius: BorderRadius.only(
                            topRight: Radius.circular(0),
                            bottomLeft: Radius.circular(8),
                            topLeft: Radius.circular(8),
                            bottomRight: Radius.circular(8),
                          )),
                      child: Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Text(
                            "A fast 50mm like f1.8 would help with the bokeh. I’ve been using primes as they tend to get a bit sharper images."),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 14,
                  ),
                  Container(
                    child: CircleAvatar(
                      radius: 24,
                      child: ClipOval(
                        child: Image.asset(
                          'assets/images/profile_img_4.png',
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 24),
              Row(
                children: [
                  Container(
                    child: CircleAvatar(
                      radius: 24,
                      child: ClipOval(
                        child: Image.asset(
                          '$profile_img',
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 14,
                  ),
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                          color: Color(0xFFF7F7F7),
                          borderRadius: BorderRadius.only(
                            topRight: Radius.circular(8),
                            bottomLeft: Radius.circular(8),
                            topLeft: Radius.circular(0),
                            bottomRight: Radius.circular(8),
                          )),
                      child: Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Text(
                            "Really love your most recent photo. I’ve been trying to capture the same thing for a few months and would love some tips!"),
                      ),
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
