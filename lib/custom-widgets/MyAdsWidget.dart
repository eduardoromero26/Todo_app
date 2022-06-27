import 'package:flutter/material.dart';

class MyAdsWidget extends StatelessWidget {
  final String imageURL;
  final String productTitle;
  final String date;
  final String price;

  const MyAdsWidget({Key? key,
  required this.imageURL,
  required this.productTitle,
  required this.date,
  required this.price,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(12),
      height: 120,
      decoration: BoxDecoration(
        border: Border.all(color: Colors.black12),
      ),
      child: Row(mainAxisAlignment: MainAxisAlignment.start, children: [
        Image.asset(
          imageURL,
          fit: BoxFit.cover,
          height: 120,
          width: 80,
        ),
        Container(
          padding: const EdgeInsets.all(8),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                productTitle,
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                ),
              ),
              const SizedBox(
                height: 4,
              ),
              Row(
                children: [
                  const Icon(Icons.alarm_on,
                      size: 12, color: Colors.black45 ),
                  Text(
                    date,
                    style: const TextStyle(fontSize: 12, color: Colors.black54),
                  ),
                ],
              ),
              const SizedBox(
                height: 4,
              ),
              Text(
                price,
                style: TextStyle(
                  color: Colors.orange[800],
                  fontWeight: FontWeight.bold
                ),
              ),
            ],
          ),
        ),
      ]),
    );
  }
}
