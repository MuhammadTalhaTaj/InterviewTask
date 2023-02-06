import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class UpperIntroduction extends StatelessWidget {
  const UpperIntroduction({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Text(
                  'Hi, Habib',
                  style: TextStyle(
                      fontSize: 18,
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  width: 6,
                ),
                Icon(
                  Icons.waving_hand_sharp,
                  color: Colors.yellow,
                ),
              ],
            ),
            Text(
              "Let's explore your notes",
              style: TextStyle(color: Colors.white70),
            ),
          ],
        ),
        CircleAvatar(
          backgroundColor: Colors.green,
          radius: 30,
          child: Image(
            height: 50,
            width: 50,
            image: AssetImage('assets/images/download-modified.png'),
            fit: BoxFit.cover,
          ),
        ),
      ],
    );
  }
}
