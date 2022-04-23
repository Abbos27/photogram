import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

import '../routes/app_routes.dart';

class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  List<String> images = [];
  Map info = {};

  @override
  Widget build(BuildContext context) {
    loadImages();
    info = ModalRoute.of(context)!.settings.arguments as Map;
    var login = info['login'];

    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.only(right: 15, left: 15, bottom: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Container(
                margin: const EdgeInsets.only(top: 10),
                child: CircleAvatar(
                  child: Image.asset("assets/images/profile_img_4.png",
                      fit: BoxFit.cover,),
                  radius: 50,
                    backgroundColor: Colors.transparent
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
              ),
              SizedBox(
                height: 15,
              ),
              Expanded(
                child: StaggeredGridView.countBuilder(
                    itemCount: images.length,
                    crossAxisCount: 2,
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 10,
                    itemBuilder: (context, index) =>
                        imageItem(images[index], context),
                    staggeredTileBuilder: (index) => StaggeredTile.fit(1)),
              ),
              SizedBox(
                height: 8,
              ),
              SizedBox(
                height: 40,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      elevation: 0,
                      primary: Colors.white,
                      side: BorderSide(width: 1.5, color: Colors.black)),
                  child: Text("KO'PROQ KO'RSATISH",
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

  void loadImages() {
    for (int i = 24; i <= 29; i++) {
      images.add("assets/images/img_$i.png");
    }
  }

  Widget imageItem(String imageIndex, BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, AppRoutes.openImage, arguments: {
          "image": imageIndex,
        });
      },
      child: Image(
        image: AssetImage(imageIndex),
        fit: BoxFit.cover,
      ),
    );
  }
}
