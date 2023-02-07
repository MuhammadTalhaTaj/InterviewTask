import 'package:flutter/material.dart';
import 'package:interview_task/widgets/upper_introduction_row.dart';
import 'package:interview_task/widgets/welcome_container.dart';

import 'bottom_container.dart';
import 'horizontal_container.dart';

class WholeScreen extends StatelessWidget {
  var isLandScape;

  WholeScreen(this.isLandScape);

  @override
  Widget build(BuildContext context) {
    double size = MediaQuery.of(context).size.height - // total height
        MediaQuery.of(context).padding.top - // top padding
        kBottomNavigationBarHeight;
    print(size);
    return SafeArea(
      child: Stack(
        children: [
          Column(
            children: [
              ConstrainedBox(
                constraints: BoxConstraints(
                    //minHeight: 500,
                    ),
                child: Container(
                  height: size * 0.55,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      color: Color(0xF007362C),
                      borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(15),
                          bottomRight: Radius.circular(15))),
                ),
              ),
              Container(
                child: isLandScape
                    ? Container(color: Color(0xFFF2F2F2), height: size * 0.55)
                    : Flexible(
                        child: Container(
                            color: Color(0xFFF2F2F2), height: size * 0.55)),
              )
            ],
          ),
          Padding(
            padding: EdgeInsets.only(left: 10, right: 10, top: 10),
            child: Column(
              children: [
                const UpperIntroduction(),
                SizedBox(
                  height: size * 0.03,
                ),
                ConstrainedBox(
                  constraints: BoxConstraints(
                    minHeight: 155,
                    maxHeight: 200,
                  ),
                  child: Container(
                    height: size * 0.23,
                    child: WelcomeContainer(),
                  ),
                ),
                SizedBox(
                  height: size * 0.05,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Text(
                      'Reminder Task',
                      style: TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                    Text(
                      'See All',
                      style: TextStyle(color: Colors.white70),
                    ),
                  ],
                ),
                SizedBox(
                  height: size * 0.02,
                ),
                ConstrainedBox(
                  constraints: BoxConstraints(minHeight: 80),
                  child: SizedBox(
                    height: size * 0.14,
                    width: double.infinity,
                    child: ListView.builder(
                      itemBuilder: (context, index) {
                        return HorizontalContainer();
                      },
                      itemCount: 5,
                      scrollDirection: Axis.horizontal,
                    ),
                  ),
                ),
                SizedBox(
                  height: size * 0.025,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'All Tasks',
                      style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          color: Color(0xF007362C)),
                    ),
                    Text(
                      'See All',
                      style: TextStyle(color: Colors.green.shade500),
                    ),
                  ],
                ),
                SizedBox(height: size * 0.01),
                Container(
                  child: isLandScape
                      ? SizedBox(
                          height: size * 0.40,
                          child: ListView.builder(
                            shrinkWrap: isLandScape ? true : false,
                            itemBuilder: (context, index) {
                              return BottomContainer(size);
                            },
                            itemCount: 10,
                          ),
                        )
                      : Flexible(
                          child: SizedBox(
                            height: size * 0.40,
                            child: ListView.builder(
                              shrinkWrap: isLandScape ? true : false,
                              itemBuilder: (context, index) {
                                return BottomContainer(size);
                              },
                              itemCount: 10,
                            ),
                          ),
                        ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
