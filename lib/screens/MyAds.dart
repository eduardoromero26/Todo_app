import 'package:flutter/material.dart';
import 'package:project_name/custom-widgets/MyAdsWidget.dart';
//import 'package:project_name/screens/MyMusic.dart';
import 'package:project_name/screens/home.dart';
//import 'package:project_name/custom-widgets/MyMusicWidget.dart';

class MyAdsScreen extends StatelessWidget {
  const MyAdsScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text("My Ads"),
          backgroundColor: Colors.black,
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: const [
              MyAdsWidget(
                  imageURL: "assets/images/mobile_1.jpeg",
                  productTitle: "Huawei for Sale",
                  date: "14 days ago",
                  price: "12000.0"),
              SizedBox(
                height: 8,
              ),
              MyAdsWidget(
                  imageURL: "assets/images/macbook_1.jpg",
                  productTitle: "Macbook Pro 2020",
                  date: "4 days ago",
                  price: "33000.0"),
              SizedBox(
                height: 8,
              ),
              MyAdsWidget(
                  imageURL: "assets/images/car_2.jpeg",
                  productTitle: "Swift 2020",
                  date: "27 days ago",
                  price: "130000.0"),
            ],
          ),
        ),
      ),
    );
  }
}
