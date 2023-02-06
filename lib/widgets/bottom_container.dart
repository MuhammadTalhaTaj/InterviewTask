import 'package:flutter/material.dart';

class BottomContainer extends StatelessWidget {
  const BottomContainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: const Color(0xFFFFFFFF),
          borderRadius: BorderRadius.circular(15)),
      margin: const EdgeInsets.symmetric(vertical: 4),
      height: 55,
      width: double.infinity,
      child: Row(
        children: [
          SizedBox(width: 10),
          Icon(
            Icons.branding_watermark,
            size: 40,
            color: Color(0xEBF6A536),
          ),
          SizedBox(width: 10),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Online Class Rutine',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
              ),
              SizedBox(
                height: 2,
              ),
              Text(
                'Save Date 10/12/2022',
                style: TextStyle(fontSize: 13, fontWeight: FontWeight.w300),
              ),
            ],
          )
        ],
      ),
    );
  }
}
