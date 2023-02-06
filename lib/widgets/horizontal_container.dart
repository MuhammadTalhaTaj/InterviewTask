import 'package:flutter/material.dart';

class HorizontalContainer extends StatefulWidget {
  @override
  State<HorizontalContainer> createState() => _HorizontalContainerState();
}

class _HorizontalContainerState extends State<HorizontalContainer> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Color(0xFFFEFEFE),
      ),
      margin: EdgeInsets.only(right: 10),
      height: 25,
      width: 150,
      child: Padding(
        padding: EdgeInsets.only(left: 5),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Icon(
              Icons.branding_watermark,
              size: 40,
              color: Colors.green,
            ),
            Text(
              'Online Class Rutine',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            Text(
              'Save Date 10/12/2022',
              style: TextStyle(fontSize: 13, fontWeight: FontWeight.w300),
            )
          ],
        ),
      ),
    );
  }
}
