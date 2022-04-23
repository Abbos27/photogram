import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:photogram/routes/app_routes.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
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
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Container(
                margin: EdgeInsets.only(top: 10,bottom: 20),
                child: Text(
                  "photogram",
                  style: TextStyle(
                    fontSize: 24,
                    fontFamily: 'Comfortaa',
                  ),
                ),
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
              )
            ],
          ),
        ),
      ),
    );
  }

  void loadImages() {
    for (int i = 1; i <= 8; i++) {
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
