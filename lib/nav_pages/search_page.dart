import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

import '../routes/app_routes.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({Key? key}) : super(key: key);

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  List<String> images = [];

  @override
  Widget build(BuildContext context) {
    loadImages();
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(8),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Container(
                margin: const EdgeInsets.only(top: 20),
                child: Text(
                  "Izlash",
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
                    decoration: InputDecoration(
                        contentPadding: EdgeInsets.all(10),
                        hintText: "Search...",
                        focusedBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(color: Colors.black, width: 0.5),
                            borderRadius: BorderRadius.all(Radius.zero))),
                  )),
              SizedBox(
                height: 15,
              ),
              Text("Barcha Natijalar",
                  style: TextStyle(
                      fontSize: 12,
                      fontFamily: "Comfortaa",
                      fontWeight: FontWeight.bold)),
              SizedBox(
                height: 15,
              ),
              Expanded(
                child: StaggeredGridView.countBuilder(
                    itemCount: images.length,
                    crossAxisCount: 3,
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 10,
                    itemBuilder: (context, index) =>
                        imageItem(images[index], context),
                    staggeredTileBuilder: (index) => StaggeredTile.count(1, 1)),
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
    for (int i = 9; i <= 23; i++) {
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
