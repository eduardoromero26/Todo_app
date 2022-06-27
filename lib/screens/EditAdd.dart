import 'package:flutter/material.dart';
//import 'package:project_name/screens/MyMusic.dart';
import 'package:project_name/screens/home.dart';
//import 'package:project_name/custom-widgets/MyMusicWidget.dart';

class EditAddScreen extends StatelessWidget {
  const EditAddScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text("Edit Ad"),
          centerTitle: true,
          backgroundColor: Colors.black,
        ),
        body: ListView(
          padding: const EdgeInsets.symmetric(
            vertical: 20.0,
            horizontal: 16.0,
          ),
          children: [
            Column(mainAxisAlignment: MainAxisAlignment.center, children: [
              Container(
                padding: EdgeInsets.symmetric(
                  vertical: 20,
                  horizontal: 16,
                ),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.black12),
                ),
                child: Column(
                  children: [
                    IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.add_a_photo_outlined,
                          size: 32.0,
                        )),
                    const SizedBox(
                      height: 4.0,
                    ),
                    const Text("Tap to upload"),
                  ],
                ),
              ),
              const SizedBox(height: 4),
              Row(
                mainAxisAlignment: MainAxisAlignment.start ,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    child: Image.asset(
                      "assets/images/macbook_1.jpg",
                      height: 80,
                      width: 80,
                    ),
                  ),
                  SizedBox(
                    width: 12,
                  ),
                  Image.asset(
                    "assets/images/macbook_2.jpg",
                    height: 80,
                    width: 80,
                  ),
                  SizedBox(
                    width: 12,
                  ),
                  Image.asset(
                    "assets/images/macbook_3.jpg",
                    height: 80,
                    width: 80,
                  ),
                ],
              ),
              const SizedBox(
                height: 4,
              ),
              const TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Title',
                ),
              ),
              const SizedBox(
                height: 12,
              ),
              const TextField(
                obscureText: true,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Price',
                ),
              ),
              const SizedBox(
                height: 12,
              ),
              const TextField(
                obscureText: true,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Contact Number',
                ),
              ),
              const SizedBox(
                height: 12,
              ),
              const TextField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Description',
                    contentPadding: EdgeInsets.symmetric(
                      vertical: 24,
                      horizontal: 12,
                    ),
                    floatingLabelAlignment: FloatingLabelAlignment.center),
              ),
              const SizedBox(
                height: 32,
              ),
              Container(
                width: 360,
                height: 60,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: Colors.orange[800],
                  ),
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const HomeScreen()));
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: const [
                      Text(
                        "Upload",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ]),
          ],
        ),
      ),
    );
  }
}
