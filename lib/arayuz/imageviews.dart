import 'package:flutter/material.dart';

class ImageViews extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("ImageView Kullanımı"),
      ),
      body: ListView(
        children: [
          const Text(
            "Internetteki resmi placeholder ile kullanma",
            style: TextStyle(
                fontSize: 25.0,
                fontWeight: FontWeight.w600
            ),
            textAlign: TextAlign.center,
          ),
          FadeInImage.assetNetwork(
            placeholder: "aasets/images/loading1.gif",
            image: "https://images.pexels.com/photos/3586966/pexels-photo-3586966.jpeg",
          ),
          const Text(
            "Assets Klasöründeki resmi kullanma",
            style: TextStyle(
              fontSize: 25.0,
              fontWeight: FontWeight.w600
            ),
            textAlign: TextAlign.center,
          ),
          Image.asset("assets/images/lake.jpg"),
          const Text(
            "Internetteki resmi kullanma",
            style: TextStyle(
                fontSize: 25.0,
                fontWeight: FontWeight.w600
            ),
            textAlign: TextAlign.center,
          ),
          Image.network("https://storage.googleapis.com/material-design/publish/material_v_11/assets/0Bx4BSt6jniD7T0hfM01sSmRyTG8/layout_structure_regions_mobile.png"),


        ],
      ),
    );
  }
}