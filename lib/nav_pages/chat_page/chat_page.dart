import 'package:flutter/material.dart';
import 'package:photogram/routes/app_routes.dart';

import '../../models/chat_model.dart';

class ChatPage extends StatefulWidget {
  const ChatPage({Key? key}) : super(key: key);

  @override
  State<ChatPage> createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  List<ChatModel> chats = [
    ChatModel("assets/images/profile_img_1.png", "James",
        "Thank you! That was very helpful!"),
    ChatModel("assets/images/profile_img_2.png", "Will Kenny",
        "I know... I’m trying to get the funds."),
    ChatModel("assets/images/profile_img_3.png", "Beth Williams",
        "I’m looking for tips around capturing the milky way. I have a 6D with a 24-100mm..."),
    ChatModel("assets/images/profile_img_4.png", "Rev Shawn",
        "Wanted to ask if you’re available for a portrait shoot next week.")
  ];

  @override
  Widget build(BuildContext context) {
    backgroundColor:
    Colors.white;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Suxbatlar",
          style: TextStyle(fontSize: 20, fontFamily: "Comfortaa",color: Colors.black),
        ),
        backgroundColor: Colors.white,
        shape: Border(bottom: BorderSide(color: Color(0xFFB3B3B3), width: 1)),
        elevation: 0,
        actions: <Widget>[
          IconButton(
            icon: Icon(
              Icons.search,
              color: Colors.black,
            ),
            onPressed: () {},
          )
        ],
      ),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            SizedBox(height: 18),
            Expanded(
              child: Container(
                child: ListView.builder(
                    itemCount: chats.length,
                    itemBuilder: (context, index) {
                      return Column(
                        children: [
                          ItemChat(chats[index].image!, chats[index].name!,
                              chats[index].lastMessage!, context),
                          Divider(),
                        ],
                      );
                    }),
              ),
            )
          ],
        ),
      ),
    );
  }
}

Widget ItemChat(
    String profile_img, String name, String lastMessage, BuildContext context) {
  return Container(
    child: ListTile(
      onTap: () {
        Navigator.pushNamed(context, AppRoutes.individualChat,
            arguments: {"name": name, "profile_img": profile_img});
      },
      leading: Image.asset(profile_img),
      title: Padding(
        padding: const EdgeInsets.only(top: 12, bottom: 4, left: 8, right: 8),
        child: Text(
          name,
          style: TextStyle(
            fontFamily: 'Roboto',
            fontWeight: FontWeight.bold,
            fontSize: 14,
          ),
        ),
      ),
      subtitle: Padding(
        padding: const EdgeInsets.only(top: 4, bottom: 12, left: 8, right: 8),
        child: Text(
          lastMessage,
          style: TextStyle(
            color: Colors.black,
            fontFamily: 'Roboto',
            fontSize: 14,
          ),
        ),
      ),
    ),
  );
}
